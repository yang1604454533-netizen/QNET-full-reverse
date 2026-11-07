.class public Lcom/mysql/jdbc/SQLError;
.super Ljava/lang/Object;
.source "SQLError.java"


# static fields
.field private static final DEFAULT_WAIT_TIMEOUT_SECONDS:J = 0x7080L

.field private static final DUE_TO_TIMEOUT_FALSE:I = 0x0

.field private static final DUE_TO_TIMEOUT_MAYBE:I = 0x2

.field private static final DUE_TO_TIMEOUT_TRUE:I = 0x1

.field static final ER_WARNING_NOT_COMPLETE_ROLLBACK:I = 0x4ac

.field private static final JDBC_4_COMMUNICATIONS_EXCEPTION_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field public static final SQL_STATE_ACTIVE_SQL_TRANSACTION:Ljava/lang/String; = "25001"

.field public static final SQL_STATE_BASE_TABLE_NOT_FOUND:Ljava/lang/String; = "S0002"

.field public static final SQL_STATE_BASE_TABLE_OR_VIEW_ALREADY_EXISTS:Ljava/lang/String; = "S0001"

.field public static final SQL_STATE_BASE_TABLE_OR_VIEW_NOT_FOUND:Ljava/lang/String; = "42S02"

.field public static final SQL_STATE_CARDINALITY_VIOLATION:Ljava/lang/String; = "21000"

.field public static final SQL_STATE_CASE_NOT_FOUND_FOR_CASE_STATEMENT:Ljava/lang/String; = "20000"

.field public static final SQL_STATE_CLI_SPECIFIC_CONDITION:Ljava/lang/String; = "HY000"

.field public static final SQL_STATE_COLUMN_ALREADY_EXISTS:Ljava/lang/String; = "S0021"

.field public static final SQL_STATE_COLUMN_NOT_FOUND:Ljava/lang/String; = "S0022"

.field public static final SQL_STATE_COMMUNICATION_LINK_FAILURE:Ljava/lang/String; = "08S01"

.field public static final SQL_STATE_CONNECTION_FAILURE:Ljava/lang/String; = "08006"

.field public static final SQL_STATE_CONNECTION_IN_USE:Ljava/lang/String; = "08002"

.field public static final SQL_STATE_CONNECTION_NOT_OPEN:Ljava/lang/String; = "08003"

.field public static final SQL_STATE_CONNECTION_REJECTED:Ljava/lang/String; = "08004"

.field public static final SQL_STATE_DATA_TRUNCATED:Ljava/lang/String; = "01004"

.field public static final SQL_STATE_DATETIME_FIELD_OVERFLOW:Ljava/lang/String; = "22008"

.field public static final SQL_STATE_DISCONNECT_ERROR:Ljava/lang/String; = "01002"

.field public static final SQL_STATE_DIVISION_BY_ZERO:Ljava/lang/String; = "22012"

.field public static final SQL_STATE_DRIVER_NOT_CAPABLE:Ljava/lang/String; = "S1C00"

.field public static final SQL_STATE_ERROR_IN_ROW:Ljava/lang/String; = "01S01"

.field public static final SQL_STATE_ER_BAD_FIELD_ERROR:Ljava/lang/String; = "42S22"

.field public static final SQL_STATE_ER_DUP_FIELDNAME:Ljava/lang/String; = "42S21"

.field public static final SQL_STATE_ER_NO_SUCH_INDEX:Ljava/lang/String; = "42S12"

.field public static final SQL_STATE_ER_QUERY_INTERRUPTED:Ljava/lang/String; = "70100"

.field public static final SQL_STATE_ER_TABLE_EXISTS_ERROR:Ljava/lang/String; = "42S01"

.field public static final SQL_STATE_FEATURE_NOT_SUPPORTED:Ljava/lang/String; = "0A000"

.field public static final SQL_STATE_GENERAL_ERROR:Ljava/lang/String; = "S1000"

.field public static final SQL_STATE_ILLEGAL_ARGUMENT:Ljava/lang/String; = "S1009"

.field public static final SQL_STATE_INDEX_ALREADY_EXISTS:Ljava/lang/String; = "S0011"

.field public static final SQL_STATE_INDEX_NOT_FOUND:Ljava/lang/String; = "S0012"

.field public static final SQL_STATE_INSERT_VALUE_LIST_NO_MATCH_COL_LIST:Ljava/lang/String; = "21S01"

.field public static final SQL_STATE_INTEGRITY_CONSTRAINT_VIOLATION:Ljava/lang/String; = "23000"

.field public static final SQL_STATE_INVALID_AUTH_SPEC:Ljava/lang/String; = "28000"

.field public static final SQL_STATE_INVALID_CATALOG_NAME:Ljava/lang/String; = "3D000"

.field public static final SQL_STATE_INVALID_CHARACTER_VALUE_FOR_CAST:Ljava/lang/String; = "22018"

.field public static final SQL_STATE_INVALID_COLUMN_NUMBER:Ljava/lang/String; = "S1002"

.field public static final SQL_STATE_INVALID_CONDITION_NUMBER:Ljava/lang/String; = "35000"

.field public static final SQL_STATE_INVALID_CONNECTION_ATTRIBUTE:Ljava/lang/String; = "01S00"

.field public static final SQL_STATE_INVALID_CURSOR_STATE:Ljava/lang/String; = "24000"

.field public static final SQL_STATE_INVALID_DATETIME_FORMAT:Ljava/lang/String; = "22007"

.field public static final SQL_STATE_INVALID_LOGARITHM_ARGUMENT:Ljava/lang/String; = "2201E"

.field public static final SQL_STATE_INVALID_TRANSACTION_STATE:Ljava/lang/String; = "25000"

.field public static final SQL_STATE_INVALID_TRANSACTION_TERMINATION:Ljava/lang/String; = "2D000"

.field public static final SQL_STATE_MEMORY_ALLOCATION_ERROR:Ljava/lang/String; = "HY001"

.field public static final SQL_STATE_MEMORY_ALLOCATION_FAILURE:Ljava/lang/String; = "S1001"

.field public static final SQL_STATE_MORE_THAN_ONE_ROW_UPDATED_OR_DELETED:Ljava/lang/String; = "01S04"

.field public static final SQL_STATE_NO_DATA:Ljava/lang/String; = "02000"

.field public static final SQL_STATE_NO_DEFAULT_FOR_COLUMN:Ljava/lang/String; = "S0023"

.field public static final SQL_STATE_NO_ROWS_UPDATED_OR_DELETED:Ljava/lang/String; = "01S03"

.field public static final SQL_STATE_NULL_VALUE_NOT_ALLOWED:Ljava/lang/String; = "22004"

.field public static final SQL_STATE_NUMERIC_VALUE_OUT_OF_RANGE:Ljava/lang/String; = "22003"

.field public static final SQL_STATE_PRIVILEGE_NOT_REVOKED:Ljava/lang/String; = "01006"

.field public static final SQL_STATE_READ_ONLY_SQL_TRANSACTION:Ljava/lang/String; = "25006"

.field public static final SQL_STATE_RESIGNAL_WHEN_HANDLER_NOT_ACTIVE:Ljava/lang/String; = "0K000"

.field public static final SQL_STATE_ROLLBACK_SERIALIZATION_FAILURE:Ljava/lang/String; = "40001"

.field public static final SQL_STATE_SRE_FUNCTION_EXECUTED_NO_RETURN_STATEMENT:Ljava/lang/String; = "2F005"

.field public static final SQL_STATE_SRE_PROHIBITED_SQL_STATEMENT_ATTEMPTED:Ljava/lang/String; = "2F003"

.field public static final SQL_STATE_STACKED_DIAGNOSTICS_ACCESSED_WITHOUT_ACTIVE_HANDLER:Ljava/lang/String; = "0Z002"

.field public static final SQL_STATE_STRING_DATA_RIGHT_TRUNCATION:Ljava/lang/String; = "22001"

.field public static final SQL_STATE_SYNTAX_ERROR:Ljava/lang/String; = "42000"

.field public static final SQL_STATE_TIMEOUT_EXPIRED:Ljava/lang/String; = "S1T00"

.field public static final SQL_STATE_TRANSACTION_RESOLUTION_UNKNOWN:Ljava/lang/String; = "08007"

.field public static final SQL_STATE_UNABLE_TO_CONNECT_TO_DATASOURCE:Ljava/lang/String; = "08001"

.field public static final SQL_STATE_WARNING:Ljava/lang/String; = "01000"

.field public static final SQL_STATE_WRONG_NO_OF_PARAMETERS:Ljava/lang/String; = "07001"

.field public static final SQL_STATE_XAER_DUPID:Ljava/lang/String; = "XAE08"

.field public static final SQL_STATE_XAER_INVAL:Ljava/lang/String; = "XAE05"

.field public static final SQL_STATE_XAER_NOTA:Ljava/lang/String; = "XAE04"

.field public static final SQL_STATE_XAER_OUTSIDE:Ljava/lang/String; = "XAE09"

.field public static final SQL_STATE_XAER_RMFAIL:Ljava/lang/String; = "XAE07"

.field public static final SQL_STATE_XA_RBDEADLOCK:Ljava/lang/String; = "XA102"

.field public static final SQL_STATE_XA_RBROLLBACK:Ljava/lang/String; = "XA100"

.field public static final SQL_STATE_XA_RBTIMEOUT:Ljava/lang/String; = "XA106"

.field public static final SQL_STATE_XA_RMERR:Ljava/lang/String; = "XAE03"

.field private static mysqlToSql99State:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mysqlToSqlState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sqlStateMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 146
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.mysql.jdbc.exceptions.jdbc4.CommunicationsException"

    .line 148
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Ljava/lang/Exception;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/SQLError;->JDBC_4_COMMUNICATIONS_EXCEPTION_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    .line 158
    sput-object v0, Lcom/mysql/jdbc/SQLError;->JDBC_4_COMMUNICATIONS_EXCEPTION_CTOR:Ljava/lang/reflect/Constructor;

    .line 161
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    .line 162
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01002"

    const-string v2, "SQLError.35"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01004"

    const-string v2, "SQLError.36"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01006"

    const-string v2, "SQLError.37"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01S00"

    const-string v2, "SQLError.38"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01S01"

    const-string v2, "SQLError.39"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01S03"

    const-string v2, "SQLError.40"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "01S04"

    const-string v2, "SQLError.41"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "07001"

    const-string v2, "SQLError.42"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08001"

    const-string v2, "SQLError.43"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08002"

    const-string v2, "SQLError.44"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08003"

    const-string v2, "SQLError.45"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08004"

    const-string v2, "SQLError.46"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08007"

    const-string v2, "SQLError.47"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "08S01"

    const-string v2, "SQLError.48"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "21S01"

    const-string v2, "SQLError.49"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "22003"

    const-string v2, "SQLError.50"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "22008"

    const-string v2, "SQLError.51"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "22012"

    const-string v2, "SQLError.52"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "40001"

    const-string v2, "SQLError.53"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "28000"

    const-string v2, "SQLError.54"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "42000"

    const-string v2, "SQLError.55"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "42S02"

    const-string v2, "SQLError.56"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0001"

    const-string v2, "SQLError.57"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0002"

    const-string v2, "SQLError.58"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0011"

    const-string v2, "SQLError.59"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0012"

    const-string v2, "SQLError.60"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0021"

    const-string v2, "SQLError.61"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0022"

    const-string v2, "SQLError.62"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S0023"

    const-string v2, "SQLError.63"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1000"

    const-string v2, "SQLError.64"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1001"

    const-string v2, "SQLError.65"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1002"

    const-string v2, "SQLError.66"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1009"

    const-string v2, "SQLError.67"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1C00"

    const-string v2, "SQLError.68"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    const-string v1, "S1T00"

    const-string v2, "SQLError.69"

    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    .line 200
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v1, 0x4e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "01000"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v2, 0x4ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "01000"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v3, 0x4ee

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "01000"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v4, 0x4f1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "01000"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v5, 0x51f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "01000"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v6, 0x66a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "01000"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v7, 0x410

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "08004"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v8, 0x4e3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "08004"

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v9, 0x412

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "08004"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v10, 0x413

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "08004"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v11, 0x469

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "08004"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v11, 0x46a

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "08004"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v11, 0x417

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "08S01"

    invoke-interface {v0, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v12, 0x41d

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "08S01"

    invoke-interface {v0, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v13, 0x438

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x439

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "08S01"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x480

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v14, "08S01"

    invoke-interface {v0, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x481

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x482

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x483

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x484

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x485

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x486

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x487

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x488

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x489

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4a0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4a5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4a6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4c2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "08S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x520

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "0A000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x522

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "0A000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x537

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "0A000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x538

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "0A000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x587

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "0A000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x735

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "0A000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x736

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "0A000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x414

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x419

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x41f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x420

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x421

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x423

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x424

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x425

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x426

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x427

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x428

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x429

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x42a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x42b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x42c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x42d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x42e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x42f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x430

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x431

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x432

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x433

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x43a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x43b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x43c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1009"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x442

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x443

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x44d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x44e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x44f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x450

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x452

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x453

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x456

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x458

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x459

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x45b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x45e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x460

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x461

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x46b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x46c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x46d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x473

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x474

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x475

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x476

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x477

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x478

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x479

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x47b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x47c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x47d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x48a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x48b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x48c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x48e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x48f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x492

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x493

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x494

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x495

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x498

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x499

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x49a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4b3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4bb

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4ca

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4cb

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4ce

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4cf

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4d0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4d2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4d3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4d7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4e0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4e2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4e4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4e5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x500

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x501

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x506

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x518

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x519

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x51c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x51d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x51e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x521

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x523

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x524

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x526

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x527

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x528

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x52a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x52b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x52c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x52f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x532

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x533

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x534

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x535

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x539

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x53a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x55a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x57b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x57f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x582

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x585

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x586

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x591

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x592

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x593    # 2.0E-42f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x59d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x59f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x5ad

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x5b2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x5b4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x5b5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x5b7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x62e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x62f

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x630

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x65e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x669

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x697

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x6a5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4c6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "21000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4d9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "21000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4da

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "21000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x3fe

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x418

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x41c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x491

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4c0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4c1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x5ab

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x5ac

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x615

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x632

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x6e1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x6e2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x743

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "23000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x57e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "22001"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4f0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "01000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x588

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "22003"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x69a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "22003"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x50c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "22007"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x557

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "22007"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x5a1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "22008"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x555

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "22012"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x52d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "24000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x52e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "24000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x49b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "25000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4b7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "25000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x415

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "28000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x6a2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "28000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x751

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "28000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x6de

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "35000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x416

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "3D000"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x422

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "21S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x470

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "21S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x41a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42S01"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x41b

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42S02"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x455

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42S02"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x47a

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42S02"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x41e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S0022"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4df

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "42S22"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x40d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1001"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x40e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "S1001"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4b5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "40001"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    const/16 v14, 0x4bd

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "40001"

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    .line 411
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v14, "01000"

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4f0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "01000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x531

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "02000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x66b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "02000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x439

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x480

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x481

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x482

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x483

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x484

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x485

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x486

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x487

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x488

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x489

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4c2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "08S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x520

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x522

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x537

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x538

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x587

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x735

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x736

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0A000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x419

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x420

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x421

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x423

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x425

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x427

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x428

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x429

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x42f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x430

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x431

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x432

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x433

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x43b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x43c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x442

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x443

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x452

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x453

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x456

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x459

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x45b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x45e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x460

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x461

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x46b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x46c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x46d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x473

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x474

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x475

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x476

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x477

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x478

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x479

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x47b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x47c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x47d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x48f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x492

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x493

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x494

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x495

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x498

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x499

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x49a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4cb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x501

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x506

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x518

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x519

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x51c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x51d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x51e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x521

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x523

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x524

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x526

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x527

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x528

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x532

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x533

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x534

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x535

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x539

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x53a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x55a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x57b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x57f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x582

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x585

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x586

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x591

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x592

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x593    # 2.0E-42f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x59d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x59f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x62e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x62f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x630

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x65e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x669

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x697

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x3fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x418

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x426

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x491

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x615

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x632

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x743

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "23000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x57e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x588

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22003"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x69a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22003"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x50c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x557

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22007"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22008"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x555

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "22012"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "24000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x52e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "24000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x49b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4b7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x415

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "28000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "28000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x751

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "28000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x6de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "35000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x416

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3D000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x66d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0K000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x75f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0Z002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x53b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "20000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x422

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x470

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "21S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x472

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x76f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2201E"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x620

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x700

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "25006"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x517

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2F003"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x529

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "2F005"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S01"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x455

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x47a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S02"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x43a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x424

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S21"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x41e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "42S22"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x525

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "70100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x40d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HY001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x40e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HY001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x57a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XA100"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x64e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XA102"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x64d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XA106"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE03"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x575

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE04"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x576

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE05"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x577

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE07"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x5a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE08"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x578

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XAE09"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "40001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    const/16 v1, 0x4bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "40001"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLWarning;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 656
    invoke-static {p0, v0, v0}, Lcom/mysql/jdbc/SQLError;->convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;IZ)Ljava/sql/SQLWarning;

    move-result-object p0

    return-object p0
.end method

.method static convertShowWarningsToSQLWarnings(Lcom/mysql/jdbc/Connection;IZ)Ljava/sql/SQLWarning;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x64

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 686
    :try_start_0
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 688
    :try_start_1
    invoke-interface {p1}, Ljava/sql/Statement;->getMaxRows()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 689
    invoke-interface {p1, v0}, Ljava/sql/Statement;->setMaxRows(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto/16 :goto_5

    :catchall_1
    move-exception p0

    move-object p1, v1

    move-object v0, p1

    goto/16 :goto_5

    :cond_0
    const/16 p1, 0x3eb

    const/16 v0, 0x3ef

    .line 693
    :try_start_2
    invoke-interface {p0, p1, v0}, Lcom/mysql/jdbc/Connection;->createStatement(II)Ljava/sql/Statement;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 v0, -0x80000000

    .line 694
    :try_start_3
    invoke-interface {p1, v0}, Ljava/sql/Statement;->setFetchSize(I)V

    :cond_1
    :goto_0
    const-string v0, "SHOW WARNINGS"

    .line 704
    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v1

    .line 706
    :cond_2
    :goto_1
    :try_start_4
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Code"

    .line 707
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getInt(Ljava/lang/String;)I

    move-result v11

    if-eqz p2, :cond_5

    const/16 v3, 0x4f1

    if-eq v11, v3, :cond_3

    const/16 v3, 0x4f0

    if-ne v11, v3, :cond_2

    .line 711
    :cond_3
    new-instance v3, Lcom/mysql/jdbc/MysqlDataTruncation;

    const-string v4, "Message"

    invoke-interface {v0, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/mysql/jdbc/MysqlDataTruncation;-><init>(Ljava/lang/String;IZZIII)V

    if-nez v2, :cond_4

    move-object v2, v3

    goto :goto_1

    .line 716
    :cond_4
    invoke-virtual {v2, v3}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    goto :goto_1

    :cond_5
    const-string v3, "Message"

    .line 721
    invoke-interface {v0, v3}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 723
    new-instance v4, Ljava/sql/SQLWarning;

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getUseSqlStateCodes()Z

    move-result v5

    invoke-static {v11, v5}, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState(IZ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5, v11}, Ljava/sql/SQLWarning;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v2, :cond_6

    move-object v2, v4

    goto :goto_1

    .line 728
    :cond_6
    invoke-virtual {v2, v4}, Ljava/sql/SQLWarning;->setNextWarning(Ljava/sql/SQLWarning;)V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_9

    if-nez v2, :cond_8

    goto :goto_2

    .line 734
    :cond_8
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_9
    :goto_2
    if-eqz v0, :cond_a

    .line 743
    :try_start_5
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :cond_a
    :goto_3
    if-eqz p1, :cond_b

    .line 751
    :try_start_6
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    :cond_b
    :goto_4
    if-nez v1, :cond_c

    return-object v2

    .line 759
    :cond_c
    throw v1

    :catchall_2
    move-exception p0

    :goto_5
    if-eqz v0, :cond_d

    .line 743
    :try_start_7
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_6

    :catch_2
    move-exception v1

    :cond_d
    :goto_6
    if-eqz p1, :cond_e

    .line 751
    :try_start_8
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    :cond_e
    :goto_7
    if-eqz v1, :cond_f

    .line 759
    throw v1

    .line 739
    :cond_f
    throw p0
.end method

.method public static createBatchUpdateException(Ljava/sql/SQLException;[JLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1161
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "java.sql.BatchUpdateException"

    const/4 v1, 0x5

    .line 1162
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-class v3, [J

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-class v3, Ljava/lang/Throwable;

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object p1, v1, v7

    aput-object p0, v1, v8

    invoke-static {v0, v2, v1, p2}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/sql/SQLException;

    goto :goto_0

    .line 1167
    :cond_0
    new-instance v0, Ljava/sql/BatchUpdateException;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v3

    invoke-static {p1}, Lcom/mysql/jdbc/Util;->truncateAndConvertToInt([J)[I

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/sql/BatchUpdateException;-><init>(Ljava/lang/String;Ljava/lang/String;I[I)V

    .line 1169
    invoke-virtual {v0, p0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object p0, v0

    :goto_0
    const/4 p1, 0x0

    .line 1171
    invoke-static {p2, p0, p1}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 8

    .line 984
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_0

    .line 985
    new-instance v0, Lcom/mysql/jdbc/CommunicationsException;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/CommunicationsException;-><init>(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;)V

    goto :goto_0

    .line 989
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/SQLError;->JDBC_4_COMMUNICATIONS_EXCEPTION_CTOR:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x3

    aput-object p5, v1, p1

    invoke-static {v0, v1, p6}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/sql/SQLException;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :goto_0
    invoke-static {p6, v0, p0}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    return-object p0
.end method

.method public static createLinkFailureMessageBasedOnHeuristics(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_2

    .line 1016
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getInteractiveClient()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v7, "interactive_timeout"

    .line 1021
    invoke-interface {v0, v7}, Lcom/mysql/jdbc/MySQLConnection;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v7, "wait_timeout"

    .line 1023
    invoke-interface {v0, v7}, Lcom/mysql/jdbc/MySQLConnection;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    if-eqz v7, :cond_1

    .line 1028
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    move-wide v7, v4

    goto :goto_1

    :cond_2
    move-wide v7, v4

    const/4 v6, 0x0

    .line 1035
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1037
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v14, p1, v4

    if-nez v14, :cond_3

    move-wide v12, v10

    goto :goto_2

    :cond_3
    move-wide/from16 v12, p1

    :goto_2
    const/4 v14, 0x0

    sub-long v12, v10, v12

    const-wide/16 v14, 0x3e8

    .line 1044
    div-long v14, v12, v14

    sub-long v10, v10, p3

    const/16 v16, 0x0

    const/4 v3, 0x1

    cmp-long v17, v7, v4

    if-eqz v17, :cond_5

    cmp-long v7, v14, v7

    if-lez v7, :cond_6

    .line 1056
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CommunicationsException.2"

    .line 1058
    invoke-static {v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_4

    const-string v6, "CommunicationsException.3"

    .line 1061
    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v6, "CommunicationsException.4"

    .line 1063
    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const-wide/16 v6, 0x7080

    cmp-long v6, v14, v6

    if-lez v6, :cond_6

    .line 1070
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CommunicationsException.5"

    .line 1072
    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CommunicationsException.6"

    .line 1073
    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CommunicationsException.7"

    .line 1074
    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CommunicationsException.8"

    .line 1075
    invoke-static {v7}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, v6

    const/4 v6, 0x2

    goto :goto_4

    :cond_6
    move-object/from16 v7, v16

    const/4 v6, 0x0

    :goto_4
    if-eq v6, v3, :cond_9

    const/4 v8, 0x2

    if-ne v6, v8, :cond_7

    goto :goto_5

    :cond_7
    move-object/from16 v6, p5

    .line 1101
    instance-of v6, v6, Ljava/net/BindException;

    if-eqz v6, :cond_c

    .line 1102
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getLocalSocketAddress()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getLocalSocketAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mysql/jdbc/Util;->interfaceExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "CommunicationsException.LocalSocketAddressNotAvailable"

    .line 1103
    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_8
    const-string v6, "CommunicationsException.TooManyClientConnections"

    .line 1106
    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_9
    :goto_5
    cmp-long v6, p3, v4

    if-eqz v6, :cond_a

    const/4 v6, 0x2

    .line 1081
    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v14, 0x0

    aput-object v6, v8, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v8, v3

    const-string v6, "CommunicationsException.ServerPacketTimingInfo"

    .line 1082
    invoke-static {v6, v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    const-string v6, "CommunicationsException.ServerPacketTimingInfoNoRecv"

    .line 1084
    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v8, v14

    invoke-static {v6, v8}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    if-eqz v7, :cond_b

    .line 1089
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v6, "CommunicationsException.11"

    .line 1092
    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "CommunicationsException.12"

    .line 1093
    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "CommunicationsException.13"

    .line 1094
    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :cond_c
    :goto_7
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "CommunicationsException.20"

    .line 1113
    invoke-static {v6}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_e

    .line 1115
    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getMaintainTimeStats()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface/range {p0 .. p0}, Lcom/mysql/jdbc/MySQLConnection;->getParanoid()Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "\n\n"

    .line 1116
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v0, p3, v4

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    .line 1118
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "CommunicationsException.ServerPacketTimingInfo"

    .line 1119
    invoke-static {v1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_d
    const/4 v2, 0x0

    const-string v0, "CommunicationsException.ServerPacketTimingInfoNoRecv"

    .line 1121
    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    :cond_e
    :goto_8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 1

    const/4 v0, 0x0

    .line 864
    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 1

    .line 868
    new-instance v0, Ljava/sql/SQLException;

    invoke-direct {v0, p0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 869
    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 1

    const/4 v0, 0x0

    .line 886
    invoke-static {p0, p1, p2, v0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 897
    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 6

    if-eqz p1, :cond_e

    :try_start_0
    const-string v0, "08"

    .line 906
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_3

    if-eqz p3, :cond_1

    .line 908
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result p3

    if-nez p3, :cond_0

    .line 909
    new-instance p3, Lcom/mysql/jdbc/exceptions/MySQLTransientConnectionException;

    invoke-direct {p3, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLTransientConnectionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    const-string p3, "com.mysql.jdbc.exceptions.jdbc4.MySQLTransientConnectionException"

    .line 911
    new-array v0, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p3, v0, v4, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/sql/SQLException;

    goto/16 :goto_0

    .line 915
    :cond_1
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result p3

    if-nez p3, :cond_2

    .line 916
    new-instance p3, Lcom/mysql/jdbc/exceptions/MySQLNonTransientConnectionException;

    invoke-direct {p3, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientConnectionException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    const-string p3, "com.mysql.jdbc.exceptions.jdbc4.MySQLNonTransientConnectionException"

    .line 918
    new-array v0, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p3, v0, v4, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/sql/SQLException;

    goto/16 :goto_0

    :cond_3
    const-string p3, "22"

    .line 922
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 923
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result p3

    if-nez p3, :cond_4

    .line 924
    new-instance p3, Lcom/mysql/jdbc/exceptions/MySQLDataException;

    invoke-direct {p3, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLDataException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const-string p3, "com.mysql.jdbc.exceptions.jdbc4.MySQLDataException"

    .line 926
    new-array v0, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p3, v0, v4, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/sql/SQLException;

    goto/16 :goto_0

    :cond_5
    const-string p3, "23"

    .line 930
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 932
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result p3

    if-nez p3, :cond_6

    .line 933
    new-instance p3, Lcom/mysql/jdbc/exceptions/MySQLIntegrityConstraintViolationException;

    invoke-direct {p3, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLIntegrityConstraintViolationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    const-string p3, "com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException"

    .line 935
    new-array v0, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p3, v0, v4, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/sql/SQLException;

    goto/16 :goto_0

    :cond_7
    const-string p3, "42"

    .line 939
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 940
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result p3

    if-nez p3, :cond_8

    .line 941
    new-instance p3, Lcom/mysql/jdbc/exceptions/MySQLSyntaxErrorException;

    invoke-direct {p3, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLSyntaxErrorException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_8
    const-string p3, "com.mysql.jdbc.exceptions.jdbc4.MySQLSyntaxErrorException"

    .line 943
    new-array v0, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p3, v0, v4, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/sql/SQLException;

    goto/16 :goto_0

    :cond_9
    const-string p3, "40"

    .line 947
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 948
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result p3

    if-nez p3, :cond_a

    .line 949
    new-instance p3, Lcom/mysql/jdbc/exceptions/MySQLTransactionRollbackException;

    invoke-direct {p3, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLTransactionRollbackException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_a
    const-string p3, "com.mysql.jdbc.exceptions.jdbc4.MySQLTransactionRollbackException"

    .line 951
    new-array v0, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p3, v0, v4, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/sql/SQLException;

    goto :goto_0

    :cond_b
    const-string p3, "70100"

    .line 955
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 956
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result p3

    if-nez p3, :cond_c

    .line 957
    new-instance p3, Lcom/mysql/jdbc/exceptions/MySQLQueryInterruptedException;

    invoke-direct {p3, p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLQueryInterruptedException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_c
    const-string p3, "com.mysql.jdbc.exceptions.jdbc4.MySQLQueryInterruptedException"

    .line 959
    new-array v0, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v3

    const-class v5, Ljava/lang/String;

    aput-object v5, v0, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {p3, v0, v4, p4}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Ljava/sql/SQLException;

    goto :goto_0

    .line 964
    :cond_d
    new-instance p3, Ljava/sql/SQLException;

    invoke-direct {p3, p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 967
    :cond_e
    new-instance p3, Ljava/sql/SQLException;

    invoke-direct {p3, p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 970
    :goto_0
    invoke-static {p4, p3, p5}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 972
    :goto_1
    new-instance p1, Ljava/sql/SQLException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to create correct SQLException class instance, error class/codes may be incorrect. Reason: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "S1000"

    invoke-direct {p1, p0, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-static {p4, p1, p5}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 1

    const/4 v0, 0x0

    .line 860
    invoke-static {p0, p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;ILcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 1

    const/4 v0, 0x0

    .line 873
    invoke-static {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 1

    const/4 v0, 0x0

    .line 877
    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    .line 878
    invoke-virtual {p0}, Ljava/sql/SQLException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 879
    invoke-virtual {p0, p2}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 882
    :cond_0
    invoke-static {p3, p0, p4}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static createSQLFeatureNotSupportedException()Ljava/sql/SQLException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1180
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "java.sql.SQLFeatureNotSupportedException"

    const/4 v1, 0x0

    .line 1181
    invoke-static {v0, v1, v1, v1}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    goto :goto_0

    .line 1183
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/NotImplemented;

    invoke-direct {v0}, Lcom/mysql/jdbc/NotImplemented;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static createSQLFeatureNotSupportedException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1199
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "java.sql.SQLFeatureNotSupportedException"

    const/4 v1, 0x2

    .line 1200
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v2, v1, p2}, Lcom/mysql/jdbc/Util;->getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/sql/SQLException;

    goto :goto_0

    .line 1203
    :cond_0
    new-instance p0, Lcom/mysql/jdbc/NotImplemented;

    invoke-direct {p0}, Lcom/mysql/jdbc/NotImplemented;-><init>()V

    :goto_0
    const/4 p1, 0x0

    .line 1206
    invoke-static {p2, p0, p1}, Lcom/mysql/jdbc/SQLError;->runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static dumpSqlStatesMappingsAsXml()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 765
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 766
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 773
    sget-object v2, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 774
    invoke-virtual {v0, v3, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 777
    :cond_0
    sget-object v2, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 778
    invoke-virtual {v0, v3, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 784
    :cond_1
    const-class v2, Lcom/mysql/jdbc/MysqlErrorNumbers;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 786
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 787
    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ER_"

    .line 789
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 790
    aget-object v5, v2, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 794
    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "<ErrorMappings>"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 797
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/mysql/jdbc/SQLError;->mysqlToSql99(I)Ljava/lang/String;

    move-result-object v3

    .line 798
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/mysql/jdbc/SQLError;->mysqlToXOpen(I)Ljava/lang/String;

    move-result-object v4

    .line 800
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   <ErrorMapping mysqlErrorNumber=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\" mysqlErrorName=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" legacySqlState=\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_4

    const-string v4, ""

    :cond_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" sql92SqlState=\""

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"/>"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 805
    :cond_6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "</ErrorMappings>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 809
    sget-object v0, Lcom/mysql/jdbc/SQLError;->sqlStateMessages:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static mysqlToSql99(I)Ljava/lang/String;
    .locals 1

    .line 813
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 815
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSql99State:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "HY000"

    return-object p0
.end method

.method static mysqlToSqlState(IZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 832
    invoke-static {p0}, Lcom/mysql/jdbc/SQLError;->mysqlToSql99(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 835
    :cond_0
    invoke-static {p0}, Lcom/mysql/jdbc/SQLError;->mysqlToXOpen(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static mysqlToXOpen(I)Ljava/lang/String;
    .locals 1

    .line 839
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 841
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 842
    sget-object v0, Lcom/mysql/jdbc/SQLError;->mysqlToSqlState:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, "S1000"

    return-object p0
.end method

.method private static runThroughExceptionInterceptor(Lcom/mysql/jdbc/ExceptionInterceptor;Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;
    .locals 0

    if-eqz p0, :cond_0

    .line 1140
    invoke-interface {p0, p1, p2}, Lcom/mysql/jdbc/ExceptionInterceptor;->interceptException(Ljava/sql/SQLException;Lcom/mysql/jdbc/Connection;)Ljava/sql/SQLException;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method
