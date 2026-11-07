.class public Lcom/mysql/jdbc/DatabaseMetaData;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"

# interfaces
.implements Ljava/sql/DatabaseMetaData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;,
        Lcom/mysql/jdbc/DatabaseMetaData$TableType;,
        Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;,
        Lcom/mysql/jdbc/DatabaseMetaData$TableMetaDataKey;,
        Lcom/mysql/jdbc/DatabaseMetaData$IndexMetaDataKey;,
        Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;,
        Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;,
        Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;,
        Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;,
        Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
    }
.end annotation


# static fields
.field private static final DEFERRABILITY:I = 0xd

.field private static final DELETE_RULE:I = 0xa

.field private static final FKCOLUMN_NAME:I = 0x7

.field private static final FKTABLE_CAT:I = 0x4

.field private static final FKTABLE_NAME:I = 0x6

.field private static final FKTABLE_SCHEM:I = 0x5

.field private static final FK_NAME:I = 0xb

.field private static final JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final KEY_SEQ:I = 0x8

.field protected static final MAX_IDENTIFIER_LENGTH:I = 0x40

.field private static final MYSQL_KEYWORDS:[Ljava/lang/String;

.field private static final PKCOLUMN_NAME:I = 0x3

.field private static final PKTABLE_CAT:I = 0x0

.field private static final PKTABLE_NAME:I = 0x2

.field private static final PKTABLE_SCHEM:I = 0x1

.field private static final PK_NAME:I = 0xc

.field private static final SQL2003_KEYWORDS:[Ljava/lang/String;

.field private static final SQL92_KEYWORDS:[Ljava/lang/String;

.field private static final SUPPORTS_FK:Ljava/lang/String; = "SUPPORTS_FK"

.field protected static final SYSTEM_TABLE_AS_BYTES:[B

.field protected static final TABLE_AS_BYTES:[B

.field private static final UPDATE_RULE:I = 0x9

.field protected static final VIEW_AS_BYTES:[B

.field private static volatile mysqlKeywords:Ljava/lang/String;


# instance fields
.field protected conn:Lcom/mysql/jdbc/MySQLConnection;

.field protected database:Ljava/lang/String;

.field private exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

.field protected final quotedId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "TABLE"

    .line 652
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->TABLE_AS_BYTES:[B

    const-string v0, "SYSTEM TABLE"

    .line 654
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->SYSTEM_TABLE_AS_BYTES:[B

    const-string v0, "VIEW"

    .line 658
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->VIEW_AS_BYTES:[B

    .line 665
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "com.mysql.jdbc.JDBC4DatabaseMetaData"

    .line 667
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v6, v5, v4

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;

    const-string v0, "com.mysql.jdbc.JDBC4DatabaseMetaDataUsingInfoSchema"

    .line 669
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Lcom/mysql/jdbc/MySQLConnection;

    aput-object v6, v5, v4

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 676
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 674
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 672
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 679
    :cond_0
    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;

    .line 680
    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;

    :goto_0
    const/16 v0, 0xeb

    .line 685
    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "ACCESSIBLE"

    aput-object v5, v0, v4

    const-string v5, "ADD"

    aput-object v5, v0, v3

    const-string v5, "ALL"

    aput-object v5, v0, v2

    const-string v5, "ALTER"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const-string v5, "ANALYZE"

    const/4 v7, 0x4

    aput-object v5, v0, v7

    const-string v5, "AND"

    const/4 v8, 0x5

    aput-object v5, v0, v8

    const-string v5, "AS"

    const/4 v9, 0x6

    aput-object v5, v0, v9

    const-string v5, "ASC"

    const/4 v10, 0x7

    aput-object v5, v0, v10

    const-string v5, "ASENSITIVE"

    const/16 v11, 0x8

    aput-object v5, v0, v11

    const-string v5, "BEFORE"

    const/16 v12, 0x9

    aput-object v5, v0, v12

    const-string v5, "BETWEEN"

    const/16 v13, 0xa

    aput-object v5, v0, v13

    const-string v5, "BIGINT"

    const/16 v14, 0xb

    aput-object v5, v0, v14

    const-string v5, "BINARY"

    const/16 v15, 0xc

    aput-object v5, v0, v15

    const-string v5, "BLOB"

    const/16 v16, 0xd

    aput-object v5, v0, v16

    const/16 v5, 0xe

    const-string v17, "BOTH"

    aput-object v17, v0, v5

    const/16 v5, 0xf

    const-string v17, "BY"

    aput-object v17, v0, v5

    const/16 v5, 0x10

    const-string v17, "CALL"

    aput-object v17, v0, v5

    const/16 v5, 0x11

    const-string v17, "CASCADE"

    aput-object v17, v0, v5

    const/16 v5, 0x12

    const-string v17, "CASE"

    aput-object v17, v0, v5

    const/16 v5, 0x13

    const-string v17, "CHANGE"

    aput-object v17, v0, v5

    const/16 v5, 0x14

    const-string v17, "CHAR"

    aput-object v17, v0, v5

    const/16 v5, 0x15

    const-string v17, "CHARACTER"

    aput-object v17, v0, v5

    const/16 v5, 0x16

    const-string v17, "CHECK"

    aput-object v17, v0, v5

    const/16 v5, 0x17

    const-string v17, "COLLATE"

    aput-object v17, v0, v5

    const/16 v5, 0x18

    const-string v17, "COLUMN"

    aput-object v17, v0, v5

    const/16 v5, 0x19

    const-string v17, "CONDITION"

    aput-object v17, v0, v5

    const/16 v5, 0x1a

    const-string v17, "CONSTRAINT"

    aput-object v17, v0, v5

    const/16 v5, 0x1b

    const-string v17, "CONTINUE"

    aput-object v17, v0, v5

    const/16 v5, 0x1c

    const-string v17, "CONVERT"

    aput-object v17, v0, v5

    const/16 v5, 0x1d

    const-string v17, "CREATE"

    aput-object v17, v0, v5

    const/16 v5, 0x1e

    const-string v17, "CROSS"

    aput-object v17, v0, v5

    const/16 v5, 0x1f

    const-string v17, "CURRENT_DATE"

    aput-object v17, v0, v5

    const/16 v5, 0x20

    const-string v17, "CURRENT_TIME"

    aput-object v17, v0, v5

    const/16 v5, 0x21

    const-string v17, "CURRENT_TIMESTAMP"

    aput-object v17, v0, v5

    const/16 v5, 0x22

    const-string v17, "CURRENT_USER"

    aput-object v17, v0, v5

    const/16 v5, 0x23

    const-string v17, "CURSOR"

    aput-object v17, v0, v5

    const/16 v5, 0x24

    const-string v17, "DATABASE"

    aput-object v17, v0, v5

    const/16 v5, 0x25

    const-string v17, "DATABASES"

    aput-object v17, v0, v5

    const/16 v5, 0x26

    const-string v17, "DAY_HOUR"

    aput-object v17, v0, v5

    const/16 v5, 0x27

    const-string v17, "DAY_MICROSECOND"

    aput-object v17, v0, v5

    const/16 v5, 0x28

    const-string v17, "DAY_MINUTE"

    aput-object v17, v0, v5

    const/16 v5, 0x29

    const-string v17, "DAY_SECOND"

    aput-object v17, v0, v5

    const/16 v5, 0x2a

    const-string v17, "DEC"

    aput-object v17, v0, v5

    const/16 v5, 0x2b

    const-string v17, "DECIMAL"

    aput-object v17, v0, v5

    const/16 v5, 0x2c

    const-string v17, "DECLARE"

    aput-object v17, v0, v5

    const/16 v5, 0x2d

    const-string v17, "DEFAULT"

    aput-object v17, v0, v5

    const/16 v5, 0x2e

    const-string v17, "DELAYED"

    aput-object v17, v0, v5

    const/16 v5, 0x2f

    const-string v17, "DELETE"

    aput-object v17, v0, v5

    const/16 v5, 0x30

    const-string v17, "DESC"

    aput-object v17, v0, v5

    const/16 v5, 0x31

    const-string v17, "DESCRIBE"

    aput-object v17, v0, v5

    const/16 v5, 0x32

    const-string v17, "DETERMINISTIC"

    aput-object v17, v0, v5

    const/16 v5, 0x33

    const-string v17, "DISTINCT"

    aput-object v17, v0, v5

    const/16 v5, 0x34

    const-string v17, "DISTINCTROW"

    aput-object v17, v0, v5

    const/16 v5, 0x35

    const-string v17, "DIV"

    aput-object v17, v0, v5

    const/16 v5, 0x36

    const-string v17, "DOUBLE"

    aput-object v17, v0, v5

    const/16 v5, 0x37

    const-string v17, "DROP"

    aput-object v17, v0, v5

    const/16 v5, 0x38

    const-string v17, "DUAL"

    aput-object v17, v0, v5

    const/16 v5, 0x39

    const-string v17, "EACH"

    aput-object v17, v0, v5

    const/16 v5, 0x3a

    const-string v17, "ELSE"

    aput-object v17, v0, v5

    const/16 v5, 0x3b

    const-string v17, "ELSEIF"

    aput-object v17, v0, v5

    const/16 v5, 0x3c

    const-string v17, "ENCLOSED"

    aput-object v17, v0, v5

    const/16 v5, 0x3d

    const-string v17, "ESCAPED"

    aput-object v17, v0, v5

    const/16 v5, 0x3e

    const-string v17, "EXISTS"

    aput-object v17, v0, v5

    const/16 v5, 0x3f

    const-string v17, "EXIT"

    aput-object v17, v0, v5

    const/16 v5, 0x40

    const-string v17, "EXPLAIN"

    aput-object v17, v0, v5

    const/16 v5, 0x41

    const-string v17, "FALSE"

    aput-object v17, v0, v5

    const/16 v5, 0x42

    const-string v17, "FETCH"

    aput-object v17, v0, v5

    const/16 v5, 0x43

    const-string v17, "FLOAT"

    aput-object v17, v0, v5

    const/16 v5, 0x44

    const-string v17, "FLOAT4"

    aput-object v17, v0, v5

    const/16 v5, 0x45

    const-string v17, "FLOAT8"

    aput-object v17, v0, v5

    const/16 v5, 0x46

    const-string v17, "FOR"

    aput-object v17, v0, v5

    const/16 v5, 0x47

    const-string v17, "FORCE"

    aput-object v17, v0, v5

    const/16 v5, 0x48

    const-string v17, "FOREIGN"

    aput-object v17, v0, v5

    const/16 v5, 0x49

    const-string v17, "FROM"

    aput-object v17, v0, v5

    const/16 v5, 0x4a

    const-string v17, "FULLTEXT"

    aput-object v17, v0, v5

    const/16 v5, 0x4b

    const-string v17, "GENERATED"

    aput-object v17, v0, v5

    const/16 v5, 0x4c

    const-string v17, "GET"

    aput-object v17, v0, v5

    const/16 v5, 0x4d

    const-string v17, "GRANT"

    aput-object v17, v0, v5

    const/16 v5, 0x4e

    const-string v17, "GROUP"

    aput-object v17, v0, v5

    const/16 v5, 0x4f

    const-string v17, "HAVING"

    aput-object v17, v0, v5

    const/16 v5, 0x50

    const-string v17, "HIGH_PRIORITY"

    aput-object v17, v0, v5

    const/16 v5, 0x51

    const-string v17, "HOUR_MICROSECOND"

    aput-object v17, v0, v5

    const/16 v5, 0x52

    const-string v17, "HOUR_MINUTE"

    aput-object v17, v0, v5

    const/16 v5, 0x53

    const-string v17, "HOUR_SECOND"

    aput-object v17, v0, v5

    const/16 v5, 0x54

    const-string v17, "IF"

    aput-object v17, v0, v5

    const/16 v5, 0x55

    const-string v17, "IGNORE"

    aput-object v17, v0, v5

    const/16 v5, 0x56

    const-string v17, "IN"

    aput-object v17, v0, v5

    const/16 v5, 0x57

    const-string v17, "INDEX"

    aput-object v17, v0, v5

    const/16 v5, 0x58

    const-string v17, "INFILE"

    aput-object v17, v0, v5

    const/16 v5, 0x59

    const-string v17, "INNER"

    aput-object v17, v0, v5

    const/16 v5, 0x5a

    const-string v17, "INOUT"

    aput-object v17, v0, v5

    const/16 v5, 0x5b

    const-string v17, "INSENSITIVE"

    aput-object v17, v0, v5

    const/16 v5, 0x5c

    const-string v17, "INSERT"

    aput-object v17, v0, v5

    const/16 v5, 0x5d

    const-string v17, "INT"

    aput-object v17, v0, v5

    const/16 v5, 0x5e

    const-string v17, "INT1"

    aput-object v17, v0, v5

    const/16 v5, 0x5f

    const-string v17, "INT2"

    aput-object v17, v0, v5

    const/16 v5, 0x60

    const-string v17, "INT3"

    aput-object v17, v0, v5

    const/16 v5, 0x61

    const-string v17, "INT4"

    aput-object v17, v0, v5

    const/16 v5, 0x62

    const-string v17, "INT8"

    aput-object v17, v0, v5

    const/16 v5, 0x63

    const-string v17, "INTEGER"

    aput-object v17, v0, v5

    const/16 v5, 0x64

    const-string v17, "INTERVAL"

    aput-object v17, v0, v5

    const/16 v5, 0x65

    const-string v17, "INTO"

    aput-object v17, v0, v5

    const/16 v5, 0x66

    const-string v17, "IO_AFTER_GTIDS"

    aput-object v17, v0, v5

    const/16 v5, 0x67

    const-string v17, "IO_BEFORE_GTIDS"

    aput-object v17, v0, v5

    const/16 v5, 0x68

    const-string v17, "IS"

    aput-object v17, v0, v5

    const/16 v5, 0x69

    const-string v17, "ITERATE"

    aput-object v17, v0, v5

    const/16 v5, 0x6a

    const-string v17, "JOIN"

    aput-object v17, v0, v5

    const/16 v5, 0x6b

    const-string v17, "KEY"

    aput-object v17, v0, v5

    const/16 v5, 0x6c

    const-string v17, "KEYS"

    aput-object v17, v0, v5

    const/16 v5, 0x6d

    const-string v17, "KILL"

    aput-object v17, v0, v5

    const/16 v5, 0x6e

    const-string v17, "LEADING"

    aput-object v17, v0, v5

    const/16 v5, 0x6f

    const-string v17, "LEAVE"

    aput-object v17, v0, v5

    const/16 v5, 0x70

    const-string v17, "LEFT"

    aput-object v17, v0, v5

    const/16 v5, 0x71

    const-string v17, "LIKE"

    aput-object v17, v0, v5

    const/16 v5, 0x72

    const-string v17, "LIMIT"

    aput-object v17, v0, v5

    const/16 v5, 0x73

    const-string v17, "LINEAR"

    aput-object v17, v0, v5

    const/16 v5, 0x74

    const-string v17, "LINES"

    aput-object v17, v0, v5

    const/16 v5, 0x75

    const-string v17, "LOAD"

    aput-object v17, v0, v5

    const/16 v5, 0x76

    const-string v17, "LOCALTIME"

    aput-object v17, v0, v5

    const/16 v5, 0x77

    const-string v17, "LOCALTIMESTAMP"

    aput-object v17, v0, v5

    const/16 v5, 0x78

    const-string v17, "LOCK"

    aput-object v17, v0, v5

    const/16 v5, 0x79

    const-string v17, "LONG"

    aput-object v17, v0, v5

    const/16 v5, 0x7a

    const-string v17, "LONGBLOB"

    aput-object v17, v0, v5

    const/16 v5, 0x7b

    const-string v17, "LONGTEXT"

    aput-object v17, v0, v5

    const/16 v5, 0x7c

    const-string v17, "LOOP"

    aput-object v17, v0, v5

    const/16 v5, 0x7d

    const-string v17, "LOW_PRIORITY"

    aput-object v17, v0, v5

    const/16 v5, 0x7e

    const-string v17, "MASTER_BIND"

    aput-object v17, v0, v5

    const/16 v5, 0x7f

    const-string v17, "MASTER_SSL_VERIFY_SERVER_CERT"

    aput-object v17, v0, v5

    const/16 v5, 0x80

    const-string v17, "MATCH"

    aput-object v17, v0, v5

    const/16 v5, 0x81

    const-string v17, "MAXVALUE"

    aput-object v17, v0, v5

    const/16 v5, 0x82

    const-string v17, "MEDIUMBLOB"

    aput-object v17, v0, v5

    const/16 v5, 0x83

    const-string v17, "MEDIUMINT"

    aput-object v17, v0, v5

    const/16 v5, 0x84

    const-string v17, "MEDIUMTEXT"

    aput-object v17, v0, v5

    const/16 v5, 0x85

    const-string v17, "MIDDLEINT"

    aput-object v17, v0, v5

    const/16 v5, 0x86

    const-string v17, "MINUTE_MICROSECOND"

    aput-object v17, v0, v5

    const/16 v5, 0x87

    const-string v17, "MINUTE_SECOND"

    aput-object v17, v0, v5

    const/16 v5, 0x88

    const-string v17, "MOD"

    aput-object v17, v0, v5

    const/16 v5, 0x89

    const-string v17, "MODIFIES"

    aput-object v17, v0, v5

    const/16 v5, 0x8a

    const-string v17, "NATURAL"

    aput-object v17, v0, v5

    const/16 v5, 0x8b

    const-string v17, "NOT"

    aput-object v17, v0, v5

    const/16 v5, 0x8c

    const-string v17, "NO_WRITE_TO_BINLOG"

    aput-object v17, v0, v5

    const/16 v5, 0x8d

    const-string v17, "NULL"

    aput-object v17, v0, v5

    const/16 v5, 0x8e

    const-string v17, "NUMERIC"

    aput-object v17, v0, v5

    const/16 v5, 0x8f

    const-string v17, "ON"

    aput-object v17, v0, v5

    const/16 v5, 0x90

    const-string v17, "OPTIMIZE"

    aput-object v17, v0, v5

    const/16 v5, 0x91

    const-string v17, "OPTIMIZER_COSTS"

    aput-object v17, v0, v5

    const/16 v5, 0x92

    const-string v17, "OPTION"

    aput-object v17, v0, v5

    const/16 v5, 0x93

    const-string v17, "OPTIONALLY"

    aput-object v17, v0, v5

    const/16 v5, 0x94

    const-string v17, "OR"

    aput-object v17, v0, v5

    const/16 v5, 0x95

    const-string v17, "ORDER"

    aput-object v17, v0, v5

    const/16 v5, 0x96

    const-string v17, "OUT"

    aput-object v17, v0, v5

    const/16 v5, 0x97

    const-string v17, "OUTER"

    aput-object v17, v0, v5

    const/16 v5, 0x98

    const-string v17, "OUTFILE"

    aput-object v17, v0, v5

    const/16 v5, 0x99

    const-string v17, "PARTITION"

    aput-object v17, v0, v5

    const/16 v5, 0x9a

    const-string v17, "PRECISION"

    aput-object v17, v0, v5

    const/16 v5, 0x9b

    const-string v17, "PRIMARY"

    aput-object v17, v0, v5

    const/16 v5, 0x9c

    const-string v17, "PROCEDURE"

    aput-object v17, v0, v5

    const/16 v5, 0x9d

    const-string v17, "PURGE"

    aput-object v17, v0, v5

    const/16 v5, 0x9e

    const-string v17, "RANGE"

    aput-object v17, v0, v5

    const/16 v5, 0x9f

    const-string v17, "READ"

    aput-object v17, v0, v5

    const/16 v5, 0xa0

    const-string v17, "READS"

    aput-object v17, v0, v5

    const/16 v5, 0xa1

    const-string v17, "READ_WRITE"

    aput-object v17, v0, v5

    const/16 v5, 0xa2

    const-string v17, "REAL"

    aput-object v17, v0, v5

    const/16 v5, 0xa3

    const-string v17, "REFERENCES"

    aput-object v17, v0, v5

    const/16 v5, 0xa4

    const-string v17, "REGEXP"

    aput-object v17, v0, v5

    const/16 v5, 0xa5

    const-string v17, "RELEASE"

    aput-object v17, v0, v5

    const/16 v5, 0xa6

    const-string v17, "RENAME"

    aput-object v17, v0, v5

    const/16 v5, 0xa7

    const-string v17, "REPEAT"

    aput-object v17, v0, v5

    const/16 v5, 0xa8

    const-string v17, "REPLACE"

    aput-object v17, v0, v5

    const/16 v5, 0xa9

    const-string v17, "REQUIRE"

    aput-object v17, v0, v5

    const/16 v5, 0xaa

    const-string v17, "RESIGNAL"

    aput-object v17, v0, v5

    const/16 v5, 0xab

    const-string v17, "RESTRICT"

    aput-object v17, v0, v5

    const/16 v5, 0xac

    const-string v17, "RETURN"

    aput-object v17, v0, v5

    const/16 v5, 0xad

    const-string v17, "REVOKE"

    aput-object v17, v0, v5

    const/16 v5, 0xae

    const-string v17, "RIGHT"

    aput-object v17, v0, v5

    const/16 v5, 0xaf

    const-string v17, "RLIKE"

    aput-object v17, v0, v5

    const/16 v5, 0xb0

    const-string v17, "SCHEMA"

    aput-object v17, v0, v5

    const/16 v5, 0xb1

    const-string v17, "SCHEMAS"

    aput-object v17, v0, v5

    const/16 v5, 0xb2

    const-string v17, "SECOND_MICROSECOND"

    aput-object v17, v0, v5

    const/16 v5, 0xb3

    const-string v17, "SELECT"

    aput-object v17, v0, v5

    const/16 v5, 0xb4

    const-string v17, "SENSITIVE"

    aput-object v17, v0, v5

    const/16 v5, 0xb5

    const-string v17, "SEPARATOR"

    aput-object v17, v0, v5

    const/16 v5, 0xb6

    const-string v17, "SET"

    aput-object v17, v0, v5

    const/16 v5, 0xb7

    const-string v17, "SHOW"

    aput-object v17, v0, v5

    const/16 v5, 0xb8

    const-string v17, "SIGNAL"

    aput-object v17, v0, v5

    const/16 v5, 0xb9

    const-string v17, "SMALLINT"

    aput-object v17, v0, v5

    const/16 v5, 0xba

    const-string v17, "SPATIAL"

    aput-object v17, v0, v5

    const/16 v5, 0xbb

    const-string v17, "SPECIFIC"

    aput-object v17, v0, v5

    const/16 v5, 0xbc

    const-string v17, "SQL"

    aput-object v17, v0, v5

    const/16 v5, 0xbd

    const-string v17, "SQLEXCEPTION"

    aput-object v17, v0, v5

    const/16 v5, 0xbe

    const-string v17, "SQLSTATE"

    aput-object v17, v0, v5

    const/16 v5, 0xbf

    const-string v17, "SQLWARNING"

    aput-object v17, v0, v5

    const/16 v5, 0xc0

    const-string v17, "SQL_BIG_RESULT"

    aput-object v17, v0, v5

    const/16 v5, 0xc1

    const-string v17, "SQL_CALC_FOUND_ROWS"

    aput-object v17, v0, v5

    const/16 v5, 0xc2

    const-string v17, "SQL_SMALL_RESULT"

    aput-object v17, v0, v5

    const/16 v5, 0xc3

    const-string v17, "SSL"

    aput-object v17, v0, v5

    const/16 v5, 0xc4

    const-string v17, "STARTING"

    aput-object v17, v0, v5

    const/16 v5, 0xc5

    const-string v17, "STORED"

    aput-object v17, v0, v5

    const/16 v5, 0xc6

    const-string v17, "STRAIGHT_JOIN"

    aput-object v17, v0, v5

    const/16 v5, 0xc7

    const-string v17, "TABLE"

    aput-object v17, v0, v5

    const/16 v5, 0xc8

    const-string v17, "TERMINATED"

    aput-object v17, v0, v5

    const/16 v5, 0xc9

    const-string v17, "THEN"

    aput-object v17, v0, v5

    const/16 v5, 0xca

    const-string v17, "TINYBLOB"

    aput-object v17, v0, v5

    const/16 v5, 0xcb

    const-string v17, "TINYINT"

    aput-object v17, v0, v5

    const/16 v5, 0xcc

    const-string v17, "TINYTEXT"

    aput-object v17, v0, v5

    const/16 v5, 0xcd

    const-string v17, "TO"

    aput-object v17, v0, v5

    const/16 v5, 0xce

    const-string v17, "TRAILING"

    aput-object v17, v0, v5

    const/16 v5, 0xcf

    const-string v17, "TRIGGER"

    aput-object v17, v0, v5

    const/16 v5, 0xd0

    const-string v17, "TRUE"

    aput-object v17, v0, v5

    const/16 v5, 0xd1

    const-string v17, "UNDO"

    aput-object v17, v0, v5

    const/16 v5, 0xd2

    const-string v17, "UNION"

    aput-object v17, v0, v5

    const/16 v5, 0xd3

    const-string v17, "UNIQUE"

    aput-object v17, v0, v5

    const/16 v5, 0xd4

    const-string v17, "UNLOCK"

    aput-object v17, v0, v5

    const/16 v5, 0xd5

    const-string v17, "UNSIGNED"

    aput-object v17, v0, v5

    const/16 v5, 0xd6

    const-string v17, "UPDATE"

    aput-object v17, v0, v5

    const/16 v5, 0xd7

    const-string v17, "USAGE"

    aput-object v17, v0, v5

    const/16 v5, 0xd8

    const-string v17, "USE"

    aput-object v17, v0, v5

    const/16 v5, 0xd9

    const-string v17, "USING"

    aput-object v17, v0, v5

    const/16 v5, 0xda

    const-string v17, "UTC_DATE"

    aput-object v17, v0, v5

    const/16 v5, 0xdb

    const-string v17, "UTC_TIME"

    aput-object v17, v0, v5

    const/16 v5, 0xdc

    const-string v17, "UTC_TIMESTAMP"

    aput-object v17, v0, v5

    const/16 v5, 0xdd

    const-string v17, "VALUES"

    aput-object v17, v0, v5

    const/16 v5, 0xde

    const-string v17, "VARBINARY"

    aput-object v17, v0, v5

    const/16 v5, 0xdf

    const-string v17, "VARCHAR"

    aput-object v17, v0, v5

    const/16 v5, 0xe0

    const-string v17, "VARCHARACTER"

    aput-object v17, v0, v5

    const/16 v5, 0xe1

    const-string v17, "VARYING"

    aput-object v17, v0, v5

    const/16 v5, 0xe2

    const-string v17, "VIRTUAL"

    aput-object v17, v0, v5

    const/16 v5, 0xe3

    const-string v17, "WHEN"

    aput-object v17, v0, v5

    const/16 v5, 0xe4

    const-string v17, "WHERE"

    aput-object v17, v0, v5

    const/16 v5, 0xe5

    const-string v17, "WHILE"

    aput-object v17, v0, v5

    const/16 v5, 0xe6

    const-string v17, "WITH"

    aput-object v17, v0, v5

    const/16 v5, 0xe7

    const-string v17, "WRITE"

    aput-object v17, v0, v5

    const/16 v5, 0xe8

    const-string v17, "XOR"

    aput-object v17, v0, v5

    const/16 v5, 0xe9

    const-string v17, "YEAR_MONTH"

    aput-object v17, v0, v5

    const/16 v5, 0xea

    const-string v17, "ZEROFILL"

    aput-object v17, v0, v5

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->MYSQL_KEYWORDS:[Ljava/lang/String;

    const/16 v0, 0xe3

    .line 706
    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "ABSOLUTE"

    aput-object v5, v0, v4

    const-string v5, "ACTION"

    aput-object v5, v0, v3

    const-string v5, "ADD"

    aput-object v5, v0, v2

    const-string v5, "ALL"

    aput-object v5, v0, v6

    const-string v5, "ALLOCATE"

    aput-object v5, v0, v7

    const-string v5, "ALTER"

    aput-object v5, v0, v8

    const-string v5, "AND"

    aput-object v5, v0, v9

    const-string v5, "ANY"

    aput-object v5, v0, v10

    const-string v5, "ARE"

    aput-object v5, v0, v11

    const-string v5, "AS"

    aput-object v5, v0, v12

    const-string v5, "ASC"

    aput-object v5, v0, v13

    const-string v5, "ASSERTION"

    aput-object v5, v0, v14

    const-string v5, "AT"

    aput-object v5, v0, v15

    const-string v5, "AUTHORIZATION"

    aput-object v5, v0, v16

    const/16 v5, 0xe

    const-string v17, "AVG"

    aput-object v17, v0, v5

    const/16 v5, 0xf

    const-string v17, "BEGIN"

    aput-object v17, v0, v5

    const/16 v5, 0x10

    const-string v17, "BETWEEN"

    aput-object v17, v0, v5

    const/16 v5, 0x11

    const-string v17, "BIT"

    aput-object v17, v0, v5

    const/16 v5, 0x12

    const-string v17, "BIT_LENGTH"

    aput-object v17, v0, v5

    const/16 v5, 0x13

    const-string v17, "BOTH"

    aput-object v17, v0, v5

    const/16 v5, 0x14

    const-string v17, "BY"

    aput-object v17, v0, v5

    const/16 v5, 0x15

    const-string v17, "CASCADE"

    aput-object v17, v0, v5

    const/16 v5, 0x16

    const-string v17, "CASCADED"

    aput-object v17, v0, v5

    const/16 v5, 0x17

    const-string v17, "CASE"

    aput-object v17, v0, v5

    const/16 v5, 0x18

    const-string v17, "CAST"

    aput-object v17, v0, v5

    const/16 v5, 0x19

    const-string v17, "CATALOG"

    aput-object v17, v0, v5

    const/16 v5, 0x1a

    const-string v17, "CHAR"

    aput-object v17, v0, v5

    const/16 v5, 0x1b

    const-string v17, "CHARACTER"

    aput-object v17, v0, v5

    const/16 v5, 0x1c

    const-string v17, "CHARACTER_LENGTH"

    aput-object v17, v0, v5

    const/16 v5, 0x1d

    const-string v17, "CHAR_LENGTH"

    aput-object v17, v0, v5

    const/16 v5, 0x1e

    const-string v17, "CHECK"

    aput-object v17, v0, v5

    const/16 v5, 0x1f

    const-string v17, "CLOSE"

    aput-object v17, v0, v5

    const/16 v5, 0x20

    const-string v17, "COALESCE"

    aput-object v17, v0, v5

    const/16 v5, 0x21

    const-string v17, "COLLATE"

    aput-object v17, v0, v5

    const/16 v5, 0x22

    const-string v17, "COLLATION"

    aput-object v17, v0, v5

    const/16 v5, 0x23

    const-string v17, "COLUMN"

    aput-object v17, v0, v5

    const/16 v5, 0x24

    const-string v17, "COMMIT"

    aput-object v17, v0, v5

    const/16 v5, 0x25

    const-string v17, "CONNECT"

    aput-object v17, v0, v5

    const/16 v5, 0x26

    const-string v17, "CONNECTION"

    aput-object v17, v0, v5

    const/16 v5, 0x27

    const-string v17, "CONSTRAINT"

    aput-object v17, v0, v5

    const/16 v5, 0x28

    const-string v17, "CONSTRAINTS"

    aput-object v17, v0, v5

    const/16 v5, 0x29

    const-string v17, "CONTINUE"

    aput-object v17, v0, v5

    const/16 v5, 0x2a

    const-string v17, "CONVERT"

    aput-object v17, v0, v5

    const/16 v5, 0x2b

    const-string v17, "CORRESPONDING"

    aput-object v17, v0, v5

    const/16 v5, 0x2c

    const-string v17, "COUNT"

    aput-object v17, v0, v5

    const/16 v5, 0x2d

    const-string v17, "CREATE"

    aput-object v17, v0, v5

    const/16 v5, 0x2e

    const-string v17, "CROSS"

    aput-object v17, v0, v5

    const/16 v5, 0x2f

    const-string v17, "CURRENT"

    aput-object v17, v0, v5

    const/16 v5, 0x30

    const-string v17, "CURRENT_DATE"

    aput-object v17, v0, v5

    const/16 v5, 0x31

    const-string v17, "CURRENT_TIME"

    aput-object v17, v0, v5

    const/16 v5, 0x32

    const-string v17, "CURRENT_TIMESTAMP"

    aput-object v17, v0, v5

    const/16 v5, 0x33

    const-string v17, "CURRENT_USER"

    aput-object v17, v0, v5

    const/16 v5, 0x34

    const-string v17, "CURSOR"

    aput-object v17, v0, v5

    const/16 v5, 0x35

    const-string v17, "DATE"

    aput-object v17, v0, v5

    const/16 v5, 0x36

    const-string v17, "DAY"

    aput-object v17, v0, v5

    const/16 v5, 0x37

    const-string v17, "DEALLOCATE"

    aput-object v17, v0, v5

    const/16 v5, 0x38

    const-string v17, "DEC"

    aput-object v17, v0, v5

    const/16 v5, 0x39

    const-string v17, "DECIMAL"

    aput-object v17, v0, v5

    const/16 v5, 0x3a

    const-string v17, "DECLARE"

    aput-object v17, v0, v5

    const/16 v5, 0x3b

    const-string v17, "DEFAULT"

    aput-object v17, v0, v5

    const/16 v5, 0x3c

    const-string v17, "DEFERRABLE"

    aput-object v17, v0, v5

    const/16 v5, 0x3d

    const-string v17, "DEFERRED"

    aput-object v17, v0, v5

    const/16 v5, 0x3e

    const-string v17, "DELETE"

    aput-object v17, v0, v5

    const/16 v5, 0x3f

    const-string v17, "DESC"

    aput-object v17, v0, v5

    const/16 v5, 0x40

    const-string v17, "DESCRIBE"

    aput-object v17, v0, v5

    const/16 v5, 0x41

    const-string v17, "DESCRIPTOR"

    aput-object v17, v0, v5

    const/16 v5, 0x42

    const-string v17, "DIAGNOSTICS"

    aput-object v17, v0, v5

    const/16 v5, 0x43

    const-string v17, "DISCONNECT"

    aput-object v17, v0, v5

    const/16 v5, 0x44

    const-string v17, "DISTINCT"

    aput-object v17, v0, v5

    const/16 v5, 0x45

    const-string v17, "DOMAIN"

    aput-object v17, v0, v5

    const/16 v5, 0x46

    const-string v17, "DOUBLE"

    aput-object v17, v0, v5

    const/16 v5, 0x47

    const-string v17, "DROP"

    aput-object v17, v0, v5

    const/16 v5, 0x48

    const-string v17, "ELSE"

    aput-object v17, v0, v5

    const/16 v5, 0x49

    const-string v17, "END"

    aput-object v17, v0, v5

    const/16 v5, 0x4a

    const-string v17, "END-EXEC"

    aput-object v17, v0, v5

    const/16 v5, 0x4b

    const-string v17, "ESCAPE"

    aput-object v17, v0, v5

    const/16 v5, 0x4c

    const-string v17, "EXCEPT"

    aput-object v17, v0, v5

    const/16 v5, 0x4d

    const-string v17, "EXCEPTION"

    aput-object v17, v0, v5

    const/16 v5, 0x4e

    const-string v17, "EXEC"

    aput-object v17, v0, v5

    const/16 v5, 0x4f

    const-string v17, "EXECUTE"

    aput-object v17, v0, v5

    const/16 v5, 0x50

    const-string v17, "EXISTS"

    aput-object v17, v0, v5

    const/16 v5, 0x51

    const-string v17, "EXTERNAL"

    aput-object v17, v0, v5

    const/16 v5, 0x52

    const-string v17, "EXTRACT"

    aput-object v17, v0, v5

    const/16 v5, 0x53

    const-string v17, "FALSE"

    aput-object v17, v0, v5

    const/16 v5, 0x54

    const-string v17, "FETCH"

    aput-object v17, v0, v5

    const/16 v5, 0x55

    const-string v17, "FIRST"

    aput-object v17, v0, v5

    const/16 v5, 0x56

    const-string v17, "FLOAT"

    aput-object v17, v0, v5

    const/16 v5, 0x57

    const-string v17, "FOR"

    aput-object v17, v0, v5

    const/16 v5, 0x58

    const-string v17, "FOREIGN"

    aput-object v17, v0, v5

    const/16 v5, 0x59

    const-string v17, "FOUND"

    aput-object v17, v0, v5

    const/16 v5, 0x5a

    const-string v17, "FROM"

    aput-object v17, v0, v5

    const/16 v5, 0x5b

    const-string v17, "FULL"

    aput-object v17, v0, v5

    const/16 v5, 0x5c

    const-string v17, "GET"

    aput-object v17, v0, v5

    const/16 v5, 0x5d

    const-string v17, "GLOBAL"

    aput-object v17, v0, v5

    const/16 v5, 0x5e

    const-string v17, "GO"

    aput-object v17, v0, v5

    const/16 v5, 0x5f

    const-string v17, "GOTO"

    aput-object v17, v0, v5

    const/16 v5, 0x60

    const-string v17, "GRANT"

    aput-object v17, v0, v5

    const/16 v5, 0x61

    const-string v17, "GROUP"

    aput-object v17, v0, v5

    const/16 v5, 0x62

    const-string v17, "HAVING"

    aput-object v17, v0, v5

    const/16 v5, 0x63

    const-string v17, "HOUR"

    aput-object v17, v0, v5

    const/16 v5, 0x64

    const-string v17, "IDENTITY"

    aput-object v17, v0, v5

    const/16 v5, 0x65

    const-string v17, "IMMEDIATE"

    aput-object v17, v0, v5

    const/16 v5, 0x66

    const-string v17, "IN"

    aput-object v17, v0, v5

    const/16 v5, 0x67

    const-string v17, "INDICATOR"

    aput-object v17, v0, v5

    const/16 v5, 0x68

    const-string v17, "INITIALLY"

    aput-object v17, v0, v5

    const/16 v5, 0x69

    const-string v17, "INNER"

    aput-object v17, v0, v5

    const/16 v5, 0x6a

    const-string v17, "INPUT"

    aput-object v17, v0, v5

    const/16 v5, 0x6b

    const-string v17, "INSENSITIVE"

    aput-object v17, v0, v5

    const/16 v5, 0x6c

    const-string v17, "INSERT"

    aput-object v17, v0, v5

    const/16 v5, 0x6d

    const-string v17, "INT"

    aput-object v17, v0, v5

    const/16 v5, 0x6e

    const-string v17, "INTEGER"

    aput-object v17, v0, v5

    const/16 v5, 0x6f

    const-string v17, "INTERSECT"

    aput-object v17, v0, v5

    const/16 v5, 0x70

    const-string v17, "INTERVAL"

    aput-object v17, v0, v5

    const/16 v5, 0x71

    const-string v17, "INTO"

    aput-object v17, v0, v5

    const/16 v5, 0x72

    const-string v17, "IS"

    aput-object v17, v0, v5

    const/16 v5, 0x73

    const-string v17, "ISOLATION"

    aput-object v17, v0, v5

    const/16 v5, 0x74

    const-string v17, "JOIN"

    aput-object v17, v0, v5

    const/16 v5, 0x75

    const-string v17, "KEY"

    aput-object v17, v0, v5

    const/16 v5, 0x76

    const-string v17, "LANGUAGE"

    aput-object v17, v0, v5

    const/16 v5, 0x77

    const-string v17, "LAST"

    aput-object v17, v0, v5

    const/16 v5, 0x78

    const-string v17, "LEADING"

    aput-object v17, v0, v5

    const/16 v5, 0x79

    const-string v17, "LEFT"

    aput-object v17, v0, v5

    const/16 v5, 0x7a

    const-string v17, "LEVEL"

    aput-object v17, v0, v5

    const/16 v5, 0x7b

    const-string v17, "LIKE"

    aput-object v17, v0, v5

    const/16 v5, 0x7c

    const-string v17, "LOCAL"

    aput-object v17, v0, v5

    const/16 v5, 0x7d

    const-string v17, "LOWER"

    aput-object v17, v0, v5

    const/16 v5, 0x7e

    const-string v17, "MATCH"

    aput-object v17, v0, v5

    const/16 v5, 0x7f

    const-string v17, "MAX"

    aput-object v17, v0, v5

    const/16 v5, 0x80

    const-string v17, "MIN"

    aput-object v17, v0, v5

    const/16 v5, 0x81

    const-string v17, "MINUTE"

    aput-object v17, v0, v5

    const/16 v5, 0x82

    const-string v17, "MODULE"

    aput-object v17, v0, v5

    const/16 v5, 0x83

    const-string v17, "MONTH"

    aput-object v17, v0, v5

    const/16 v5, 0x84

    const-string v17, "NAMES"

    aput-object v17, v0, v5

    const/16 v5, 0x85

    const-string v17, "NATIONAL"

    aput-object v17, v0, v5

    const/16 v5, 0x86

    const-string v17, "NATURAL"

    aput-object v17, v0, v5

    const/16 v5, 0x87

    const-string v17, "NCHAR"

    aput-object v17, v0, v5

    const/16 v5, 0x88

    const-string v17, "NEXT"

    aput-object v17, v0, v5

    const/16 v5, 0x89

    const-string v17, "NO"

    aput-object v17, v0, v5

    const/16 v5, 0x8a

    const-string v17, "NOT"

    aput-object v17, v0, v5

    const/16 v5, 0x8b

    const-string v17, "NULL"

    aput-object v17, v0, v5

    const/16 v5, 0x8c

    const-string v17, "NULLIF"

    aput-object v17, v0, v5

    const/16 v5, 0x8d

    const-string v17, "NUMERIC"

    aput-object v17, v0, v5

    const/16 v5, 0x8e

    const-string v17, "OCTET_LENGTH"

    aput-object v17, v0, v5

    const/16 v5, 0x8f

    const-string v17, "OF"

    aput-object v17, v0, v5

    const/16 v5, 0x90

    const-string v17, "ON"

    aput-object v17, v0, v5

    const/16 v5, 0x91

    const-string v17, "ONLY"

    aput-object v17, v0, v5

    const/16 v5, 0x92

    const-string v17, "OPEN"

    aput-object v17, v0, v5

    const/16 v5, 0x93

    const-string v17, "OPTION"

    aput-object v17, v0, v5

    const/16 v5, 0x94

    const-string v17, "OR"

    aput-object v17, v0, v5

    const/16 v5, 0x95

    const-string v17, "ORDER"

    aput-object v17, v0, v5

    const/16 v5, 0x96

    const-string v17, "OUTER"

    aput-object v17, v0, v5

    const/16 v5, 0x97

    const-string v17, "OUTPUT"

    aput-object v17, v0, v5

    const/16 v5, 0x98

    const-string v17, "OVERLAPS"

    aput-object v17, v0, v5

    const/16 v5, 0x99

    const-string v17, "PAD"

    aput-object v17, v0, v5

    const/16 v5, 0x9a

    const-string v17, "PARTIAL"

    aput-object v17, v0, v5

    const/16 v5, 0x9b

    const-string v17, "POSITION"

    aput-object v17, v0, v5

    const/16 v5, 0x9c

    const-string v17, "PRECISION"

    aput-object v17, v0, v5

    const/16 v5, 0x9d

    const-string v17, "PREPARE"

    aput-object v17, v0, v5

    const/16 v5, 0x9e

    const-string v17, "PRESERVE"

    aput-object v17, v0, v5

    const/16 v5, 0x9f

    const-string v17, "PRIMARY"

    aput-object v17, v0, v5

    const/16 v5, 0xa0

    const-string v17, "PRIOR"

    aput-object v17, v0, v5

    const/16 v5, 0xa1

    const-string v17, "PRIVILEGES"

    aput-object v17, v0, v5

    const/16 v5, 0xa2

    const-string v17, "PROCEDURE"

    aput-object v17, v0, v5

    const/16 v5, 0xa3

    const-string v17, "PUBLIC"

    aput-object v17, v0, v5

    const/16 v5, 0xa4

    const-string v17, "READ"

    aput-object v17, v0, v5

    const/16 v5, 0xa5

    const-string v17, "REAL"

    aput-object v17, v0, v5

    const/16 v5, 0xa6

    const-string v17, "REFERENCES"

    aput-object v17, v0, v5

    const/16 v5, 0xa7

    const-string v17, "RELATIVE"

    aput-object v17, v0, v5

    const/16 v5, 0xa8

    const-string v17, "RESTRICT"

    aput-object v17, v0, v5

    const/16 v5, 0xa9

    const-string v17, "REVOKE"

    aput-object v17, v0, v5

    const/16 v5, 0xaa

    const-string v17, "RIGHT"

    aput-object v17, v0, v5

    const/16 v5, 0xab

    const-string v17, "ROLLBACK"

    aput-object v17, v0, v5

    const/16 v5, 0xac

    const-string v17, "ROWS"

    aput-object v17, v0, v5

    const/16 v5, 0xad

    const-string v17, "SCHEMA"

    aput-object v17, v0, v5

    const/16 v5, 0xae

    const-string v17, "SCROLL"

    aput-object v17, v0, v5

    const/16 v5, 0xaf

    const-string v17, "SECOND"

    aput-object v17, v0, v5

    const/16 v5, 0xb0

    const-string v17, "SECTION"

    aput-object v17, v0, v5

    const/16 v5, 0xb1

    const-string v17, "SELECT"

    aput-object v17, v0, v5

    const/16 v5, 0xb2

    const-string v17, "SESSION"

    aput-object v17, v0, v5

    const/16 v5, 0xb3

    const-string v17, "SESSION_USER"

    aput-object v17, v0, v5

    const/16 v5, 0xb4

    const-string v17, "SET"

    aput-object v17, v0, v5

    const/16 v5, 0xb5

    const-string v17, "SIZE"

    aput-object v17, v0, v5

    const/16 v5, 0xb6

    const-string v17, "SMALLINT"

    aput-object v17, v0, v5

    const/16 v5, 0xb7

    const-string v17, "SOME"

    aput-object v17, v0, v5

    const/16 v5, 0xb8

    const-string v17, "SPACE"

    aput-object v17, v0, v5

    const/16 v5, 0xb9

    const-string v17, "SQL"

    aput-object v17, v0, v5

    const/16 v5, 0xba

    const-string v17, "SQLCODE"

    aput-object v17, v0, v5

    const/16 v5, 0xbb

    const-string v17, "SQLERROR"

    aput-object v17, v0, v5

    const/16 v5, 0xbc

    const-string v17, "SQLSTATE"

    aput-object v17, v0, v5

    const/16 v5, 0xbd

    const-string v17, "SUBSTRING"

    aput-object v17, v0, v5

    const/16 v5, 0xbe

    const-string v17, "SUM"

    aput-object v17, v0, v5

    const/16 v5, 0xbf

    const-string v17, "SYSTEM_USER"

    aput-object v17, v0, v5

    const/16 v5, 0xc0

    const-string v17, "TABLE"

    aput-object v17, v0, v5

    const/16 v5, 0xc1

    const-string v17, "TEMPORARY"

    aput-object v17, v0, v5

    const/16 v5, 0xc2

    const-string v17, "THEN"

    aput-object v17, v0, v5

    const/16 v5, 0xc3

    const-string v17, "TIME"

    aput-object v17, v0, v5

    const/16 v5, 0xc4

    const-string v17, "TIMESTAMP"

    aput-object v17, v0, v5

    const/16 v5, 0xc5

    const-string v17, "TIMEZONE_HOUR"

    aput-object v17, v0, v5

    const/16 v5, 0xc6

    const-string v17, "TIMEZONE_MINUTE"

    aput-object v17, v0, v5

    const/16 v5, 0xc7

    const-string v17, "TO"

    aput-object v17, v0, v5

    const/16 v5, 0xc8

    const-string v17, "TRAILING"

    aput-object v17, v0, v5

    const/16 v5, 0xc9

    const-string v17, "TRANSACTION"

    aput-object v17, v0, v5

    const/16 v5, 0xca

    const-string v17, "TRANSLATE"

    aput-object v17, v0, v5

    const/16 v5, 0xcb

    const-string v17, "TRANSLATION"

    aput-object v17, v0, v5

    const/16 v5, 0xcc

    const-string v17, "TRIM"

    aput-object v17, v0, v5

    const/16 v5, 0xcd

    const-string v17, "TRUE"

    aput-object v17, v0, v5

    const/16 v5, 0xce

    const-string v17, "UNION"

    aput-object v17, v0, v5

    const/16 v5, 0xcf

    const-string v17, "UNIQUE"

    aput-object v17, v0, v5

    const/16 v5, 0xd0

    const-string v17, "UNKNOWN"

    aput-object v17, v0, v5

    const/16 v5, 0xd1

    const-string v17, "UPDATE"

    aput-object v17, v0, v5

    const/16 v5, 0xd2

    const-string v17, "UPPER"

    aput-object v17, v0, v5

    const/16 v5, 0xd3

    const-string v17, "USAGE"

    aput-object v17, v0, v5

    const/16 v5, 0xd4

    const-string v17, "USER"

    aput-object v17, v0, v5

    const/16 v5, 0xd5

    const-string v17, "USING"

    aput-object v17, v0, v5

    const/16 v5, 0xd6

    const-string v17, "VALUE"

    aput-object v17, v0, v5

    const/16 v5, 0xd7

    const-string v17, "VALUES"

    aput-object v17, v0, v5

    const/16 v5, 0xd8

    const-string v17, "VARCHAR"

    aput-object v17, v0, v5

    const/16 v5, 0xd9

    const-string v17, "VARYING"

    aput-object v17, v0, v5

    const/16 v5, 0xda

    const-string v17, "VIEW"

    aput-object v17, v0, v5

    const/16 v5, 0xdb

    const-string v17, "WHEN"

    aput-object v17, v0, v5

    const/16 v5, 0xdc

    const-string v17, "WHENEVER"

    aput-object v17, v0, v5

    const/16 v5, 0xdd

    const-string v17, "WHERE"

    aput-object v17, v0, v5

    const/16 v5, 0xde

    const-string v17, "WITH"

    aput-object v17, v0, v5

    const/16 v5, 0xdf

    const-string v17, "WORK"

    aput-object v17, v0, v5

    const/16 v5, 0xe0

    const-string v17, "WRITE"

    aput-object v17, v0, v5

    const/16 v5, 0xe1

    const-string v17, "YEAR"

    aput-object v17, v0, v5

    const/16 v5, 0xe2

    const-string v17, "ZONE"

    aput-object v17, v0, v5

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->SQL92_KEYWORDS:[Ljava/lang/String;

    const/16 v0, 0x120

    .line 725
    new-array v0, v0, [Ljava/lang/String;

    const-string v5, "ABS"

    aput-object v5, v0, v4

    const-string v4, "ALL"

    aput-object v4, v0, v3

    const-string v3, "ALLOCATE"

    aput-object v3, v0, v2

    const-string v2, "ALTER"

    aput-object v2, v0, v6

    const-string v2, "AND"

    aput-object v2, v0, v7

    const-string v2, "ANY"

    aput-object v2, v0, v8

    const-string v2, "ARE"

    aput-object v2, v0, v9

    const-string v2, "ARRAY"

    aput-object v2, v0, v10

    const-string v2, "AS"

    aput-object v2, v0, v11

    const-string v2, "ASENSITIVE"

    aput-object v2, v0, v12

    const-string v2, "ASYMMETRIC"

    aput-object v2, v0, v13

    const-string v2, "AT"

    aput-object v2, v0, v14

    const-string v2, "ATOMIC"

    aput-object v2, v0, v15

    const-string v2, "AUTHORIZATION"

    aput-object v2, v0, v16

    const/16 v2, 0xe

    const-string v3, "AVG"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "BEGIN"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "BETWEEN"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "BIGINT"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "BINARY"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "BLOB"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "BOOLEAN"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "BOTH"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "BY"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "CALL"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "CALLED"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "CARDINALITY"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "CASCADED"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "CASE"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "CAST"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "CEIL"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "CEILING"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "CHAR"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "CHARACTER"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "CHARACTER_LENGTH"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "CHAR_LENGTH"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "CHECK"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "CLOB"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "CLOSE"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "COALESCE"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "COLLATE"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "COLLECT"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "COLUMN"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "COMMIT"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "CONDITION"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "CONNECT"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "CONSTRAINT"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string v3, "CONVERT"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "CORR"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "CORRESPONDING"

    aput-object v3, v0, v2

    const/16 v2, 0x31

    const-string v3, "COUNT"

    aput-object v3, v0, v2

    const/16 v2, 0x32

    const-string v3, "COVAR_POP"

    aput-object v3, v0, v2

    const/16 v2, 0x33

    const-string v3, "COVAR_SAMP"

    aput-object v3, v0, v2

    const/16 v2, 0x34

    const-string v3, "CREATE"

    aput-object v3, v0, v2

    const/16 v2, 0x35

    const-string v3, "CROSS"

    aput-object v3, v0, v2

    const/16 v2, 0x36

    const-string v3, "CUBE"

    aput-object v3, v0, v2

    const/16 v2, 0x37

    const-string v3, "CUME_DIST"

    aput-object v3, v0, v2

    const/16 v2, 0x38

    const-string v3, "CURRENT"

    aput-object v3, v0, v2

    const/16 v2, 0x39

    const-string v3, "CURRENT_DATE"

    aput-object v3, v0, v2

    const/16 v2, 0x3a

    const-string v3, "CURRENT_DEFAULT_TRANSFORM_GROUP"

    aput-object v3, v0, v2

    const/16 v2, 0x3b

    const-string v3, "CURRENT_PATH"

    aput-object v3, v0, v2

    const/16 v2, 0x3c

    const-string v3, "CURRENT_ROLE"

    aput-object v3, v0, v2

    const/16 v2, 0x3d

    const-string v3, "CURRENT_TIME"

    aput-object v3, v0, v2

    const/16 v2, 0x3e

    const-string v3, "CURRENT_TIMESTAMP"

    aput-object v3, v0, v2

    const/16 v2, 0x3f

    const-string v3, "CURRENT_TRANSFORM_GROUP_FOR_TYPE"

    aput-object v3, v0, v2

    const/16 v2, 0x40

    const-string v3, "CURRENT_USER"

    aput-object v3, v0, v2

    const/16 v2, 0x41

    const-string v3, "CURSOR"

    aput-object v3, v0, v2

    const/16 v2, 0x42

    const-string v3, "CYCLE"

    aput-object v3, v0, v2

    const/16 v2, 0x43

    const-string v3, "DATE"

    aput-object v3, v0, v2

    const/16 v2, 0x44

    const-string v3, "DAY"

    aput-object v3, v0, v2

    const/16 v2, 0x45

    const-string v3, "DEALLOCATE"

    aput-object v3, v0, v2

    const/16 v2, 0x46

    const-string v3, "DEC"

    aput-object v3, v0, v2

    const/16 v2, 0x47

    const-string v3, "DECIMAL"

    aput-object v3, v0, v2

    const/16 v2, 0x48

    const-string v3, "DECLARE"

    aput-object v3, v0, v2

    const/16 v2, 0x49

    const-string v3, "DEFAULT"

    aput-object v3, v0, v2

    const/16 v2, 0x4a

    const-string v3, "DELETE"

    aput-object v3, v0, v2

    const/16 v2, 0x4b

    const-string v3, "DENSE_RANK"

    aput-object v3, v0, v2

    const/16 v2, 0x4c

    const-string v3, "DEREF"

    aput-object v3, v0, v2

    const/16 v2, 0x4d

    const-string v3, "DESCRIBE"

    aput-object v3, v0, v2

    const/16 v2, 0x4e

    const-string v3, "DETERMINISTIC"

    aput-object v3, v0, v2

    const/16 v2, 0x4f

    const-string v3, "DISCONNECT"

    aput-object v3, v0, v2

    const/16 v2, 0x50

    const-string v3, "DISTINCT"

    aput-object v3, v0, v2

    const/16 v2, 0x51

    const-string v3, "DOUBLE"

    aput-object v3, v0, v2

    const/16 v2, 0x52

    const-string v3, "DROP"

    aput-object v3, v0, v2

    const/16 v2, 0x53

    const-string v3, "DYNAMIC"

    aput-object v3, v0, v2

    const/16 v2, 0x54

    const-string v3, "EACH"

    aput-object v3, v0, v2

    const/16 v2, 0x55

    const-string v3, "ELEMENT"

    aput-object v3, v0, v2

    const/16 v2, 0x56

    const-string v3, "ELSE"

    aput-object v3, v0, v2

    const/16 v2, 0x57

    const-string v3, "END"

    aput-object v3, v0, v2

    const/16 v2, 0x58

    const-string v3, "END-EXEC"

    aput-object v3, v0, v2

    const/16 v2, 0x59

    const-string v3, "ESCAPE"

    aput-object v3, v0, v2

    const/16 v2, 0x5a

    const-string v3, "EVERY"

    aput-object v3, v0, v2

    const/16 v2, 0x5b

    const-string v3, "EXCEPT"

    aput-object v3, v0, v2

    const/16 v2, 0x5c

    const-string v3, "EXEC"

    aput-object v3, v0, v2

    const/16 v2, 0x5d

    const-string v3, "EXECUTE"

    aput-object v3, v0, v2

    const/16 v2, 0x5e

    const-string v3, "EXISTS"

    aput-object v3, v0, v2

    const/16 v2, 0x5f

    const-string v3, "EXP"

    aput-object v3, v0, v2

    const/16 v2, 0x60

    const-string v3, "EXTERNAL"

    aput-object v3, v0, v2

    const/16 v2, 0x61

    const-string v3, "EXTRACT"

    aput-object v3, v0, v2

    const/16 v2, 0x62

    const-string v3, "FALSE"

    aput-object v3, v0, v2

    const/16 v2, 0x63

    const-string v3, "FETCH"

    aput-object v3, v0, v2

    const/16 v2, 0x64

    const-string v3, "FILTER"

    aput-object v3, v0, v2

    const/16 v2, 0x65

    const-string v3, "FLOAT"

    aput-object v3, v0, v2

    const/16 v2, 0x66

    const-string v3, "FLOOR"

    aput-object v3, v0, v2

    const/16 v2, 0x67

    const-string v3, "FOR"

    aput-object v3, v0, v2

    const/16 v2, 0x68

    const-string v3, "FOREIGN"

    aput-object v3, v0, v2

    const/16 v2, 0x69

    const-string v3, "FREE"

    aput-object v3, v0, v2

    const/16 v2, 0x6a

    const-string v3, "FROM"

    aput-object v3, v0, v2

    const/16 v2, 0x6b

    const-string v3, "FULL"

    aput-object v3, v0, v2

    const/16 v2, 0x6c

    const-string v3, "FUNCTION"

    aput-object v3, v0, v2

    const/16 v2, 0x6d

    const-string v3, "FUSION"

    aput-object v3, v0, v2

    const/16 v2, 0x6e

    const-string v3, "GET"

    aput-object v3, v0, v2

    const/16 v2, 0x6f

    const-string v3, "GLOBAL"

    aput-object v3, v0, v2

    const/16 v2, 0x70

    const-string v3, "GRANT"

    aput-object v3, v0, v2

    const/16 v2, 0x71

    const-string v3, "GROUP"

    aput-object v3, v0, v2

    const/16 v2, 0x72

    const-string v3, "GROUPING"

    aput-object v3, v0, v2

    const/16 v2, 0x73

    const-string v3, "HAVING"

    aput-object v3, v0, v2

    const/16 v2, 0x74

    const-string v3, "HOLD"

    aput-object v3, v0, v2

    const/16 v2, 0x75

    const-string v3, "HOUR"

    aput-object v3, v0, v2

    const/16 v2, 0x76

    const-string v3, "IDENTITY"

    aput-object v3, v0, v2

    const/16 v2, 0x77

    const-string v3, "IN"

    aput-object v3, v0, v2

    const/16 v2, 0x78

    const-string v3, "INDICATOR"

    aput-object v3, v0, v2

    const/16 v2, 0x79

    const-string v3, "INNER"

    aput-object v3, v0, v2

    const/16 v2, 0x7a

    const-string v3, "INOUT"

    aput-object v3, v0, v2

    const/16 v2, 0x7b

    const-string v3, "INSENSITIVE"

    aput-object v3, v0, v2

    const/16 v2, 0x7c

    const-string v3, "INSERT"

    aput-object v3, v0, v2

    const/16 v2, 0x7d

    const-string v3, "INT"

    aput-object v3, v0, v2

    const/16 v2, 0x7e

    const-string v3, "INTEGER"

    aput-object v3, v0, v2

    const/16 v2, 0x7f

    const-string v3, "INTERSECT"

    aput-object v3, v0, v2

    const/16 v2, 0x80

    const-string v3, "INTERSECTION"

    aput-object v3, v0, v2

    const/16 v2, 0x81

    const-string v3, "INTERVAL"

    aput-object v3, v0, v2

    const/16 v2, 0x82

    const-string v3, "INTO"

    aput-object v3, v0, v2

    const/16 v2, 0x83

    const-string v3, "IS"

    aput-object v3, v0, v2

    const/16 v2, 0x84

    const-string v3, "JOIN"

    aput-object v3, v0, v2

    const/16 v2, 0x85

    const-string v3, "LANGUAGE"

    aput-object v3, v0, v2

    const/16 v2, 0x86

    const-string v3, "LARGE"

    aput-object v3, v0, v2

    const/16 v2, 0x87

    const-string v3, "LATERAL"

    aput-object v3, v0, v2

    const/16 v2, 0x88

    const-string v3, "LEADING"

    aput-object v3, v0, v2

    const/16 v2, 0x89

    const-string v3, "LEFT"

    aput-object v3, v0, v2

    const/16 v2, 0x8a

    const-string v3, "LIKE"

    aput-object v3, v0, v2

    const/16 v2, 0x8b

    const-string v3, "LN"

    aput-object v3, v0, v2

    const/16 v2, 0x8c

    const-string v3, "LOCAL"

    aput-object v3, v0, v2

    const/16 v2, 0x8d

    const-string v3, "LOCALTIME"

    aput-object v3, v0, v2

    const/16 v2, 0x8e

    const-string v3, "LOCALTIMESTAMP"

    aput-object v3, v0, v2

    const/16 v2, 0x8f

    const-string v3, "LOWER"

    aput-object v3, v0, v2

    const/16 v2, 0x90

    const-string v3, "MATCH"

    aput-object v3, v0, v2

    const/16 v2, 0x91

    const-string v3, "MAX"

    aput-object v3, v0, v2

    const/16 v2, 0x92

    const-string v3, "MEMBER"

    aput-object v3, v0, v2

    const/16 v2, 0x93

    const-string v3, "MERGE"

    aput-object v3, v0, v2

    const/16 v2, 0x94

    const-string v3, "METHOD"

    aput-object v3, v0, v2

    const/16 v2, 0x95

    const-string v3, "MIN"

    aput-object v3, v0, v2

    const/16 v2, 0x96

    const-string v3, "MINUTE"

    aput-object v3, v0, v2

    const/16 v2, 0x97

    const-string v3, "MOD"

    aput-object v3, v0, v2

    const/16 v2, 0x98

    const-string v3, "MODIFIES"

    aput-object v3, v0, v2

    const/16 v2, 0x99

    const-string v3, "MODULE"

    aput-object v3, v0, v2

    const/16 v2, 0x9a

    const-string v3, "MONTH"

    aput-object v3, v0, v2

    const/16 v2, 0x9b

    const-string v3, "MULTISET"

    aput-object v3, v0, v2

    const/16 v2, 0x9c

    const-string v3, "NATIONAL"

    aput-object v3, v0, v2

    const/16 v2, 0x9d

    const-string v3, "NATURAL"

    aput-object v3, v0, v2

    const/16 v2, 0x9e

    const-string v3, "NCHAR"

    aput-object v3, v0, v2

    const/16 v2, 0x9f

    const-string v3, "NCLOB"

    aput-object v3, v0, v2

    const/16 v2, 0xa0

    const-string v3, "NEW"

    aput-object v3, v0, v2

    const/16 v2, 0xa1

    const-string v3, "NO"

    aput-object v3, v0, v2

    const/16 v2, 0xa2

    const-string v3, "NONE"

    aput-object v3, v0, v2

    const/16 v2, 0xa3

    const-string v3, "NORMALIZE"

    aput-object v3, v0, v2

    const/16 v2, 0xa4

    const-string v3, "NOT"

    aput-object v3, v0, v2

    const/16 v2, 0xa5

    const-string v3, "NULL"

    aput-object v3, v0, v2

    const/16 v2, 0xa6

    const-string v3, "NULLIF"

    aput-object v3, v0, v2

    const/16 v2, 0xa7

    const-string v3, "NUMERIC"

    aput-object v3, v0, v2

    const/16 v2, 0xa8

    const-string v3, "OCTET_LENGTH"

    aput-object v3, v0, v2

    const/16 v2, 0xa9

    const-string v3, "OF"

    aput-object v3, v0, v2

    const/16 v2, 0xaa

    const-string v3, "OLD"

    aput-object v3, v0, v2

    const/16 v2, 0xab

    const-string v3, "ON"

    aput-object v3, v0, v2

    const/16 v2, 0xac

    const-string v3, "ONLY"

    aput-object v3, v0, v2

    const/16 v2, 0xad

    const-string v3, "OPEN"

    aput-object v3, v0, v2

    const/16 v2, 0xae

    const-string v3, "OR"

    aput-object v3, v0, v2

    const/16 v2, 0xaf

    const-string v3, "ORDER"

    aput-object v3, v0, v2

    const/16 v2, 0xb0

    const-string v3, "OUT"

    aput-object v3, v0, v2

    const/16 v2, 0xb1

    const-string v3, "OUTER"

    aput-object v3, v0, v2

    const/16 v2, 0xb2

    const-string v3, "OVER"

    aput-object v3, v0, v2

    const/16 v2, 0xb3

    const-string v3, "OVERLAPS"

    aput-object v3, v0, v2

    const/16 v2, 0xb4

    const-string v3, "OVERLAY"

    aput-object v3, v0, v2

    const/16 v2, 0xb5

    const-string v3, "PARAMETER"

    aput-object v3, v0, v2

    const/16 v2, 0xb6

    const-string v3, "PARTITION"

    aput-object v3, v0, v2

    const/16 v2, 0xb7

    const-string v3, "PERCENTILE_CONT"

    aput-object v3, v0, v2

    const/16 v2, 0xb8

    const-string v3, "PERCENTILE_DISC"

    aput-object v3, v0, v2

    const/16 v2, 0xb9

    const-string v3, "PERCENT_RANK"

    aput-object v3, v0, v2

    const/16 v2, 0xba

    const-string v3, "POSITION"

    aput-object v3, v0, v2

    const/16 v2, 0xbb

    const-string v3, "POWER"

    aput-object v3, v0, v2

    const/16 v2, 0xbc

    const-string v3, "PRECISION"

    aput-object v3, v0, v2

    const/16 v2, 0xbd

    const-string v3, "PREPARE"

    aput-object v3, v0, v2

    const/16 v2, 0xbe

    const-string v3, "PRIMARY"

    aput-object v3, v0, v2

    const/16 v2, 0xbf

    const-string v3, "PROCEDURE"

    aput-object v3, v0, v2

    const/16 v2, 0xc0

    const-string v3, "RANGE"

    aput-object v3, v0, v2

    const/16 v2, 0xc1

    const-string v3, "RANK"

    aput-object v3, v0, v2

    const/16 v2, 0xc2

    const-string v3, "READS"

    aput-object v3, v0, v2

    const/16 v2, 0xc3

    const-string v3, "REAL"

    aput-object v3, v0, v2

    const/16 v2, 0xc4

    const-string v3, "RECURSIVE"

    aput-object v3, v0, v2

    const/16 v2, 0xc5

    const-string v3, "REF"

    aput-object v3, v0, v2

    const/16 v2, 0xc6

    const-string v3, "REFERENCES"

    aput-object v3, v0, v2

    const/16 v2, 0xc7

    const-string v3, "REFERENCING"

    aput-object v3, v0, v2

    const/16 v2, 0xc8

    const-string v3, "REGR_AVGX"

    aput-object v3, v0, v2

    const/16 v2, 0xc9

    const-string v3, "REGR_AVGY"

    aput-object v3, v0, v2

    const/16 v2, 0xca

    const-string v3, "REGR_COUNT"

    aput-object v3, v0, v2

    const/16 v2, 0xcb

    const-string v3, "REGR_INTERCEPT"

    aput-object v3, v0, v2

    const/16 v2, 0xcc

    const-string v3, "REGR_R2"

    aput-object v3, v0, v2

    const/16 v2, 0xcd

    const-string v3, "REGR_SLOPE"

    aput-object v3, v0, v2

    const/16 v2, 0xce

    const-string v3, "REGR_SXX"

    aput-object v3, v0, v2

    const/16 v2, 0xcf

    const-string v3, "REGR_SXY"

    aput-object v3, v0, v2

    const/16 v2, 0xd0

    const-string v3, "REGR_SYY"

    aput-object v3, v0, v2

    const/16 v2, 0xd1

    const-string v3, "RELEASE"

    aput-object v3, v0, v2

    const/16 v2, 0xd2

    const-string v3, "RESULT"

    aput-object v3, v0, v2

    const/16 v2, 0xd3

    const-string v3, "RETURN"

    aput-object v3, v0, v2

    const/16 v2, 0xd4

    const-string v3, "RETURNS"

    aput-object v3, v0, v2

    const/16 v2, 0xd5

    const-string v3, "REVOKE"

    aput-object v3, v0, v2

    const/16 v2, 0xd6

    const-string v3, "RIGHT"

    aput-object v3, v0, v2

    const/16 v2, 0xd7

    const-string v3, "ROLLBACK"

    aput-object v3, v0, v2

    const/16 v2, 0xd8

    const-string v3, "ROLLUP"

    aput-object v3, v0, v2

    const/16 v2, 0xd9

    const-string v3, "ROW"

    aput-object v3, v0, v2

    const/16 v2, 0xda

    const-string v3, "ROWS"

    aput-object v3, v0, v2

    const/16 v2, 0xdb

    const-string v3, "ROW_NUMBER"

    aput-object v3, v0, v2

    const/16 v2, 0xdc

    const-string v3, "SAVEPOINT"

    aput-object v3, v0, v2

    const/16 v2, 0xdd

    const-string v3, "SCOPE"

    aput-object v3, v0, v2

    const/16 v2, 0xde

    const-string v3, "SCROLL"

    aput-object v3, v0, v2

    const/16 v2, 0xdf

    const-string v3, "SEARCH"

    aput-object v3, v0, v2

    const/16 v2, 0xe0

    const-string v3, "SECOND"

    aput-object v3, v0, v2

    const/16 v2, 0xe1

    const-string v3, "SELECT"

    aput-object v3, v0, v2

    const/16 v2, 0xe2

    const-string v3, "SENSITIVE"

    aput-object v3, v0, v2

    const/16 v2, 0xe3

    const-string v3, "SESSION_USER"

    aput-object v3, v0, v2

    const/16 v2, 0xe4

    const-string v3, "SET"

    aput-object v3, v0, v2

    const/16 v2, 0xe5

    const-string v3, "SIMILAR"

    aput-object v3, v0, v2

    const/16 v2, 0xe6

    const-string v3, "SMALLINT"

    aput-object v3, v0, v2

    const/16 v2, 0xe7

    const-string v3, "SOME"

    aput-object v3, v0, v2

    const/16 v2, 0xe8

    const-string v3, "SPECIFIC"

    aput-object v3, v0, v2

    const/16 v2, 0xe9

    const-string v3, "SPECIFICTYPE"

    aput-object v3, v0, v2

    const/16 v2, 0xea

    const-string v3, "SQL"

    aput-object v3, v0, v2

    const/16 v2, 0xeb

    const-string v3, "SQLEXCEPTION"

    aput-object v3, v0, v2

    const/16 v2, 0xec

    const-string v3, "SQLSTATE"

    aput-object v3, v0, v2

    const/16 v2, 0xed

    const-string v3, "SQLWARNING"

    aput-object v3, v0, v2

    const/16 v2, 0xee

    const-string v3, "SQRT"

    aput-object v3, v0, v2

    const/16 v2, 0xef

    const-string v3, "START"

    aput-object v3, v0, v2

    const/16 v2, 0xf0

    const-string v3, "STATIC"

    aput-object v3, v0, v2

    const/16 v2, 0xf1

    const-string v3, "STDDEV_POP"

    aput-object v3, v0, v2

    const/16 v2, 0xf2

    const-string v3, "STDDEV_SAMP"

    aput-object v3, v0, v2

    const/16 v2, 0xf3

    const-string v3, "SUBMULTISET"

    aput-object v3, v0, v2

    const/16 v2, 0xf4

    const-string v3, "SUBSTRING"

    aput-object v3, v0, v2

    const/16 v2, 0xf5

    const-string v3, "SUM"

    aput-object v3, v0, v2

    const/16 v2, 0xf6

    const-string v3, "SYMMETRIC"

    aput-object v3, v0, v2

    const/16 v2, 0xf7

    const-string v3, "SYSTEM"

    aput-object v3, v0, v2

    const/16 v2, 0xf8

    const-string v3, "SYSTEM_USER"

    aput-object v3, v0, v2

    const/16 v2, 0xf9

    const-string v3, "TABLE"

    aput-object v3, v0, v2

    const/16 v2, 0xfa

    const-string v3, "TABLESAMPLE"

    aput-object v3, v0, v2

    const/16 v2, 0xfb

    const-string v3, "THEN"

    aput-object v3, v0, v2

    const/16 v2, 0xfc

    const-string v3, "TIME"

    aput-object v3, v0, v2

    const/16 v2, 0xfd

    const-string v3, "TIMESTAMP"

    aput-object v3, v0, v2

    const/16 v2, 0xfe

    const-string v3, "TIMEZONE_HOUR"

    aput-object v3, v0, v2

    const/16 v2, 0xff

    const-string v3, "TIMEZONE_MINUTE"

    aput-object v3, v0, v2

    const/16 v2, 0x100

    const-string v3, "TO"

    aput-object v3, v0, v2

    const/16 v2, 0x101

    const-string v3, "TRAILING"

    aput-object v3, v0, v2

    const/16 v2, 0x102

    const-string v3, "TRANSLATE"

    aput-object v3, v0, v2

    const/16 v2, 0x103

    const-string v3, "TRANSLATION"

    aput-object v3, v0, v2

    const/16 v2, 0x104

    const-string v3, "TREAT"

    aput-object v3, v0, v2

    const/16 v2, 0x105

    const-string v3, "TRIGGER"

    aput-object v3, v0, v2

    const/16 v2, 0x106

    const-string v3, "TRIM"

    aput-object v3, v0, v2

    const/16 v2, 0x107

    const-string v3, "TRUE"

    aput-object v3, v0, v2

    const/16 v2, 0x108

    const-string v3, "UESCAPE"

    aput-object v3, v0, v2

    const/16 v2, 0x109

    const-string v3, "UNION"

    aput-object v3, v0, v2

    const/16 v2, 0x10a

    const-string v3, "UNIQUE"

    aput-object v3, v0, v2

    const/16 v2, 0x10b

    const-string v3, "UNKNOWN"

    aput-object v3, v0, v2

    const/16 v2, 0x10c

    const-string v3, "UNNEST"

    aput-object v3, v0, v2

    const/16 v2, 0x10d

    const-string v3, "UPDATE"

    aput-object v3, v0, v2

    const/16 v2, 0x10e

    const-string v3, "UPPER"

    aput-object v3, v0, v2

    const/16 v2, 0x10f

    const-string v3, "USER"

    aput-object v3, v0, v2

    const/16 v2, 0x110

    const-string v3, "USING"

    aput-object v3, v0, v2

    const/16 v2, 0x111

    const-string v3, "VALUE"

    aput-object v3, v0, v2

    const/16 v2, 0x112

    const-string v3, "VALUES"

    aput-object v3, v0, v2

    const/16 v2, 0x113

    const-string v3, "VARCHAR"

    aput-object v3, v0, v2

    const/16 v2, 0x114

    const-string v3, "VARYING"

    aput-object v3, v0, v2

    const/16 v2, 0x115

    const-string v3, "VAR_POP"

    aput-object v3, v0, v2

    const/16 v2, 0x116

    const-string v3, "VAR_SAMP"

    aput-object v3, v0, v2

    const/16 v2, 0x117

    const-string v3, "WHEN"

    aput-object v3, v0, v2

    const/16 v2, 0x118

    const-string v3, "WHENEVER"

    aput-object v3, v0, v2

    const/16 v2, 0x119

    const-string v3, "WHERE"

    aput-object v3, v0, v2

    const/16 v2, 0x11a

    const-string v3, "WIDTH_BUCKET"

    aput-object v3, v0, v2

    const/16 v2, 0x11b

    const-string v3, "WINDOW"

    aput-object v3, v0, v2

    const/16 v2, 0x11c

    const-string v3, "WITH"

    aput-object v3, v0, v2

    const/16 v2, 0x11d

    const-string v3, "WITHIN"

    aput-object v3, v0, v2

    const/16 v2, 0x11e

    const-string v3, "WITHOUT"

    aput-object v3, v0, v2

    const/16 v2, 0x11f

    const-string v3, "YEAR"

    aput-object v3, v0, v2

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->SQL2003_KEYWORDS:[Ljava/lang/String;

    .line 749
    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 1

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 755
    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    .line 796
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    .line 797
    iput-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    .line 798
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    .line 802
    :try_start_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getIdentifierQuoteString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 805
    :try_start_1
    invoke-static {p1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 809
    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    :goto_0
    return-void

    :goto_1
    iput-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    .line 807
    throw p1
.end method

.method private buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mysql/jdbc/Field;",
            "Ljava/util/ArrayList<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;)",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 833
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {p1, p2, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method static buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/mysql/jdbc/Field;",
            "Ljava/util/ArrayList<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Lcom/mysql/jdbc/MySQLConnection;",
            ")",
            "Ljava/sql/ResultSet;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 837
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 840
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/mysql/jdbc/Field;->getSQLType()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    if-eq v2, v4, :cond_0

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    goto :goto_1

    .line 846
    :cond_0
    aget-object v2, p0, v1

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/mysql/jdbc/Field;->setEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)V

    .line 852
    :goto_1
    aget-object v2, p0, v1

    invoke-virtual {v2, p2}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 853
    aget-object v2, p0, v1

    invoke-virtual {v2, v4}, Lcom/mysql/jdbc/Field;->setUseOldNameMetadata(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 856
    :cond_1
    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v4, p1}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/ResultSetImpl;->getInstance(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;Z)Lcom/mysql/jdbc/ResultSetImpl;

    move-result-object p0

    return-object p0
.end method

.method private convertTypeDescriptorToProcedureRow([B[BLjava/lang/String;ZZZLcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;ZI)Lcom/mysql/jdbc/ResultSetRow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x11

    if-eqz p8, :cond_0

    .line 973
    new-array v1, v0, [[B

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    new-array v1, v1, [[B

    :goto_0
    const/4 v2, 0x0

    .line 974
    aput-object p2, v1, v2

    const/4 p2, 0x1

    const/4 v3, 0x0

    .line 975
    aput-object v3, v1, p2

    const/4 v4, 0x2

    .line 976
    aput-object p1, v1, v4

    const/4 v5, 0x3

    .line 977
    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p3

    aput-object p3, v1, v5

    const/4 p3, 0x4

    .line 978
    invoke-virtual {p0, p4, p5, p6, p8}, Lcom/mysql/jdbc/DatabaseMetaData;->getColumnType(ZZZZ)I

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p4

    aput-object p4, v1, p3

    const/4 p3, 0x5

    .line 979
    iget-short p4, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    invoke-static {p4}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p4

    aput-object p4, v1, p3

    const/4 p3, 0x6

    .line 980
    iget-object p4, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p4

    aput-object p4, v1, p3

    .line 981
    iget-object p3, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    if-nez p3, :cond_1

    move-object p3, v3

    goto :goto_1

    :cond_1
    iget-object p3, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p3

    :goto_1
    const/4 p4, 0x7

    aput-object p3, v1, p4

    const/16 p3, 0x8

    .line 982
    aget-object p4, v1, p4

    aput-object p4, v1, p3

    const/16 p3, 0x9

    .line 983
    iget-object p4, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    if-nez p4, :cond_2

    move-object p4, v3

    goto :goto_2

    :cond_2
    iget-object p4, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p4

    :goto_2
    aput-object p4, v1, p3

    const/16 p3, 0xa

    .line 984
    iget p4, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p4

    aput-object p4, v1, p3

    .line 986
    iget p3, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    const/16 p4, 0xb

    packed-switch p3, :pswitch_data_0

    .line 1000
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Internal error while parsing callable statement metadata (unknown nullability value fount)"

    const-string p3, "S1000"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 996
    :pswitch_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v1, p4

    goto :goto_3

    .line 992
    :pswitch_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v1, p4

    goto :goto_3

    .line 988
    :pswitch_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v1, p4

    :goto_3
    const/16 p2, 0xc

    .line 1004
    aput-object v3, v1, p2

    const/16 p2, 0x10

    const/16 p3, 0xf

    const/16 p4, 0xe

    const/16 p5, 0xd

    if-eqz p8, :cond_3

    .line 1008
    aput-object v3, v1, p5

    .line 1011
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p0, p5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p5

    aput-object p5, v1, p4

    .line 1014
    iget-object p4, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p4

    aput-object p4, v1, p3

    .line 1017
    aput-object p1, v1, p2

    goto :goto_4

    .line 1020
    :cond_3
    aput-object v3, v1, p5

    .line 1023
    aput-object v3, v1, p4

    .line 1026
    aput-object v3, v1, p3

    .line 1029
    aput-object v3, v1, p2

    .line 1032
    invoke-static {p9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v1, v0

    const/16 p2, 0x12

    .line 1035
    iget-object p3, p7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object p3

    aput-object p3, v1, p2

    const/16 p2, 0x13

    .line 1038
    aput-object p1, v1, p2

    .line 1041
    :goto_4
    new-instance p1, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private endPositionOfParameterDeclaration(ILjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    add-int/2addr p1, v0

    :goto_0
    if-lez v0, :cond_4

    .line 1878
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_4

    const-string v3, ")"

    .line 1879
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_1
    move-object v6, v1

    goto :goto_2

    :cond_0
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_1

    :goto_2
    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    const-string v3, "("

    .line 1883
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_3
    move-object v6, v1

    goto :goto_4

    :cond_1
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_3

    :goto_4
    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p3

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result p1

    if-eq p1, v8, :cond_2

    if-ge p1, v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_5
    move p1, v7

    goto :goto_0

    .line 1895
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Internal error when parsing callable statement metadata"

    const-string p3, "S1000"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_4
    return p1
.end method

.method private findEndOfReturnsClause(Ljava/lang/String;I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LANGUAGE"

    const-string v3, "NOT"

    const-string v4, "DETERMINISTIC"

    const-string v5, "CONTAINS"

    const-string v6, "NO"

    const-string v7, "READ"

    const-string v8, "MODIFIES"

    const-string v9, "SQL"

    const-string v10, "COMMENT"

    const-string v11, "BEGIN"

    const-string v12, "RETURN"

    .line 1926
    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v8

    const-string v2, "RETURNS"

    .line 1928
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr p2, v2

    add-int/lit8 p2, p2, 0x1

    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 1932
    :goto_0
    array-length v2, v8

    if-ge v10, v2, :cond_3

    .line 1933
    aget-object v4, v8, v10

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_1
    move-object v7, v2

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_1

    :goto_2
    move v2, p2

    move-object v3, p1

    move-object v5, v0

    move-object v6, v1

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    if-eq v2, v9, :cond_2

    if-eq v11, v9, :cond_1

    if-ge v2, v11, :cond_2

    :cond_1
    move v11, v2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    if-eq v11, v9, :cond_4

    return v11

    :cond_4
    const-string v4, ":"

    .line 1948
    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_3
    move-object v7, v2

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_3

    :goto_4
    move v2, p2

    move-object v3, p1

    move-object v5, v0

    move-object v6, v1

    invoke-static/range {v2 .. v7}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result p2

    if-eq p2, v9, :cond_7

    :goto_5
    if-lez p2, :cond_7

    .line 1954
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_6

    return p2

    :cond_6
    add-int/lit8 p2, p2, -0x1

    goto :goto_5

    .line 1962
    :cond_7
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Internal error when parsing callable statement metadata"

    const-string v0, "S1000"

    invoke-static {p2, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private getCallStmtParameterTypes(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v12, p5

    if-nez p4, :cond_1

    .line 1556
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "%"

    move-object v13, v1

    goto :goto_0

    .line 1559
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Parameter/Column name pattern can not be NULL or empty."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1
    move-object/from16 v13, p4

    .line 1574
    :goto_0
    :try_start_0
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 1576
    :try_start_1
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v1

    .line 1577
    iget-object v2, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-eqz v2, :cond_3

    .line 1583
    :try_start_2
    iget-object v2, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    iget-object v3, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    const-string v0, "SELECT DATABASE()"

    .line 1584
    invoke-interface {v15, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1585
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 1587
    invoke-interface {v2, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1856
    :try_start_4
    iget-object v3, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 1594
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->setCatalog(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V

    .line 1591
    :cond_2
    throw v0

    :cond_3
    :goto_2
    move-object v8, v0

    .line 1599
    invoke-interface {v15}, Ljava/sql/Statement;->getMaxRows()I

    move-result v0

    const/4 v9, 0x0

    if-eqz v0, :cond_4

    .line 1600
    invoke-interface {v15, v9}, Ljava/sql/Statement;->setMaxRows(I)V

    :cond_4
    const-string v0, " "

    .line 1605
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    const-string v2, "."

    .line 1606
    iget-object v3, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_3
    move-object v5, v1

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    goto :goto_4

    :cond_6
    const-string v0, "."

    .line 1609
    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_4
    const/4 v5, -0x1

    if-eq v0, v5, :cond_7

    add-int/lit8 v1, v0, 0x1

    .line 1614
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 1615
    invoke-virtual {v6, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1616
    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    .line 1618
    :cond_7
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v1

    invoke-static {v8, v0, v1}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    move-object v1, v6

    .line 1623
    :goto_5
    iget-object v2, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    const-string v3, "UTF-8"

    .line 1625
    invoke-static {v2, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    move-object/from16 v16, v3

    goto :goto_6

    .line 1627
    :catch_0
    :try_start_6
    invoke-virtual {v11, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v16, v2

    .line 1632
    :goto_6
    iget-object v2, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    const-string v3, "UTF-8"

    .line 1634
    invoke-static {v2, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-object/from16 v17, v3

    goto :goto_7

    .line 1636
    :catch_1
    :try_start_8
    invoke-virtual {v11, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v17, v2

    .line 1642
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1643
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2e

    .line 1644
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1645
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->PROCEDURE:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    if-ne v7, v0, :cond_8

    .line 1649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHOW CREATE PROCEDURE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :try_start_9
    const-string v0, "Create Procedure"
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_8
    move-object v8, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object/from16 v19, v1

    :goto_9
    move-object v1, v0

    goto/16 :goto_1e

    .line 1652
    :cond_8
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHOW CREATE FUNCTION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    const-string v0, "Create Function"
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_8

    .line 1656
    :goto_a
    :try_start_c
    invoke-interface {v8}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1657
    invoke-interface {v8, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1659
    iget-object v0, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getNoAccessToProcedureBodies()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-nez v0, :cond_a

    if-eqz v18, :cond_9

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const-string v0, "User does not have access to metadata required to determine stored procedure parameter types. If rights can not be granted, configure connection with \"noAccessToProcedureBodies=true\" to have driver generate parameters that represent INOUT strings irregardless of actual parameter types."

    const-string v1, "S1000"

    .line 1660
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_a
    :goto_b
    :try_start_e
    const-string v0, "sql_mode"

    .line 1668
    invoke-interface {v8, v0}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ANSI"

    .line 1670
    invoke-static {v0, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_e
    .catch Ljava/sql/SQLException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    if-eq v0, v5, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object/from16 v19, v8

    goto/16 :goto_1e

    :catch_2
    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_c

    :try_start_f
    const-string v1, "`\""
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_d

    :cond_c
    :try_start_10
    const-string v1, "`"

    .line 1678
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1679
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    if-eqz v18, :cond_12

    .line 1682
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_12

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v19, v20

    .line 1684
    invoke-static/range {v18 .. v24}, Lcom/mysql/jdbc/StringUtils;->stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v6

    const/16 v27, 0x0

    const-string v29, "("

    .line 1686
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v3, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    if-eqz v3, :cond_d

    :try_start_11
    sget-object v3, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto :goto_e

    :cond_d
    :try_start_12
    sget-object v3, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_e
    move-object/from16 v32, v3

    move-object/from16 v28, v6

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    invoke-static/range {v27 .. v32}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v4

    .line 1690
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-direct {v11, v4, v6, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->endPositionOfParameterDeclaration(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1692
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->FUNCTION:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    if-ne v7, v1, :cond_10

    const/16 v27, 0x0

    const-string v29, " RETURNS "

    .line 1696
    iget-object v1, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, v11, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v7, v11, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    if-eqz v7, :cond_e

    :try_start_13
    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_f

    :cond_e
    :try_start_14
    sget-object v7, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    :goto_f
    move-object/from16 v32, v7

    move-object/from16 v28, v6

    move-object/from16 v30, v1

    move-object/from16 v31, v2

    invoke-static/range {v27 .. v32}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1

    .line 1699
    invoke-direct {v11, v6, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->findEndOfReturnsClause(Ljava/lang/String;I)I

    move-result v2

    const-string v7, "RETURNS "

    .line 1703
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v1, v7

    .line 1705
    :goto_10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    if-ge v1, v7, :cond_f

    .line 1706
    :try_start_15
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    if-eqz v7, :cond_f

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1713
    :cond_f
    :try_start_16
    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1714
    new-instance v7, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    const-string v2, "YES"

    invoke-direct {v7, v11, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, ""
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move v14, v3

    move-object/from16 v3, v17

    move/from16 v33, v4

    move-object/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v34, v6

    move/from16 v6, v20

    move-object/from16 v18, v7

    move/from16 v7, v21

    move-object/from16 v19, v8

    move-object/from16 v8, v18

    const/16 v18, 0x0

    move/from16 v9, p6

    move-object/from16 v35, v13

    const/4 v13, 0x1

    move/from16 v10, v22

    .line 1716
    :try_start_17
    invoke-direct/range {v1 .. v10}, Lcom/mysql/jdbc/DatabaseMetaData;->convertTypeDescriptorToProcedureRow([B[BLjava/lang/String;ZZZLcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;ZI)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v1, v33

    goto :goto_11

    :cond_10
    move v14, v3

    move-object/from16 v34, v6

    move-object/from16 v19, v8

    move-object/from16 v35, v13

    const/4 v13, 0x1

    const/16 v18, 0x0

    move v1, v4

    :goto_11
    const/4 v2, -0x1

    if-eq v1, v2, :cond_11

    if-eq v14, v2, :cond_11

    add-int/lit8 v4, v1, 0x1

    move-object/from16 v1, v34

    .line 1726
    invoke-virtual {v1, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move/from16 v20, v0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    goto :goto_12

    :cond_11
    const-string v0, "Internal error when parsing callable statement metadata"

    const-string v1, "S1000"

    .line 1722
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :catchall_4
    move-exception v0

    goto/16 :goto_9

    :cond_12
    move-object/from16 v19, v8

    move-object/from16 v35, v13

    const/4 v13, 0x1

    const/16 v18, 0x0

    move/from16 v20, v0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    const/4 v14, 0x0

    goto :goto_12

    :cond_13
    move-object/from16 v19, v8

    move-object/from16 v35, v13

    const/4 v13, 0x1

    const/16 v18, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    :goto_12
    if-eqz v19, :cond_14

    .line 1735
    :try_start_18
    invoke-interface/range {v19 .. v19}, Ljava/sql/ResultSet;->close()V
    :try_end_18
    .catch Ljava/sql/SQLException; {:try_start_18 .. :try_end_18} :catch_3

    goto :goto_13

    :catch_3
    move-exception v0

    goto :goto_14

    :cond_14
    :goto_13
    const/4 v0, 0x0

    :goto_14
    if-eqz v15, :cond_15

    .line 1745
    :try_start_19
    invoke-interface {v15}, Ljava/sql/Statement;->close()V
    :try_end_19
    .catch Ljava/sql/SQLException; {:try_start_19 .. :try_end_19} :catch_4

    goto :goto_15

    :catch_4
    move-exception v0

    :cond_15
    :goto_15
    if-nez v0, :cond_25

    if-eqz v14, :cond_24

    const-string v0, ","

    .line 1761
    invoke-static {v14, v0, v1, v2, v13}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 1763
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    const/4 v10, 0x1

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v14, :cond_24

    .line 1766
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1768
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_1c

    :cond_16
    const-string v2, "[\\t\\n\\x0B\\f\\r]"

    const-string v3, " "

    .line 1773
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1774
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, " \t"

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1781
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OUT"

    .line 1783
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1786
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1787
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_19

    .line 1789
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Internal error when parsing callable statement metadata (missing parameter name)"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_18
    const-string v3, "INOUT"

    .line 1792
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1796
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1797
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    :goto_17
    const/4 v6, 0x1

    goto :goto_19

    .line 1799
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Internal error when parsing callable statement metadata (missing parameter name)"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1a
    const-string v3, "IN"

    .line 1802
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1806
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1807
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_18

    .line 1809
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Internal error when parsing callable statement metadata (missing parameter name)"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1c
    :goto_18
    const/4 v5, 0x0

    goto :goto_17

    .line 1821
    :goto_19
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1822
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1824
    :goto_1a
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, " "

    .line 1825
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 1829
    :cond_1d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1831
    new-instance v8, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;

    const-string v3, "YES"

    invoke-direct {v8, v11, v2, v3}, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "`"

    .line 1837
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    :cond_1e
    if-eqz v20, :cond_20

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1839
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v13

    invoke-virtual {v1, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_20
    move-object v4, v1

    move-object/from16 v9, v35

    .line 1842
    invoke-static {v4, v9}, Lcom/mysql/jdbc/StringUtils;->wildCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v7, 0x0

    add-int/lit8 v19, v10, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v21, v9

    move/from16 v9, p6

    .line 1843
    invoke-direct/range {v1 .. v10}, Lcom/mysql/jdbc/DatabaseMetaData;->convertTypeDescriptorToProcedureRow([B[BLjava/lang/String;ZZZLcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;ZI)Lcom/mysql/jdbc/ResultSetRow;

    move-result-object v1

    .line 1846
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v10, v19

    goto :goto_1b

    :cond_21
    move-object/from16 v21, v9

    :goto_1b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v35, v21

    goto/16 :goto_16

    .line 1833
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Internal error when parsing callable statement metadata (missing parameter type)"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 1849
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Internal error when parsing callable statement metadata (unknown output from \'SHOW CREATE PROCEDURE\')"

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_24
    :goto_1c
    return-void

    .line 1754
    :cond_25
    throw v0

    :catchall_5
    move-exception v0

    move-object/from16 v19, v8

    goto/16 :goto_9

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto :goto_1d

    :catchall_7
    move-exception v0

    move-object v1, v0

    const/4 v15, 0x0

    :goto_1d
    const/16 v19, 0x0

    :goto_1e
    if-eqz v19, :cond_26

    .line 1735
    :try_start_1a
    invoke-interface/range {v19 .. v19}, Ljava/sql/ResultSet;->close()V
    :try_end_1a
    .catch Ljava/sql/SQLException; {:try_start_1a .. :try_end_1a} :catch_5

    goto :goto_1f

    :catch_5
    move-exception v0

    move-object v14, v0

    goto :goto_20

    :cond_26
    :goto_1f
    const/4 v14, 0x0

    :goto_20
    if-eqz v15, :cond_27

    .line 1745
    :try_start_1b
    invoke-interface {v15}, Ljava/sql/Statement;->close()V
    :try_end_1b
    .catch Ljava/sql/SQLException; {:try_start_1b .. :try_end_1b} :catch_6

    goto :goto_21

    :catch_6
    move-exception v0

    move-object v14, v0

    :cond_27
    :goto_21
    if-eqz v14, :cond_28

    .line 1754
    throw v14

    .line 1731
    :cond_28
    throw v1
.end method

.method private getCascadeDeleteOption(Ljava/lang/String;)I
    .locals 3

    const-string v0, "ON DELETE"

    .line 1975
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 1978
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ON DELETE CASCADE"

    .line 1980
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "ON DELETE SET NULL"

    .line 1982
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-string v0, "ON DELETE RESTRICT"

    .line 1984
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v0, "ON DELETE NO ACTION"

    .line 1986
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v1
.end method

.method private getCascadeUpdateOption(Ljava/lang/String;)I
    .locals 3

    const-string v0, "ON UPDATE"

    .line 2003
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 2006
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ON UPDATE CASCADE"

    .line 2008
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "ON UPDATE SET NULL"

    .line 2010
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const-string v0, "ON UPDATE RESTRICT"

    .line 2012
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v0, "ON UPDATE NO ACTION"

    .line 2014
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v1
.end method

.method protected static getInstance(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Z)Lcom/mysql/jdbc/DatabaseMetaData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 772
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 773
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseInformationSchema()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0, v2, v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 774
    new-instance p2, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;

    invoke-direct {p2, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    return-object p2

    .line 777
    :cond_0
    new-instance p2, Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p2, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    return-object p2

    :cond_1
    const/4 v0, 0x1

    const/4 v4, 0x2

    if-eqz p2, :cond_2

    .line 780
    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getUseInformationSchema()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0, v2, v3, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 782
    sget-object p2, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_IS_CTOR:Ljava/lang/reflect/Constructor;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v0

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {p2, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/DatabaseMetaData;

    return-object p0

    .line 786
    :cond_2
    sget-object p2, Lcom/mysql/jdbc/DatabaseMetaData;->JDBC_4_DBMD_SHOW_CTOR:Ljava/lang/reflect/Constructor;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    aput-object p1, v1, v0

    invoke-interface {p0}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {p2, v1, p0}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/DatabaseMetaData;

    return-object p0
.end method

.method private getResultsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 4217
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->parseTableStatusIntoLocalAndReferencedColumns(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;

    move-result-object v3

    if-eqz p6, :cond_0

    .line 4219
    iget-object v4, v3, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_0
    move-object/from16 v5, p2

    .line 4223
    :cond_1
    iget-object v4, v3, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, v3, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v4, v6, :cond_6

    .line 4228
    iget-object v4, v3, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->localColumnsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4229
    iget-object v6, v3, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedColumnsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x1

    .line 4233
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    const/16 v9, 0xe

    .line 4234
    new-array v9, v9, [[B

    .line 4235
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget-object v11, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4236
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x0

    if-nez p1, :cond_2

    .line 4237
    new-array v14, v13, [B

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    :goto_1
    aput-object v14, v9, v12

    const/4 v12, 0x5

    const/4 v14, 0x0

    aput-object v14, v9, v12

    const/4 v12, 0x6

    if-eqz p6, :cond_3

    move-object/from16 v7, p5

    goto :goto_2

    :cond_3
    move-object v7, v5

    .line 4239
    :goto_2
    invoke-virtual {v0, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v9, v12

    .line 4240
    invoke-virtual {v0, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v10, 0x7

    aput-object v7, v9, v10

    .line 4241
    iget-object v7, v3, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedCatalog:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v9, v13

    const/4 v7, 0x1

    aput-object v14, v9, v7

    const/4 v7, 0x2

    if-eqz p6, :cond_4

    move-object v12, v5

    goto :goto_3

    .line 4243
    :cond_4
    iget-object v12, v3, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->referencedTable:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v9, v7

    const/4 v7, 0x3

    .line 4244
    invoke-virtual {v0, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v11

    aput-object v11, v9, v7

    const/16 v7, 0x8

    add-int/lit8 v11, v8, 0x1

    .line 4245
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v9, v7

    .line 4247
    invoke-virtual {v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->getForeignKeyActions(Ljava/lang/String;)[I

    move-result-object v7

    const/16 v8, 0x9

    const/4 v12, 0x1

    .line 4249
    aget v15, v7, v12

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v9, v8

    const/16 v8, 0xa

    .line 4250
    aget v7, v7, v13

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v7

    aput-object v7, v9, v8

    const/16 v7, 0xb

    .line 4251
    iget-object v8, v3, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;->constraintName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v9, v7

    const/16 v7, 0xc

    aput-object v14, v9, v7

    const/16 v7, 0xd

    .line 4253
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v8

    aput-object v8, v9, v7

    .line 4254
    new-instance v7, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    move-object/from16 v8, p4

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v8, v11

    goto/16 :goto_0

    :cond_5
    return-void

    .line 4224
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    const-string v2, "Error parsing foreign keys definition, number of local and referenced columns is not the same."

    const-string v3, "S1000"

    invoke-static {v2, v3, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public allProceduresAreCallable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public allTablesAreSelectable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected convertToJdbcFunctionList(Ljava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I[Lcom/mysql/jdbc/Field;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/sql/ResultSet;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;>;I[",
            "Lcom/mysql/jdbc/Field;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    .line 861
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz p3, :cond_2

    .line 867
    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v3, :cond_0

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v3, :cond_1

    .line 871
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_6

    move/from16 v7, p6

    .line 877
    invoke-interface {v2, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 879
    move-object v10, v9

    check-cast v10, [[B

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v14, 0x2

    if-eqz v4, :cond_4

    .line 881
    array-length v13, v4

    const/16 v10, 0x9

    if-ne v13, v10, :cond_4

    .line 883
    new-array v10, v10, [[B

    if-nez v1, :cond_3

    move-object v13, v9

    goto :goto_3

    .line 884
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    :goto_3
    aput-object v13, v10, v5

    aput-object v9, v10, v6

    .line 886
    invoke-virtual {p0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v10, v14

    aput-object v9, v10, v12

    aput-object v9, v10, v11

    const/4 v5, 0x5

    aput-object v9, v10, v5

    const-string v5, "comment"

    .line 890
    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v13, 0x6

    aput-object v5, v10, v13

    const/4 v5, 0x7

    .line 891
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v10, v5

    const/16 v5, 0x8

    .line 892
    invoke-virtual {p0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v6

    aput-object v6, v10, v5

    goto :goto_5

    :cond_4
    const/4 v13, 0x6

    .line 895
    new-array v10, v13, [[B

    if-nez v1, :cond_5

    move-object v13, v9

    goto :goto_4

    .line 897
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    :goto_4
    aput-object v13, v10, v5

    aput-object v9, v10, v6

    .line 899
    invoke-virtual {p0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v10, v14

    const-string v5, "comment"

    .line 900
    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v10, v12

    .line 901
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getJDBC4FunctionNoTableConstant()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v10, v11

    .line 902
    invoke-virtual {p0, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v10, v6

    .line 905
    :goto_5
    new-instance v5, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-virtual {p0, v1, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-direct {v8, v10, v9}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-direct {v5, p0, v6, v8}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v6, p5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    move-object/from16 v6, p5

    move/from16 v7, p6

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected convertToJdbcProcedureList(ZLjava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/sql/ResultSet;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 934
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_3

    .line 940
    invoke-interface {p3, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez p5, :cond_1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p5, :cond_2

    .line 944
    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_0

    .line 950
    invoke-interface {p3, p7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    .line 951
    new-array v3, v3, [[B

    const/4 v4, 0x0

    if-nez p2, :cond_4

    move-object v5, v4

    goto :goto_3

    .line 952
    :cond_4
    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    :goto_3
    aput-object v5, v3, v0

    aput-object v4, v3, v1

    .line 954
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/4 v5, 0x4

    aput-object v4, v3, v5

    const/4 v5, 0x5

    aput-object v4, v3, v5

    const/4 v4, 0x6

    const-string v5, "comment"

    .line 958
    invoke-interface {p3, v5}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    if-eqz p1, :cond_5

    const-string v0, "FUNCTION"

    const-string v4, "type"

    .line 960
    invoke-interface {p3, v4}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :cond_5
    const/4 v4, 0x7

    if-eqz v0, :cond_6

    .line 961
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v3, v4

    const/16 v0, 0x8

    .line 963
    invoke-virtual {p0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v0

    .line 965
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-virtual {p0, p2, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method protected createColumnsFields()[Lcom/mysql/jdbc/Field;
    .locals 13

    const/16 v0, 0x18

    .line 2572
    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 2573
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    const/16 v4, 0xff

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2574
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "TABLE_SCHEM"

    invoke-direct {v1, v3, v6, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 2575
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "TABLE_NAME"

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 2576
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "COLUMN_NAME"

    const/16 v7, 0x20

    invoke-direct {v1, v3, v6, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 2577
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "DATA_TYPE"

    const/4 v8, 0x5

    const/4 v9, 0x4

    invoke-direct {v1, v6, v7, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    .line 2578
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "TYPE_NAME"

    const/16 v10, 0x10

    invoke-direct {v1, v6, v7, v5, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 2579
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "COLUMN_SIZE"

    const v11, 0x7fffffff

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-direct {v1, v6, v7, v9, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x6

    aput-object v1, v0, v6

    .line 2580
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "BUFFER_LENGTH"

    const/16 v12, 0xa

    invoke-direct {v1, v6, v7, v9, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x7

    aput-object v1, v0, v6

    .line 2581
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "DECIMAL_DIGITS"

    invoke-direct {v1, v6, v7, v9, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0x8

    aput-object v1, v0, v6

    .line 2582
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "NUM_PREC_RADIX"

    invoke-direct {v1, v6, v7, v9, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0x9

    aput-object v1, v0, v6

    .line 2583
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "NULLABLE"

    invoke-direct {v1, v6, v7, v9, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v12

    .line 2584
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "REMARKS"

    invoke-direct {v1, v6, v7, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v6, 0xb

    aput-object v1, v0, v6

    .line 2585
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "COLUMN_DEF"

    invoke-direct {v1, v6, v7, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2586
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v6, "SQL_DATA_TYPE"

    invoke-direct {v1, v2, v6, v9, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 2587
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v6, "SQL_DATETIME_SUB"

    invoke-direct {v1, v2, v6, v9, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 2588
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v6, "CHAR_OCTET_LENGTH"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {v1, v2, v6, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 2589
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v6, "ORDINAL_POSITION"

    invoke-direct {v1, v2, v6, v9, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v10

    .line 2590
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v6, "IS_NULLABLE"

    invoke-direct {v1, v2, v6, v5, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2591
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v6, "SCOPE_CATALOG"

    invoke-direct {v1, v2, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 2592
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v6, "SCOPE_SCHEMA"

    invoke-direct {v1, v2, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 2593
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v6, "SCOPE_TABLE"

    invoke-direct {v1, v2, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 2594
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v4, "SOURCE_DATA_TYPE"

    invoke-direct {v1, v2, v4, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 2595
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v4, "IS_AUTOINCREMENT"

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 2596
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v4, "IS_GENERATEDCOLUMN"

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;
    .locals 8

    const/16 v0, 0x9

    .line 4044
    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4045
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PROCEDURE_CAT"

    const/16 v4, 0xff

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4046
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "PROCEDURE_SCHEM"

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 4047
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "PROCEDURE_NAME"

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 4048
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "reserved1"

    invoke-direct {v1, v3, v6, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 4049
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "reserved2"

    invoke-direct {v1, v3, v6, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 4050
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "reserved3"

    invoke-direct {v1, v3, v6, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 4051
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "REMARKS"

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 4052
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "PROCEDURE_TYPE"

    invoke-direct {v1, v6, v7, v2, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 4053
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "SPECIFIC_NAME"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected createFkMetadataFields()[Lcom/mysql/jdbc/Field;
    .locals 10

    const/16 v0, 0xe

    .line 2805
    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 2806
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PKTABLE_CAT"

    const/16 v4, 0xff

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2807
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "PKTABLE_SCHEM"

    invoke-direct {v1, v3, v6, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 2808
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "PKTABLE_NAME"

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 2809
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "PKCOLUMN_NAME"

    const/16 v8, 0x20

    invoke-direct {v1, v6, v7, v5, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x3

    aput-object v1, v0, v6

    .line 2810
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "FKTABLE_CAT"

    invoke-direct {v1, v6, v7, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 2811
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v7, "FKTABLE_SCHEM"

    invoke-direct {v1, v6, v7, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x5

    aput-object v1, v0, v6

    .line 2812
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v9, "FKTABLE_NAME"

    invoke-direct {v1, v7, v9, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    .line 2813
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v7, "FKCOLUMN_NAME"

    invoke-direct {v1, v4, v7, v5, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    .line 2814
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v7, "KEY_SEQ"

    invoke-direct {v1, v4, v7, v6, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    .line 2815
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v7, "UPDATE_RULE"

    invoke-direct {v1, v4, v7, v6, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    .line 2816
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v7, "DELETE_RULE"

    invoke-direct {v1, v4, v7, v6, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    .line 2817
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v7, "FK_NAME"

    invoke-direct {v1, v4, v7, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    .line 2818
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v7, "PK_NAME"

    invoke-direct {v1, v4, v7, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2819
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v4, "DEFERRABILITY"

    invoke-direct {v1, v2, v4, v6, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected createFunctionColumnsFields()[Lcom/mysql/jdbc/Field;
    .locals 10

    const/16 v0, 0x11

    .line 7776
    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "FUNCTION_CAT"

    const/16 v4, 0x200

    const/16 v5, 0xc

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "FUNCTION_SCHEM"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "FUNCTION_NAME"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "COLUMN_NAME"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "COLUMN_TYPE"

    const/16 v6, 0x40

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "DATA_TYPE"

    const/4 v8, 0x6

    const/4 v9, 0x5

    invoke-direct {v1, v3, v7, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "TYPE_NAME"

    invoke-direct {v1, v3, v7, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "PRECISION"

    invoke-direct {v1, v3, v7, v2, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "LENGTH"

    invoke-direct {v1, v3, v7, v2, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "SCALE"

    invoke-direct {v1, v3, v7, v9, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "RADIX"

    invoke-direct {v1, v3, v7, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "NULLABLE"

    invoke-direct {v1, v3, v7, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "REMARKS"

    invoke-direct {v1, v3, v7, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "CHAR_OCTET_LENGTH"

    const/16 v7, 0x20

    invoke-direct {v1, v3, v4, v2, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "ORDINAL_POSITION"

    invoke-direct {v1, v3, v4, v2, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "IS_NULLABLE"

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "SPECIFIC_NAME"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected createIndexInfoFields()[Lcom/mysql/jdbc/Field;
    .locals 10

    const/16 v0, 0xd

    .line 3436
    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 3437
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    const/16 v4, 0xff

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3438
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "TABLE_SCHEM"

    invoke-direct {v1, v3, v6, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 3439
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_NAME"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3440
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "NON_UNIQUE"

    const/4 v4, 0x4

    const/16 v6, 0x10

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 3441
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "INDEX_QUALIFIER"

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 3442
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "INDEX_NAME"

    const/16 v6, 0x20

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 3443
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "TYPE"

    invoke-direct {v1, v3, v7, v2, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 3444
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "ORDINAL_POSITION"

    invoke-direct {v1, v3, v7, v2, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 3445
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "COLUMN_NAME"

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 3446
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "ASC_OR_DESC"

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 3447
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc42()Z

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x14

    const/16 v7, 0xa

    if-eqz v1, :cond_0

    .line 3448
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v8, "CARDINALITY"

    const/4 v9, -0x5

    invoke-direct {v1, v4, v8, v9, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 3449
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v7, "PAGES"

    invoke-direct {v1, v4, v7, v9, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v2

    goto :goto_0

    .line 3451
    :cond_0
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v8, ""

    const-string v9, "CARDINALITY"

    invoke-direct {v1, v8, v9, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 3452
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v8, "PAGES"

    invoke-direct {v1, v3, v8, v4, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v2

    :goto_0
    const/16 v1, 0xc

    .line 3454
    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FILTER_CONDITION"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;
    .locals 10

    const/16 v0, 0x14

    .line 3870
    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 3872
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PROCEDURE_CAT"

    const/16 v4, 0x200

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3873
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PROCEDURE_SCHEM"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 3874
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PROCEDURE_NAME"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3875
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "COLUMN_NAME"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 3876
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "COLUMN_TYPE"

    const/16 v6, 0x40

    invoke-direct {v1, v2, v3, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3877
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "DATA_TYPE"

    const/4 v8, 0x6

    const/4 v9, 0x5

    invoke-direct {v1, v3, v7, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v9

    .line 3878
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v7, "TYPE_NAME"

    invoke-direct {v1, v3, v7, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v8

    .line 3879
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "PRECISION"

    const/16 v7, 0xc

    invoke-direct {v1, v3, v6, v2, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 3880
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "LENGTH"

    invoke-direct {v1, v3, v6, v2, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 3881
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "SCALE"

    invoke-direct {v1, v3, v6, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x9

    aput-object v1, v0, v3

    .line 3882
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "RADIX"

    invoke-direct {v1, v3, v6, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xa

    aput-object v1, v0, v3

    .line 3883
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "NULLABLE"

    invoke-direct {v1, v3, v6, v9, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xb

    aput-object v1, v0, v3

    .line 3884
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "REMARKS"

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v7

    .line 3885
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "COLUMN_DEF"

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xd

    aput-object v1, v0, v3

    .line 3886
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "SQL_DATA_TYPE"

    invoke-direct {v1, v3, v6, v2, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xe

    aput-object v1, v0, v3

    .line 3887
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "SQL_DATETIME_SUB"

    invoke-direct {v1, v3, v6, v2, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0xf

    aput-object v1, v0, v3

    .line 3888
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "CHAR_OCTET_LENGTH"

    invoke-direct {v1, v3, v6, v2, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x10

    aput-object v1, v0, v3

    .line 3889
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "ORDINAL_POSITION"

    invoke-direct {v1, v3, v6, v2, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 3890
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "IS_NULLABLE"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 3891
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "SPECIFIC_NAME"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected createTablesFields()[Lcom/mysql/jdbc/Field;
    .locals 7

    const/16 v0, 0xa

    .line 4819
    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4820
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CAT"

    const/16 v4, 0xff

    const/16 v5, 0xc

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 4821
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "TABLE_SCHEM"

    invoke-direct {v1, v3, v6, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 4822
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v6, "TABLE_NAME"

    invoke-direct {v1, v3, v6, v5, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 4823
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TABLE_TYPE"

    const/4 v6, 0x5

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 4824
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "REMARKS"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 4825
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_CAT"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 4826
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_SCHEM"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 4827
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "TYPE_NAME"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 4828
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "SELF_REFERENCING_COL_NAME"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v3, 0x8

    aput-object v1, v0, v3

    .line 4829
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "REF_GENERATION"

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method public dataDefinitionCausesTransactionCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public dataDefinitionIgnoredInTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public deletesAreDetected(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public doesMaxRowSizeIncludeBlobs()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public extractForeignKeyForTable(Ljava/util/ArrayList;Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Ljava/sql/ResultSet;",
            "Ljava/lang/String;",
            ")",
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x3

    .line 1141
    new-array v3, v3, [[B

    const/4 v4, 0x1

    .line 1142
    invoke-interface {v2, v4}, Ljava/sql/ResultSet;->getBytes(I)[B

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    const-string v5, "SUPPORTS_FK"

    .line 1143
    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v5, 0x2

    .line 1145
    invoke-interface {v2, v5}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1146
    new-instance v7, Ljava/util/StringTokenizer;

    const-string v8, "\n"

    invoke-direct {v7, v2, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "comment; "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 1150
    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1151
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "CONSTRAINT"

    .line 1155
    invoke-static {v9, v10}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    const/4 v12, -0x1

    if-eqz v10, :cond_2

    .line 1157
    iget-object v10, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v9, v10, v6}, Lcom/mysql/jdbc/StringUtils;->indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v12, :cond_0

    const-string v10, "\""

    .line 1160
    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v13, 0x0

    goto :goto_1

    :cond_0
    const/4 v13, 0x1

    :goto_1
    if-eq v10, v12, :cond_2

    if-eqz v13, :cond_1

    .line 1168
    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    add-int/lit8 v14, v10, 0x1

    invoke-static {v9, v13, v14}, Lcom/mysql/jdbc/StringUtils;->indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    goto :goto_2

    :cond_1
    const-string v13, "\""

    add-int/lit8 v14, v10, 0x1

    .line 1170
    invoke-static {v9, v13, v14}, Lcom/mysql/jdbc/StringUtils;->indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    :goto_2
    if-eq v13, v12, :cond_2

    add-int/lit8 v10, v10, 0x1

    .line 1174
    invoke-virtual {v9, v10, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v13, v13, 0x1

    .line 1175
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    const-string v13, "FOREIGN KEY"

    .line 1180
    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    const-string v13, ","

    .line 1181
    invoke-virtual {v9, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1182
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v4

    invoke-virtual {v9, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :cond_3
    const-string v13, "FOREIGN KEY"

    .line 1185
    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1188
    iget-object v14, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v15, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v15}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v15

    move-object/from16 v11, p3

    invoke-static {v11, v14, v15}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v20

    if-eq v13, v12, :cond_7

    const-string v14, "FOREIGN KEY"

    .line 1193
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int v15, v13, v14

    const-string v16, "REFERENCES"

    .line 1195
    iget-object v14, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v18, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move-object/from16 v17, v13

    move v13, v15

    move-object/from16 v21, v14

    move-object v14, v9

    move v5, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v21

    invoke-static/range {v13 .. v18}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v15

    if-eq v15, v12, :cond_7

    const/16 v13, 0x28

    .line 1199
    invoke-virtual {v9, v13, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const-string v16, ")"

    .line 1200
    iget-object v14, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v18, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move-object/from16 v17, v13

    move v13, v5

    move-object/from16 v21, v14

    move-object v14, v9

    move/from16 v22, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v21

    invoke-static/range {v13 .. v18}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v13

    add-int/lit8 v5, v5, 0x1

    .line 1207
    invoke-virtual {v9, v5, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v13, "REFERENCES"

    .line 1209
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int v15, v22, v13

    const-string v16, "("

    .line 1211
    iget-object v14, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v18, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move-object/from16 v17, v13

    move v13, v15

    move-object/from16 v21, v14

    move-object v14, v9

    move v4, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v21

    invoke-static/range {v13 .. v18}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v13

    if-eq v13, v12, :cond_6

    .line 1215
    invoke-virtual {v9, v4, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v15, v13, 0x1

    const-string v16, ")"

    .line 1217
    iget-object v14, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v18, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move-object/from16 v17, v13

    move v13, v15

    move-object/from16 v21, v14

    move-object v14, v9

    move v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v21

    invoke-static/range {v13 .. v18}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v13

    if-eq v13, v12, :cond_4

    .line 1221
    invoke-virtual {v9, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v19, v6

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    :goto_4
    const/16 v23, 0x0

    const-string v25, "."

    .line 1224
    iget-object v6, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v28, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move-object/from16 v24, v4

    move-object/from16 v26, v6

    move-object/from16 v27, v13

    invoke-static/range {v23 .. v28}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v6

    if-eq v6, v12, :cond_5

    const/4 v12, 0x0

    .line 1228
    invoke-virtual {v4, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    add-int/lit8 v6, v6, 0x1

    .line 1229
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    :goto_5
    move-object v6, v4

    move-object/from16 v13, v19

    move-object/from16 v4, v20

    goto :goto_7

    :cond_6
    const/4 v12, 0x0

    move-object/from16 v4, v20

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    move-object/from16 v4, v20

    const/4 v5, 0x0

    :goto_6
    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_7
    if-nez v8, :cond_8

    const-string v14, "; "

    .line 1236
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_8
    const/4 v8, 0x0

    :goto_8
    if-eqz v10, :cond_9

    .line 1242
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_9
    const-string v10, "not_available"

    .line 1244
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    const-string v10, "("

    .line 1247
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") REFER "

    .line 1249
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    .line 1251
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    .line 1253
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    .line 1255
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    .line 1257
    invoke-virtual {v9, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 1259
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-eq v4, v5, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 1260
    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    .line 1261
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_a
    move-object/from16 v11, p3

    const/4 v6, 0x1

    const/4 v12, 0x0

    :cond_b
    :goto_a
    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 1267
    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 1268
    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public extractForeignKeyFromCreateTable(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 1290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1295
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    :try_start_0
    const-string p2, ""

    const-string v2, "%"

    const-string v3, "TABLE"

    .line 1298
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1300
    :goto_0
    :try_start_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "TABLE_NAME"

    .line 1301
    invoke-interface {p2, v2}, Ljava/sql/ResultSet;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1305
    invoke-interface {p2}, Ljava/sql/ResultSet;->close()V

    .line 1312
    :cond_2
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x3

    .line 1313
    new-array v2, v2, [Lcom/mysql/jdbc/Field;

    .line 1314
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "Name"

    const v6, 0x7fffffff

    const/4 v7, 0x1

    invoke-direct {v3, v4, v5, v7, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1315
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v8, "Type"

    const/16 v9, 0xff

    invoke-direct {v3, v5, v8, v7, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v7

    const/4 v3, 0x2

    .line 1316
    new-instance v5, Lcom/mysql/jdbc/Field;

    const-string v8, ""

    const-string v9, "Comment"

    invoke-direct {v5, v8, v9, v7, v6}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v5, v2, v3

    .line 1318
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1319
    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v5

    :goto_2
    if-ge v4, v3, :cond_8

    .line 1323
    :try_start_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1325
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SHOW CREATE TABLE "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1328
    :try_start_3
    invoke-interface {v5, v6}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v6
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1340
    :goto_3
    :try_start_4
    invoke-interface {v6}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1341
    invoke-virtual {p0, p2, v6, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->extractForeignKeyForTable(Ljava/util/ArrayList;Ljava/sql/ResultSet;Ljava/lang/String;)Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_3
    move-object v1, v6

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v6

    goto :goto_5

    :catch_0
    move-exception v6

    .line 1331
    :try_start_5
    invoke-virtual {v6}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "42S02"

    .line 1333
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v7

    const/16 v8, 0x47a

    if-ne v7, v8, :cond_4

    goto :goto_4

    .line 1334
    :cond_4
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v1, :cond_6

    .line 1346
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_6
    if-eqz v5, :cond_7

    .line 1352
    invoke-interface {v5}, Ljava/sql/Statement;->close()V

    .line 1345
    :cond_7
    throw p1

    :cond_8
    if-eqz v1, :cond_9

    .line 1346
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    :cond_9
    if-eqz v5, :cond_a

    .line 1352
    invoke-interface {v5}, Ljava/sql/Statement;->close()V

    .line 1358
    :cond_a
    invoke-direct {p0, v2, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :catchall_2
    move-exception p1

    move-object v1, p2

    goto :goto_6

    :catchall_3
    move-exception p1

    :goto_6
    if-eqz v1, :cond_b

    .line 1305
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V

    .line 1304
    :cond_b
    throw p1
.end method

.method public generatedKeyAlwaysReturned()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public getAttributes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 p1, 0x15

    .line 1365
    new-array p1, p1, [Lcom/mysql/jdbc/Field;

    .line 1366
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "TYPE_CAT"

    const/4 v0, 0x1

    const/16 v1, 0x20

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 1367
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "TYPE_SCHEM"

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p2, p1, v0

    .line 1368
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "TYPE_NAME"

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 1369
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "ATTR_NAME"

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 1370
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "DATA_TYPE"

    const/4 v2, 0x5

    invoke-direct {p2, p3, p4, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x4

    aput-object p2, p1, p3

    .line 1371
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "ATTR_TYPE_NAME"

    invoke-direct {p2, p4, v3, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p2, p1, v2

    .line 1372
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "ATTR_SIZE"

    invoke-direct {p2, p4, v3, p3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p4, 0x6

    aput-object p2, p1, p4

    .line 1373
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "DECIMAL_DIGITS"

    invoke-direct {p2, p4, v3, p3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p4, 0x7

    aput-object p2, p1, p4

    .line 1374
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "NUM_PREC_RADIX"

    invoke-direct {p2, p4, v3, p3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0x8

    aput-object p2, p1, p4

    .line 1375
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "NULLABLE "

    invoke-direct {p2, p4, v3, p3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0x9

    aput-object p2, p1, p4

    .line 1376
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "REMARKS"

    invoke-direct {p2, p4, v3, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0xa

    aput-object p2, p1, p4

    .line 1377
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "ATTR_DEF"

    invoke-direct {p2, p4, v3, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0xb

    aput-object p2, p1, p4

    .line 1378
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "SQL_DATA_TYPE"

    invoke-direct {p2, p4, v3, p3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0xc

    aput-object p2, p1, p4

    .line 1379
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "SQL_DATETIME_SUB"

    invoke-direct {p2, p4, v3, p3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0xd

    aput-object p2, p1, p4

    .line 1380
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "CHAR_OCTET_LENGTH"

    invoke-direct {p2, p4, v3, p3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0xe

    aput-object p2, p1, p4

    .line 1381
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v3, "ORDINAL_POSITION"

    invoke-direct {p2, p4, v3, p3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p3, 0xf

    aput-object p2, p1, p3

    .line 1382
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "IS_NULLABLE"

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p3, 0x10

    aput-object p2, p1, p3

    .line 1383
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "SCOPE_CATALOG"

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p3, 0x11

    aput-object p2, p1, p3

    .line 1384
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "SCOPE_SCHEMA"

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p3, 0x12

    aput-object p2, p1, p3

    .line 1385
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "SCOPE_TABLE"

    invoke-direct {p2, p3, p4, v0, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p3, 0x13

    aput-object p2, p1, p3

    .line 1386
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "SOURCE_DATA_TYPE"

    invoke-direct {p2, p3, p4, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p3, 0x14

    aput-object p2, p1, p3

    .line 1388
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getBestRowIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_2

    const/16 p2, 0x8

    .line 1438
    new-array p2, p2, [Lcom/mysql/jdbc/Field;

    const/4 p4, 0x0

    .line 1439
    new-instance p5, Lcom/mysql/jdbc/Field;

    const-string v0, ""

    const-string v1, "SCOPE"

    const/4 v2, 0x5

    invoke-direct {p5, v0, v1, v2, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p5, p2, p4

    .line 1440
    new-instance p4, Lcom/mysql/jdbc/Field;

    const-string p5, ""

    const-string v0, "COLUMN_NAME"

    const/16 v1, 0x20

    const/4 v3, 0x1

    invoke-direct {p4, p5, v0, v3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p4, p2, v3

    const/4 p4, 0x2

    .line 1441
    new-instance p5, Lcom/mysql/jdbc/Field;

    const-string v0, ""

    const-string v4, "DATA_TYPE"

    const/4 v5, 0x4

    invoke-direct {p5, v0, v4, v5, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p5, p2, p4

    const/4 p4, 0x3

    .line 1442
    new-instance p5, Lcom/mysql/jdbc/Field;

    const-string v0, ""

    const-string v4, "TYPE_NAME"

    invoke-direct {p5, v0, v4, v3, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p5, p2, p4

    .line 1443
    new-instance p4, Lcom/mysql/jdbc/Field;

    const-string p5, ""

    const-string v0, "COLUMN_SIZE"

    const/16 v1, 0xa

    invoke-direct {p4, p5, v0, v5, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p4, p2, v5

    .line 1444
    new-instance p4, Lcom/mysql/jdbc/Field;

    const-string p5, ""

    const-string v0, "BUFFER_LENGTH"

    invoke-direct {p4, p5, v0, v5, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p4, p2, v2

    const/4 p4, 0x6

    .line 1445
    new-instance p5, Lcom/mysql/jdbc/Field;

    const-string v0, ""

    const-string v3, "DECIMAL_DIGITS"

    invoke-direct {p5, v0, v3, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p5, p2, p4

    const/4 p4, 0x7

    .line 1446
    new-instance p5, Lcom/mysql/jdbc/Field;

    const-string v0, ""

    const-string v1, "PSEUDO_COLUMN"

    invoke-direct {p5, v0, v1, v2, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p5, p2, p4

    .line 1448
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    iget-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p5}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object p5

    .line 1453
    :try_start_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$1;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v5

    move-object v3, v0

    move-object v4, p0

    move-object v6, p3

    move-object v7, p5

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/mysql/jdbc/DatabaseMetaData$1;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/mysql/jdbc/DatabaseMetaData$1;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p5, :cond_0

    .line 1534
    invoke-interface {p5}, Ljava/sql/Statement;->close()V

    .line 1538
    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p5, :cond_1

    .line 1534
    invoke-interface {p5}, Ljava/sql/Statement;->close()V

    .line 1533
    :cond_1
    throw p1

    .line 1435
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method protected getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 2025
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2026
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2027
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    goto :goto_0

    .line 2029
    :cond_0
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    goto :goto_0

    .line 2033
    :cond_1
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    goto :goto_0

    .line 2035
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2037
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;

    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$SingleStringIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;)V

    goto :goto_0

    .line 2039
    :cond_3
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogs()Ljava/sql/ResultSet;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/mysql/jdbc/DatabaseMetaData$ResultSetIterator;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/sql/ResultSet;I)V

    :goto_0
    return-object v0
.end method

.method public getCatalogSeparator()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "."

    return-object v0
.end method

.method public getCatalogTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "database"

    return-object v0
.end method

.method public getCatalogs()Ljava/sql/ResultSet;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2064
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "SHOW DATABASES"

    .line 2065
    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2068
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->last()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2069
    invoke-interface {v2}, Ljava/sql/ResultSet;->getRow()I

    move-result v0

    .line 2070
    invoke-interface {v2}, Ljava/sql/ResultSet;->beforeFirst()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2073
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2074
    :goto_1
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 2075
    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2077
    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2079
    new-array v5, v6, [Lcom/mysql/jdbc/Field;

    .line 2080
    new-instance v7, Lcom/mysql/jdbc/Field;

    const-string v8, ""

    const-string v9, "TABLE_CAT"

    const/16 v10, 0xc

    invoke-interface {v2}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/sql/ResultSetMetaData;->getColumnDisplaySize(I)I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v7, v5, v3

    .line 2082
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2083
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2084
    new-array v8, v6, [[B

    .line 2085
    invoke-virtual {p0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v8, v3

    .line 2086
    new-instance v4, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2089
    :cond_2
    invoke-direct {p0, v5, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 2093
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 2095
    invoke-static {v2}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    :cond_3
    :goto_3
    if-eqz v1, :cond_4

    .line 2103
    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    .line 2105
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    :cond_4
    :goto_4
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v2

    move-object v12, v2

    move-object v2, v0

    move-object v0, v12

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_5
    if-eqz v2, :cond_5

    .line 2093
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    move-exception v2

    .line 2095
    invoke-static {v2}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 2103
    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_7

    :catch_3
    move-exception v1

    .line 2105
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 2091
    :cond_6
    :goto_7
    throw v0
.end method

.method public getClientInfoProperties()Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 7753
    new-array v1, v0, [Lcom/mysql/jdbc/Field;

    .line 7754
    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "NAME"

    const/16 v5, 0xff

    const/16 v6, 0xc

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 7755
    new-instance v2, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "MAX_LEN"

    const/16 v7, 0xa

    invoke-direct {v2, v3, v4, v0, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x1

    aput-object v2, v1, v0

    .line 7756
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DEFAULT_VALUE"

    invoke-direct {v0, v2, v3, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 7757
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DESCRIPTION"

    invoke-direct {v0, v2, v3, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 7759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v1, v0, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;Lcom/mysql/jdbc/MySQLConnection;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getColumnPrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const/16 v2, 0x8

    .line 2169
    new-array v3, v2, [Lcom/mysql/jdbc/Field;

    .line 2170
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "TABLE_CAT"

    const/16 v7, 0x40

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v8, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 2171
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v9, "TABLE_SCHEM"

    invoke-direct {v4, v6, v9, v8, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, v8

    .line 2172
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v9, "TABLE_NAME"

    invoke-direct {v4, v6, v9, v8, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 2173
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v9, ""

    const-string v10, "COLUMN_NAME"

    invoke-direct {v4, v9, v10, v8, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v9, 0x3

    aput-object v4, v3, v9

    .line 2174
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v10, ""

    const-string v11, "GRANTOR"

    const/16 v12, 0x4d

    invoke-direct {v4, v10, v11, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v10, 0x4

    aput-object v4, v3, v10

    .line 2175
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v11, ""

    const-string v13, "GRANTEE"

    invoke-direct {v4, v11, v13, v8, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x5

    aput-object v4, v3, v11

    .line 2176
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v12, ""

    const-string v13, "PRIVILEGE"

    invoke-direct {v4, v12, v13, v8, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x6

    aput-object v4, v3, v7

    .line 2177
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v12, ""

    const-string v13, "IS_GRANTABLE"

    invoke-direct {v4, v12, v13, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v12, 0x7

    aput-object v4, v3, v12

    const-string v4, "SELECT c.host, c.db, t.grantor, c.user, c.table_name, c.column_name, c.column_priv FROM mysql.columns_priv c, mysql.tables_priv t WHERE c.host = t.host AND c.db = t.db AND c.table_name = t.table_name AND c.db LIKE ? AND c.table_name = ? AND c.column_name LIKE ?"

    .line 2185
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 2188
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_0

    .line 2190
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v15, p1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v15, v14

    goto/16 :goto_7

    :cond_0
    const-string v15, "%"

    :goto_0
    invoke-interface {v4, v8, v15}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2191
    invoke-interface {v4, v6, v0}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    move-object/from16 v15, p4

    .line 2192
    invoke-interface {v4, v9, v15}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 2194
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2196
    :goto_1
    :try_start_2
    invoke-interface {v15}, Ljava/sql/ResultSet;->next()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 2197
    invoke-interface {v15, v8}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2198
    invoke-interface {v15, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2199
    invoke-interface {v15, v9}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2200
    invoke-interface {v15, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 2202
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1

    goto :goto_3

    :cond_1
    :goto_2
    move-object/from16 v10, v16

    goto :goto_4

    :cond_2
    :goto_3
    const-string v16, "%"

    goto :goto_2

    .line 2206
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v11, :cond_3

    .line 2208
    iget-object v10, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v10}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "@"

    .line 2209
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2210
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2213
    :cond_3
    invoke-interface {v15, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2214
    invoke-interface {v15, v12}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 2217
    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    .line 2219
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v7, ","

    invoke-direct {v12, v11, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    :goto_5
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2222
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 2223
    new-array v11, v2, [[B

    .line 2224
    invoke-virtual {v1, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v16

    aput-object v16, v11, v5

    const/16 v16, 0x1

    aput-object v14, v11, v16

    .line 2226
    invoke-virtual {v1, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v18

    const/16 v19, 0x2

    aput-object v18, v11, v19

    .line 2227
    invoke-virtual {v1, v10}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v18

    const/16 v20, 0x3

    aput-object v18, v11, v20

    if-eqz v6, :cond_4

    .line 2230
    invoke-virtual {v1, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v18

    const/16 v21, 0x4

    aput-object v18, v11, v21

    goto :goto_6

    :cond_4
    const/16 v21, 0x4

    aput-object v14, v11, v21

    .line 2235
    :goto_6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v17, 0x5

    aput-object v2, v11, v17

    .line 2236
    invoke-virtual {v1, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v7, 0x6

    aput-object v2, v11, v7

    const/4 v2, 0x7

    aput-object v14, v11, v2

    .line 2238
    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v2, v11, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v2, 0x8

    const/4 v5, 0x0

    goto :goto_5

    :cond_5
    const/4 v7, 0x6

    :cond_6
    const/16 v16, 0x1

    const/16 v17, 0x5

    const/16 v19, 0x2

    const/16 v20, 0x3

    const/16 v21, 0x4

    const/16 v2, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x7

    goto/16 :goto_1

    :cond_7
    if-eqz v15, :cond_8

    .line 2245
    :try_start_3
    invoke-interface {v15}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :cond_8
    if-eqz v4, :cond_9

    .line 2254
    :try_start_4
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 2262
    :catch_1
    :cond_9
    invoke-direct {v1, v3, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v14

    move-object v15, v4

    :goto_7
    if-eqz v15, :cond_a

    .line 2245
    :try_start_5
    invoke-interface {v15}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    :cond_a
    if-eqz v4, :cond_b

    .line 2254
    :try_start_6
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 2243
    :catch_3
    :cond_b
    throw v0
.end method

.method protected getColumnType(ZZZZ)I
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    if-eqz p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x4

    return p1

    :cond_2
    if-eqz p3, :cond_3

    const/4 p1, 0x5

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p4, :cond_1

    .line 2320
    iget-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p4}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p4, "%"

    goto :goto_0

    .line 2323
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Column name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    move-object v5, p4

    .line 2330
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object p4

    .line 2332
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2333
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v9

    .line 2337
    :try_start_0
    new-instance v10, Lcom/mysql/jdbc/DatabaseMetaData$2;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v0, v10

    move-object v1, p0

    move-object v3, p3

    move-object v4, p2

    move-object v6, v9

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$2;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v10}, Lcom/mysql/jdbc/DatabaseMetaData$2;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_2

    .line 2562
    invoke-interface {v9}, Ljava/sql/Statement;->close()V

    .line 2566
    :cond_2
    invoke-direct {p0, p4, v8}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v9, :cond_3

    .line 2562
    invoke-interface {v9}, Ljava/sql/Statement;->close()V

    .line 2561
    :cond_3
    throw p1
.end method

.method public getConnection()Ljava/sql/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2608
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    return-object v0
.end method

.method public getCrossReference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v12, p0

    if-eqz p3, :cond_2

    .line 2671
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object v13

    .line 2673
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2675
    iget-object v1, v12, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v2, 0x3

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2677
    iget-object v1, v12, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v15

    .line 2681
    :try_start_0
    new-instance v16, Lcom/mysql/jdbc/DatabaseMetaData$3;

    move-object/from16 v7, p4

    invoke-virtual {v12, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v3

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v4, v15

    move-object/from16 v5, p6

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object v11, v14

    invoke-direct/range {v1 .. v11}, Lcom/mysql/jdbc/DatabaseMetaData$3;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual/range {v16 .. v16}, Lcom/mysql/jdbc/DatabaseMetaData$3;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_1

    .line 2794
    invoke-interface {v15}, Ljava/sql/Statement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/sql/Statement;->close()V

    .line 2793
    :cond_0
    throw v0

    .line 2799
    :cond_1
    :goto_0
    invoke-direct {v12, v13, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    .line 2668
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Table not specified."

    const-string v2, "S1009"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method public getDatabaseMajorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2827
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerMajorVersion()I

    move-result v0

    return v0
.end method

.method public getDatabaseMinorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2834
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerMinorVersion()I

    move-result v0

    return v0
.end method

.method public getDatabaseProductName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "MySQL"

    return-object v0
.end method

.method public getDatabaseProductVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2854
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultTransactionIsolation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 2867
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsIsolationLevel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDriverMajorVersion()I
    .locals 1

    .line 2880
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMajorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getDriverMinorVersion()I
    .locals 1

    .line 2889
    invoke-static {}, Lcom/mysql/jdbc/NonRegisteringDriver;->getMinorVersionInternal()I

    move-result v0

    return v0
.end method

.method public getDriverName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "MySQL Connector Java"

    return-object v0
.end method

.method public getDriverVersion()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "mysql-connector-java-5.1.43 ( Revision: 1d14b699eff3e6112aaedb1cbe5a151ab81f98f1 )"

    return-object v0
.end method

.method protected getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;
    .locals 1

    .line 1076
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->exceptionInterceptor:Lcom/mysql/jdbc/ExceptionInterceptor;

    return-object v0
.end method

.method protected getExportKeyResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3070
    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getResultsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public getExportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 2963
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object p2

    .line 2965
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2967
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2969
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v7

    .line 2973
    :try_start_0
    new-instance v8, Lcom/mysql/jdbc/DatabaseMetaData$4;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v0, v8

    move-object v1, p0

    move-object v3, v7

    move-object v4, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/DatabaseMetaData$4;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v8}, Lcom/mysql/jdbc/DatabaseMetaData$4;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 3040
    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    .line 3039
    :cond_0
    throw p1

    .line 3045
    :cond_1
    :goto_0
    invoke-direct {p0, p2, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    .line 2960
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getExtraNameCharacters()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "#@"

    return-object v0
.end method

.method protected getForeignKeyActions(Ljava/lang/String;)[I
    .locals 4

    const/4 v0, 0x2

    .line 3094
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-string v1, ")"

    .line 3096
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3098
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    add-int/2addr v1, v3

    .line 3099
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 3101
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCascadeDeleteOption(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 3102
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCascadeUpdateOption(Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v3

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x3
        0x3
    .end array-data
.end method

.method protected getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x2e

    .line 917
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 918
    iget-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getPedantic()Z

    move-result v1

    invoke-static {p2, p1, v1}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFunctionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7770
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFunctionColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 7772
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getFunctions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x6

    .line 7831
    new-array v2, v0, [Lcom/mysql/jdbc/Field;

    .line 7833
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FUNCTION_CAT"

    const/16 v5, 0xff

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 7834
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FUNCTION_SCHEM"

    invoke-direct {v1, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v2, v6

    .line 7835
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FUNCTION_NAME"

    invoke-direct {v1, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 7836
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "REMARKS"

    invoke-direct {v1, v3, v4, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 7837
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v3, ""

    const-string v4, "FUNCTION_TYPE"

    const/4 v7, 0x5

    invoke-direct {v1, v3, v4, v7, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x4

    aput-object v1, v2, v0

    .line 7838
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v3, "SPECIFIC_NAME"

    invoke-direct {v0, v1, v3, v6, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, v2, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 7840
    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getIdentifierQuoteString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3117
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsQuotedIdentifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3118
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->useAnsiQuotedIdentifiers()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\""

    goto :goto_0

    :cond_0
    const-string v0, "`"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, " "

    return-object v0
.end method

.method protected getImportKeyResults(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/ResultSetRow;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 3278
    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getResultsImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method

.method public getImportedKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 3176
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFkMetadataFields()[Lcom/mysql/jdbc/Field;

    move-result-object p2

    .line 3178
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3180
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x17

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3182
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v7

    .line 3186
    :try_start_0
    new-instance v8, Lcom/mysql/jdbc/DatabaseMetaData$5;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v0, v8

    move-object v1, p0

    move-object v3, p3

    move-object v4, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/mysql/jdbc/DatabaseMetaData$5;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v8}, Lcom/mysql/jdbc/DatabaseMetaData$5;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_1

    .line 3250
    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/sql/Statement;->close()V

    .line 3249
    :cond_0
    throw p1

    .line 3255
    :cond_1
    :goto_0
    invoke-direct {p0, p2, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    .line 3173
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getIndexInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3333
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createIndexInfoFields()[Lcom/mysql/jdbc/Field;

    move-result-object p2

    .line 3335
    new-instance p5, Ljava/util/TreeMap;

    invoke-direct {p5}, Ljava/util/TreeMap;-><init>()V

    .line 3336
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3337
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v8

    .line 3341
    :try_start_0
    new-instance v9, Lcom/mysql/jdbc/DatabaseMetaData$6;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v0, v9

    move-object v1, p0

    move-object v3, p3

    move-object v4, v8

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$6;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;ZLjava/util/SortedMap;)V

    invoke-virtual {v9}, Lcom/mysql/jdbc/DatabaseMetaData$6;->doForAll()V

    .line 3420
    invoke-interface {p5}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3421
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 3422
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3425
    :cond_0
    invoke-direct {p0, p2, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 3430
    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    .line 3429
    :cond_2
    throw p1
.end method

.method protected getJDBC4FunctionNoTableConstant()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getJDBCMajorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x4

    return v0
.end method

.method public getJDBCMinorVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxBinaryLiteralLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const v0, 0xfffff8

    return v0
.end method

.method public getMaxCatalogNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x20

    return v0
.end method

.method public getMaxCharLiteralLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const v0, 0xfffff8

    return v0
.end method

.method public getMaxColumnNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x40

    return v0
.end method

.method public getMaxColumnsInGroupBy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x40

    return v0
.end method

.method public getMaxColumnsInIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method public getMaxColumnsInOrderBy()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x40

    return v0
.end method

.method public getMaxColumnsInSelect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x100

    return v0
.end method

.method public getMaxColumnsInTable()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x200

    return v0
.end method

.method public getMaxConnections()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxCursorNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x40

    return v0
.end method

.method public getMaxIndexLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x100

    return v0
.end method

.method public getMaxProcedureNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxRowSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const v0, 0x7ffffff7

    return v0
.end method

.method public getMaxSchemaNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxStatementLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3629
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public getMaxStatements()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxTableNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x40

    return v0
.end method

.method public getMaxTablesInSelect()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x100

    return v0
.end method

.method public getMaxUserNameLength()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method public getNumericFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "ABS,ACOS,ASIN,ATAN,ATAN2,BIT_COUNT,CEILING,COS,COT,DEGREES,EXP,FLOOR,LOG,LOG10,MAX,MIN,MOD,PI,POW,POWER,RADIANS,RAND,ROUND,SIN,SQRT,TAN,TRUNCATE"

    return-object v0
.end method

.method public getPrimaryKeys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p2, 0x6

    .line 3708
    new-array p2, p2, [Lcom/mysql/jdbc/Field;

    .line 3709
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "TABLE_CAT"

    const/16 v3, 0xff

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 3710
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v5, "TABLE_SCHEM"

    invoke-direct {v0, v2, v5, v4, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, p2, v4

    .line 3711
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "TABLE_NAME"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x2

    aput-object v0, p2, v1

    .line 3712
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "COLUMN_NAME"

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x3

    aput-object v0, p2, v1

    .line 3713
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "KEY_SEQ"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v2, v5, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v1, 0x4

    aput-object v0, p2, v1

    .line 3714
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "PK_NAME"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, p2, v5

    if-eqz p3, :cond_2

    .line 3720
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3721
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 3725
    :try_start_0
    new-instance v2, Lcom/mysql/jdbc/DatabaseMetaData$7;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v8

    move-object v6, v2

    move-object v7, p0

    move-object v9, p3

    move-object v10, v1

    move-object v11, v0

    invoke-direct/range {v6 .. v11}, Lcom/mysql/jdbc/DatabaseMetaData$7;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$7;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3781
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 3785
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 3781
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 3780
    :cond_1
    throw p1

    .line 3717
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getProcedureColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 3864
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createProcedureColumnsFields()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 3866
    invoke-virtual/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method protected getProcedureOrFunctionColumns([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v0, p4

    .line 3898
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3902
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->supportsStoredProcedures()Z

    move-result v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_a

    const/4 v13, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "%"

    .line 3907
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3908
    invoke-static/range {p4 .. p4}, Lcom/mysql/jdbc/StringUtils;->sanitizeProcOrFuncName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_7

    :cond_0
    move-object v1, v13

    :goto_0
    if-nez v1, :cond_1

    move-object/from16 v14, p2

    :goto_1
    move-object v5, v0

    goto :goto_2

    .line 3918
    :cond_1
    iget-object v0, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    move-object/from16 v14, p2

    invoke-static {v1, v14, v0, v2}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 3922
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 3923
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3924
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v5, v1

    .line 3930
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 3934
    :goto_3
    :try_start_1
    invoke-interface {v1}, Ljava/sql/ResultSet;->next()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3935
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    invoke-interface {v1, v12}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->getFullyQualifiedName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-interface {v1, v3}, Ljava/sql/ResultSet;->getShort(I)S

    move-result v3

    if-ne v3, v12, :cond_3

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->PROCEDURE:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    goto :goto_4

    :cond_3
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;->FUNCTION:Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    :goto_4
    invoke-direct {v0, v8, v2, v3}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_3

    :cond_4
    if-nez v0, :cond_5

    goto :goto_5

    .line 3949
    :cond_5
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_5
    if-eqz v1, :cond_6

    .line 3960
    :try_start_2
    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v13, v0

    :cond_6
    :goto_6
    if-nez v13, :cond_7

    goto :goto_9

    .line 3967
    :cond_7
    throw v13

    :catchall_1
    move-exception v0

    move-object/from16 v21, v1

    move-object v1, v0

    move-object/from16 v0, v21

    :goto_7
    if-eqz v0, :cond_8

    .line 3960
    :try_start_3
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v13, v0

    :cond_8
    :goto_8
    if-eqz v13, :cond_9

    .line 3967
    throw v13

    .line 3956
    :cond_9
    throw v1

    :cond_a
    move-object/from16 v14, p2

    .line 3972
    :goto_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3976
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    .line 3977
    invoke-virtual {v1}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 3978
    invoke-virtual {v1}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;

    const-string v1, " "

    .line 3981
    iget-object v2, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v15, 0x0

    const-string v17, "."

    .line 3982
    iget-object v1, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v5, v8, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v5

    if-eqz v5, :cond_b

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    :goto_b
    move-object/from16 v20, v5

    goto :goto_c

    :cond_b
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    goto :goto_b

    :goto_c
    move-object/from16 v16, v3

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    invoke-static/range {v15 .. v20}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v1

    goto :goto_d

    :cond_c
    const-string v1, "."

    .line 3985
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_d
    if-lez v1, :cond_d

    .line 3989
    invoke-virtual {v3, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v8, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v14, v1

    .line 3995
    :cond_d
    array-length v1, v9

    const/16 v2, 0x11

    if-ne v1, v2, :cond_e

    const/4 v7, 0x1

    goto :goto_e

    :cond_e
    const/4 v7, 0x0

    :goto_e
    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v5, p5

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData;->getCallStmtParameterTypes(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/DatabaseMetaData$ProcedureType;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_a

    .line 3998
    :cond_f
    invoke-direct {v8, v9, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getProcedureTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "PROCEDURE"

    return-object v0
.end method

.method public getProcedures(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4038
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createFieldMetadataForGetProcedures()[Lcom/mysql/jdbc/Field;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 4040
    invoke-virtual/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method protected getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p4, :cond_1

    .line 4069
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v5, p4

    goto :goto_2

    .line 4070
    :cond_1
    :goto_1
    iget-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p3}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p4, "%"

    goto :goto_0

    .line 4078
    :goto_2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4080
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->supportsStoredProcedures()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 4083
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 4085
    new-instance v8, Lcom/mysql/jdbc/DatabaseMetaData$8;

    invoke-virtual {p0, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v0, v8

    move-object v1, p0

    move v3, p5

    move v4, p6

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/DatabaseMetaData$8;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;ZZLjava/lang/String;Ljava/util/List;[Lcom/mysql/jdbc/Field;)V

    invoke-virtual {v8}, Lcom/mysql/jdbc/DatabaseMetaData$8;->doForAll()V

    .line 4187
    invoke-static {p4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4188
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;

    .line 4189
    invoke-virtual {p4}, Lcom/mysql/jdbc/DatabaseMetaData$ComparableWrapper;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 4193
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    .line 4073
    :cond_3
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Procedure name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public getPseudoColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 p1, 0xc

    .line 7891
    new-array p2, p1, [Lcom/mysql/jdbc/Field;

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "TABLE_CAT"

    const/16 v1, 0x200

    invoke-direct {p3, p4, v0, p1, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p4, 0x0

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "TABLE_SCHEM"

    invoke-direct {p3, p4, v0, p1, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p4, 0x1

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "TABLE_NAME"

    invoke-direct {p3, p4, v0, p1, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p4, 0x2

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "COLUMN_NAME"

    invoke-direct {p3, p4, v0, p1, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p4, 0x3

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "DATA_TYPE"

    const/4 v2, 0x4

    invoke-direct {p3, p4, v0, v2, p1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p3, p2, v2

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "COLUMN_SIZE"

    invoke-direct {p3, p4, v0, v2, p1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p4, 0x5

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "DECIMAL_DIGITS"

    invoke-direct {p3, p4, v0, v2, p1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p4, 0x6

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "NUM_PREC_RADIX"

    invoke-direct {p3, p4, v0, v2, p1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p4, 0x7

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "COLUMN_USAGE"

    invoke-direct {p3, p4, v0, p1, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0x8

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "REMARKS"

    invoke-direct {p3, p4, v0, p1, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0x9

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "CHAR_OCTET_LENGTH"

    invoke-direct {p3, p4, v0, v2, p1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p4, 0xa

    aput-object p3, p2, p4

    new-instance p3, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "IS_NULLABLE"

    invoke-direct {p3, p4, v0, p1, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 p1, 0xb

    aput-object p3, p2, p1

    .line 7898
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getResultSetHoldability()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public getSQLKeywords()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4317
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4318
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    return-object v0

    .line 4321
    :cond_0
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaData;

    monitor-enter v0

    .line 4323
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 4324
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 4327
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 4328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4330
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData;->MYSQL_KEYWORDS:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4331
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData;->SQL2003_KEYWORDS:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/mysql/jdbc/DatabaseMetaData;->SQL92_KEYWORDS:[Ljava/lang/String;

    :goto_0
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 4333
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    .line 4334
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    .line 4337
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    .line 4338
    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData;->mysqlKeywords:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 4339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSQLStateType()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4346
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    return v2

    .line 4350
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseSqlStateCodes()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public getSchemaTerm()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getSchemas()Ljava/sql/ResultSet;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 4273
    new-array v0, v0, [Lcom/mysql/jdbc/Field;

    .line 4274
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_SCHEM"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 4275
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TABLE_CATALOG"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, v0, v4

    .line 4277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4278
    invoke-direct {p0, v0, v1}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getSchemas(Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x2

    .line 7853
    new-array p1, p1, [Lcom/mysql/jdbc/Field;

    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string v0, ""

    const-string v1, "TABLE_SCHEM"

    const/16 v2, 0xff

    const/16 v3, 0xc

    invoke-direct {p2, v0, v1, v3, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    aput-object p2, p1, v0

    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string v0, ""

    const-string v1, "TABLE_CATALOG"

    invoke-direct {p2, v0, v1, v3, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 7855
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getSearchStringEscape()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "\\"

    return-object v0
.end method

.method public getStringFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "ASCII,BIN,BIT_LENGTH,CHAR,CHARACTER_LENGTH,CHAR_LENGTH,CONCAT,CONCAT_WS,CONV,ELT,EXPORT_SET,FIELD,FIND_IN_SET,HEX,INSERT,INSTR,LCASE,LEFT,LENGTH,LOAD_FILE,LOCATE,LOCATE,LOWER,LPAD,LTRIM,MAKE_SET,MATCH,MID,OCT,OCTET_LENGTH,ORD,POSITION,QUOTE,REPEAT,REPLACE,REVERSE,RIGHT,RPAD,RTRIM,SOUNDEX,SPACE,STRCMP,SUBSTRING,SUBSTRING,SUBSTRING,SUBSTRING,SUBSTRING_INDEX,TRIM,UCASE,UPPER"

    return-object v0
.end method

.method public getSuperTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x4

    .line 4374
    new-array p1, p1, [Lcom/mysql/jdbc/Field;

    .line 4375
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "TABLE_CAT"

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 4376
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "TABLE_SCHEM"

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p2, p1, v2

    .line 4377
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "TABLE_NAME"

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 4378
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "SUPERTABLE_NAME"

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 4380
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getSuperTypes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x6

    .line 4387
    new-array p1, p1, [Lcom/mysql/jdbc/Field;

    .line 4388
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "TYPE_CAT"

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 4389
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "TYPE_SCHEM"

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p2, p1, v2

    .line 4390
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "TYPE_NAME"

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 4391
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "SUPERTYPE_CAT"

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 4392
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "SUPERTYPE_SCHEM"

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x4

    aput-object p2, p1, p3

    .line 4393
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string v0, "SUPERTYPE_NAME"

    invoke-direct {p2, p3, v0, v2, v1}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x5

    aput-object p2, p1, p3

    .line 4395
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getSystemFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "DATABASE,USER,SYSTEM_USER,SESSION_USER,PASSWORD,ENCRYPT,LAST_INSERT_ID,VERSION"

    return-object v0
.end method

.method protected getTableNameWithCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4409
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getTablePrivileges(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez p3, :cond_1

    .line 4448
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "%"

    goto :goto_0

    .line 4451
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v2, "Table name pattern can not be NULL or empty."

    const-string v3, "S1009"

    invoke-static {v2, v3, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    :cond_1
    move-object/from16 v2, p3

    :goto_0
    const/4 v3, 0x7

    .line 4456
    new-array v3, v3, [Lcom/mysql/jdbc/Field;

    .line 4457
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v6, "TABLE_CAT"

    const/16 v7, 0x40

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v8, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 4458
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v9, "TABLE_SCHEM"

    invoke-direct {v4, v6, v9, v8, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v4, v3, v8

    .line 4459
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v6, ""

    const-string v9, "TABLE_NAME"

    invoke-direct {v4, v6, v9, v8, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v6, 0x2

    aput-object v4, v3, v6

    .line 4460
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v9, ""

    const-string v10, "GRANTOR"

    const/16 v11, 0x4d

    invoke-direct {v4, v9, v10, v8, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v9, 0x3

    aput-object v4, v3, v9

    .line 4461
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v10, ""

    const-string v12, "GRANTEE"

    invoke-direct {v4, v10, v12, v8, v11}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v10, 0x4

    aput-object v4, v3, v10

    .line 4462
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v11, ""

    const-string v12, "PRIVILEGE"

    invoke-direct {v4, v11, v12, v8, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x5

    aput-object v4, v3, v7

    .line 4463
    new-instance v4, Lcom/mysql/jdbc/Field;

    const-string v11, ""

    const-string v12, "IS_GRANTABLE"

    invoke-direct {v4, v11, v12, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x6

    aput-object v4, v3, v11

    const-string v4, "SELECT host,db,table_name,grantor,user,table_priv FROM mysql.tables_priv WHERE db LIKE ? AND table_name LIKE ?"

    .line 4468
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4472
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_2

    .line 4474
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_2

    move-object v14, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_2
    const-string v14, "%"

    :goto_1
    invoke-interface {v4, v8, v14}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4475
    invoke-interface {v4, v6, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4477
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4479
    :goto_2
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 4480
    invoke-interface {v2, v8}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 4481
    invoke-interface {v2, v6}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4482
    invoke-interface {v2, v9}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4483
    invoke-interface {v2, v10}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4484
    invoke-interface {v2, v7}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 4486
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_3

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v7, v18

    goto :goto_5

    :cond_4
    :goto_4
    const-string v18, "%"

    goto :goto_3

    .line 4490
    :goto_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v14, :cond_5

    .line 4492
    iget-object v7, v1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "@"

    .line 4493
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4494
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4497
    :cond_5
    invoke-interface {v2, v11}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 4500
    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 4502
    new-instance v14, Ljava/util/StringTokenizer;

    const-string v11, ","

    invoke-direct {v14, v7, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4504
    :goto_6
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4505
    invoke-virtual {v14}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    const-string v11, "%"

    move-object/from16 v8, p2

    .line 4511
    invoke-virtual {v1, v0, v8, v6, v11}, Lcom/mysql/jdbc/DatabaseMetaData;->getColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4513
    :goto_7
    :try_start_4
    invoke-interface {v11}, Ljava/sql/ResultSet;->next()Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v13, 0x8

    .line 4514
    new-array v13, v13, [[B

    .line 4515
    invoke-virtual {v1, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v18

    aput-object v18, v13, v5

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput-object v19, v13, v18

    .line 4517
    invoke-virtual {v1, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v19

    const/16 v16, 0x2

    aput-object v19, v13, v16

    if-eqz v9, :cond_6

    .line 4520
    invoke-virtual {v1, v9}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v19

    const/16 v17, 0x3

    aput-object v19, v13, v17

    goto :goto_8

    :cond_6
    const/16 v17, 0x3

    const/16 v19, 0x0

    aput-object v19, v13, v17

    .line 4525
    :goto_8
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v19, 0x4

    aput-object v5, v13, v19

    .line 4526
    invoke-virtual {v1, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v20, 0x5

    aput-object v5, v13, v20

    const/4 v5, 0x0

    const/16 v21, 0x6

    aput-object v5, v13, v21

    .line 4528
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    invoke-direct {v5, v13, v0}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v0, p1

    const/4 v5, 0x0

    goto :goto_7

    :cond_7
    const/16 v16, 0x2

    const/16 v17, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    if-eqz v11, :cond_8

    .line 4533
    :try_start_5
    invoke-interface {v11}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catch_0
    :cond_8
    move-object/from16 v0, p1

    const/4 v5, 0x0

    const/4 v8, 0x1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    goto :goto_9

    :catchall_2
    move-exception v0

    const/4 v11, 0x0

    :goto_9
    if-eqz v11, :cond_9

    :try_start_6
    invoke-interface {v11}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 4531
    :catch_1
    :cond_9
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_a
    move-object/from16 v8, p2

    const/16 v16, 0x2

    const/16 v17, 0x3

    const/16 v18, 0x1

    const/16 v19, 0x4

    const/16 v20, 0x5

    const/16 v21, 0x6

    move-object/from16 v0, p1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x6

    goto/16 :goto_2

    :cond_b
    if-eqz v2, :cond_c

    .line 4544
    :try_start_8
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :cond_c
    if-eqz v4, :cond_d

    .line 4553
    :try_start_9
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 4561
    :catch_3
    :cond_d
    invoke-direct {v1, v3, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0

    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_a
    if-eqz v2, :cond_e

    .line 4544
    :try_start_a
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :catch_4
    :cond_e
    if-eqz v4, :cond_f

    .line 4553
    :try_start_b
    invoke-interface {v4}, Ljava/sql/PreparedStatement;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 4542
    :catch_5
    :cond_f
    throw v0
.end method

.method public getTableTypes()Ljava/sql/ResultSet;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    .line 4850
    new-array v2, v1, [Lcom/mysql/jdbc/Field;

    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "TABLE_TYPE"

    const/16 v6, 0xc

    const/16 v7, 0x100

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4852
    iget-object v3, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v5, 0x5

    invoke-interface {v3, v5, v4, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v3

    .line 4854
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v6, v1, [[B

    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4855
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v6, v1, [[B

    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_0

    .line 4857
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v6, v1, [[B

    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4859
    :cond_0
    new-instance v5, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v6, v1, [[B

    sget-object v7, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v7}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_1

    .line 4861
    new-instance v3, Lcom/mysql/jdbc/ByteArrayRow;

    new-array v1, v1, [[B

    sget-object v5, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v5}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->asBytes()[B

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4864
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v0

    return-object v0
.end method

.method public getTables(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p3, :cond_1

    .line 4600
    iget-object p2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getNullNamePatternMatchesAll()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p3, "%"

    goto :goto_0

    .line 4603
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table name pattern can not be NULL or empty."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 4608
    :cond_1
    :goto_0
    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    .line 4609
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 4611
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v8

    const-string v0, ""

    if-eqz p1, :cond_3

    .line 4616
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_2

    .line 4617
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getNullCatalogMeansCurrent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4618
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->database:Ljava/lang/String;

    .line 4624
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v2, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->isNoBackslashEscapesSet()Z

    move-result v2

    invoke-static {p3, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 4626
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 p3, 0x1

    .line 4627
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :cond_5
    move-object v4, p3

    .line 4633
    :try_start_0
    new-instance p3, Lcom/mysql/jdbc/DatabaseMetaData$9;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v2

    move-object v0, p3

    move-object v1, p0

    move-object v3, v8

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$9;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/sql/Statement;Ljava/lang/String;[Ljava/lang/String;Ljava/util/SortedMap;)V

    invoke-virtual {p3}, Lcom/mysql/jdbc/DatabaseMetaData$9;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_6

    .line 4808
    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    .line 4812
    :cond_6
    invoke-interface {p2}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4813
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->createTablesFields()[Lcom/mysql/jdbc/Field;

    move-result-object p1

    invoke-direct {p0, p1, v7}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v8, :cond_7

    .line 4808
    invoke-interface {v8}, Ljava/sql/Statement;->close()V

    .line 4807
    :cond_7
    throw p1
.end method

.method public getTimeDateFunctions()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "DAYOFWEEK,WEEKDAY,DAYOFMONTH,DAYOFYEAR,MONTH,DAYNAME,MONTHNAME,QUARTER,WEEK,YEAR,HOUR,MINUTE,SECOND,PERIOD_ADD,PERIOD_DIFF,TO_DAYS,FROM_DAYS,DATE_FORMAT,TIME_FORMAT,CURDATE,CURRENT_DATE,CURTIME,CURRENT_TIME,NOW,SYSDATE,CURRENT_TIMESTAMP,UNIX_TIMESTAMP,FROM_UNIXTIME,SEC_TO_TIME,TIME_TO_SEC"

    return-object v0
.end method

.method public getTypeInfo()Ljava/sql/ResultSet;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x12

    .line 4968
    new-array v2, v1, [Lcom/mysql/jdbc/Field;

    .line 4969
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v4, ""

    const-string v5, "TYPE_NAME"

    const/4 v6, 0x1

    const/16 v7, 0x20

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 4970
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v7, "DATA_TYPE"

    const/4 v8, 0x4

    const/4 v9, 0x5

    invoke-direct {v3, v5, v7, v8, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v6

    .line 4971
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v5, ""

    const-string v7, "PRECISION"

    const/16 v10, 0xa

    invoke-direct {v3, v5, v7, v8, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 4972
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v7, ""

    const-string v11, "LITERAL_PREFIX"

    invoke-direct {v3, v7, v11, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v7, 0x3

    aput-object v3, v2, v7

    .line 4973
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v11, ""

    const-string v12, "LITERAL_SUFFIX"

    invoke-direct {v3, v11, v12, v6, v8}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v8

    .line 4974
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v11, ""

    const-string v12, "CREATE_PARAMS"

    const/16 v13, 0x20

    invoke-direct {v3, v11, v12, v6, v13}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v9

    .line 4975
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v11, ""

    const-string v12, "NULLABLE"

    invoke-direct {v3, v11, v12, v9, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v11, 0x6

    aput-object v3, v2, v11

    .line 4976
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v12, ""

    const-string v13, "CASE_SENSITIVE"

    const/16 v14, 0x10

    invoke-direct {v3, v12, v13, v14, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v12, 0x7

    aput-object v3, v2, v12

    .line 4977
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v13, ""

    const-string v15, "SEARCHABLE"

    invoke-direct {v3, v13, v15, v9, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0x8

    aput-object v3, v2, v13

    .line 4978
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, ""

    const-string v13, "UNSIGNED_ATTRIBUTE"

    invoke-direct {v3, v15, v13, v14, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0x9

    aput-object v3, v2, v13

    .line 4979
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, ""

    const-string v13, "FIXED_PREC_SCALE"

    invoke-direct {v3, v15, v13, v14, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v10

    .line 4980
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v13, ""

    const-string v15, "AUTO_INCREMENT"

    invoke-direct {v3, v13, v15, v14, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0xb

    aput-object v3, v2, v13

    .line 4981
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v15, ""

    const-string v13, "LOCAL_TYPE_NAME"

    const/16 v12, 0x20

    invoke-direct {v3, v15, v13, v6, v12}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v12, 0xc

    aput-object v3, v2, v12

    .line 4982
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v13, ""

    const-string v15, "MINIMUM_SCALE"

    invoke-direct {v3, v13, v15, v9, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0xd

    aput-object v3, v2, v13

    .line 4983
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v13, ""

    const-string v15, "MAXIMUM_SCALE"

    invoke-direct {v3, v13, v15, v9, v9}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0xe

    aput-object v3, v2, v13

    .line 4984
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v13, ""

    const-string v15, "SQL_DATA_TYPE"

    invoke-direct {v3, v13, v15, v8, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0xf

    aput-object v3, v2, v13

    .line 4985
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v13, ""

    const-string v15, "SQL_DATETIME_SUB"

    invoke-direct {v3, v13, v15, v8, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v3, v2, v14

    .line 4986
    new-instance v3, Lcom/mysql/jdbc/Field;

    const-string v13, ""

    const-string v15, "NUM_PREC_RADIX"

    invoke-direct {v3, v13, v15, v8, v10}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/16 v13, 0x11

    aput-object v3, v2, v13

    const/4 v3, 0x0

    .line 4988
    check-cast v3, [[B

    .line 4989
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 4997
    new-array v13, v1, [[B

    const-string v15, "BIT"

    .line 4998
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v4

    const/4 v15, -0x7

    .line 4999
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    aput-object v15, v13, v6

    const-string v15, "1"

    .line 5002
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v5

    const-string v15, ""

    .line 5003
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v7

    const-string v15, ""

    .line 5004
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v8

    const-string v15, ""

    .line 5005
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v9

    .line 5006
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    aput-object v15, v13, v11

    const-string v15, "true"

    .line 5009
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v19, 0x7

    aput-object v15, v13, v19

    .line 5010
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0x8

    aput-object v15, v13, v16

    const-string v15, "false"

    .line 5013
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v17, 0x9

    aput-object v15, v13, v17

    const-string v15, "false"

    .line 5014
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v10

    const-string v15, "false"

    .line 5015
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v18, 0xb

    aput-object v15, v13, v18

    const-string v15, "BIT"

    .line 5016
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v12

    const-string v15, "0"

    .line 5017
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v20, 0xd

    aput-object v15, v13, v20

    const-string v15, "0"

    .line 5018
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v20, 0xe

    aput-object v15, v13, v20

    const-string v15, "0"

    .line 5019
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v20, 0xf

    aput-object v15, v13, v20

    const-string v15, "0"

    .line 5020
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const-string v15, "10"

    .line 5021
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v20, 0x11

    aput-object v15, v13, v20

    .line 5022
    new-instance v15, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v15, v13, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5027
    new-array v13, v1, [[B

    const-string v14, "BOOL"

    .line 5028
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x7

    .line 5029
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "1"

    .line 5032
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, ""

    .line 5033
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, ""

    .line 5034
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5035
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5036
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "true"

    .line 5039
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5040
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5043
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5044
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5045
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "BOOL"

    .line 5046
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5047
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5048
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5049
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5050
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5051
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5052
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5057
    new-array v13, v1, [[B

    const-string v14, "TINYINT"

    .line 5058
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x6

    .line 5059
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "3"

    .line 5062
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, ""

    .line 5063
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, ""

    .line 5064
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, "[(M)] [UNSIGNED] [ZEROFILL]"

    .line 5065
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5066
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5069
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5070
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "true"

    .line 5073
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5074
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "true"

    .line 5075
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "TINYINT"

    .line 5076
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5077
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5078
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5079
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5080
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5081
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5082
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5084
    new-array v13, v1, [[B

    const-string v14, "TINYINT UNSIGNED"

    .line 5085
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x6

    .line 5086
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "3"

    .line 5089
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, ""

    .line 5090
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, ""

    .line 5091
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, "[(M)] [UNSIGNED] [ZEROFILL]"

    .line 5092
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5093
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5096
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5097
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "true"

    .line 5100
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5101
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "true"

    .line 5102
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "TINYINT UNSIGNED"

    .line 5103
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5104
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5105
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5106
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5107
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5108
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5109
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5114
    new-array v13, v1, [[B

    const-string v14, "BIGINT"

    .line 5115
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x5

    .line 5116
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "19"

    .line 5119
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, ""

    .line 5120
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, ""

    .line 5121
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, "[(M)] [UNSIGNED] [ZEROFILL]"

    .line 5122
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5123
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5126
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5127
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "true"

    .line 5130
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5131
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "true"

    .line 5132
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "BIGINT"

    .line 5133
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5134
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5135
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5136
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5137
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5138
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5139
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5141
    new-array v13, v1, [[B

    const-string v14, "BIGINT UNSIGNED"

    .line 5142
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x5

    .line 5143
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "20"

    .line 5146
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, ""

    .line 5147
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, ""

    .line 5148
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, "[(M)] [ZEROFILL]"

    .line 5149
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5150
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5153
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5154
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "true"

    .line 5157
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5158
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "true"

    .line 5159
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "BIGINT UNSIGNED"

    .line 5160
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5161
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5162
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5163
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5164
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5165
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5166
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5171
    new-array v13, v1, [[B

    const-string v14, "LONG VARBINARY"

    .line 5172
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x4

    .line 5173
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "16777215"

    .line 5176
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5177
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5178
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5179
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5180
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "true"

    .line 5183
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5184
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5187
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5188
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5189
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "LONG VARBINARY"

    .line 5190
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5191
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5192
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5193
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5194
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5195
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5196
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5201
    new-array v13, v1, [[B

    const-string v14, "MEDIUMBLOB"

    .line 5202
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x4

    .line 5203
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "16777215"

    .line 5206
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5207
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5208
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5209
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5210
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "true"

    .line 5213
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5214
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5217
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5218
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5219
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "MEDIUMBLOB"

    .line 5220
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5221
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5222
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5223
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5224
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5225
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5226
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5231
    new-array v13, v1, [[B

    const-string v14, "LONGBLOB"

    .line 5232
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x4

    .line 5233
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const v14, 0x7fffffff

    .line 5236
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5239
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5240
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5241
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5242
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "true"

    .line 5245
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5246
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5249
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5250
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5251
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "LONGBLOB"

    .line 5252
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5253
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5254
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5255
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5256
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5257
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5258
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5263
    new-array v13, v1, [[B

    const-string v14, "BLOB"

    .line 5264
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x4

    .line 5265
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "65535"

    .line 5268
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5269
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5270
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5271
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5272
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "true"

    .line 5275
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5276
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5279
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5280
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5281
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "BLOB"

    .line 5282
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5283
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5284
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5285
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5286
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5287
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5288
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5293
    new-array v13, v1, [[B

    const-string v14, "TINYBLOB"

    .line 5294
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x4

    .line 5295
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "255"

    .line 5298
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5299
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5300
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5301
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5302
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "true"

    .line 5305
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5306
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5309
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5310
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5311
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "TINYBLOB"

    .line 5312
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const-string v14, "0"

    .line 5313
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xd

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5314
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xe

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5315
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xf

    aput-object v14, v13, v15

    const-string v14, "0"

    .line 5316
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const-string v14, "10"

    .line 5317
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x11

    aput-object v14, v13, v15

    .line 5318
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5324
    new-array v13, v1, [[B

    const-string v14, "VARBINARY"

    .line 5325
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x3

    .line 5326
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    .line 5329
    iget-object v14, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v14, v9, v4, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "65535"

    goto :goto_0

    :cond_0
    const-string v14, "255"

    :goto_0
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5330
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5331
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, "(M)"

    .line 5332
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5333
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "true"

    .line 5336
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5337
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5340
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5341
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5342
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "VARBINARY"

    .line 5343
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const/16 v14, 0xd

    const-string v15, "0"

    .line 5344
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xe

    const-string v15, "0"

    .line 5345
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xf

    const-string v15, "0"

    .line 5346
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const-string v14, "0"

    .line 5347
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const/16 v14, 0x11

    const-string v15, "10"

    .line 5348
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    .line 5349
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5355
    new-array v13, v1, [[B

    const-string v14, "BINARY"

    .line 5356
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x2

    .line 5357
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "255"

    .line 5360
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5361
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5362
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, "(M)"

    .line 5363
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5364
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "true"

    .line 5367
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5368
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5371
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5372
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5373
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "BINARY"

    .line 5374
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const/16 v14, 0xd

    const-string v15, "0"

    .line 5375
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xe

    const-string v15, "0"

    .line 5376
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xf

    const-string v15, "0"

    .line 5377
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const-string v14, "0"

    .line 5378
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const/16 v14, 0x11

    const-string v15, "10"

    .line 5379
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    .line 5380
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5385
    new-array v13, v1, [[B

    const-string v14, "LONG VARCHAR"

    .line 5386
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x1

    .line 5387
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "16777215"

    .line 5390
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5391
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5392
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5393
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5394
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5397
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5398
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5401
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5402
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5403
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "LONG VARCHAR"

    .line 5404
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const/16 v14, 0xd

    const-string v15, "0"

    .line 5405
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xe

    const-string v15, "0"

    .line 5406
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xf

    const-string v15, "0"

    .line 5407
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const-string v14, "0"

    .line 5408
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const/16 v14, 0x11

    const-string v15, "10"

    .line 5409
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    .line 5410
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5415
    new-array v13, v1, [[B

    const-string v14, "MEDIUMTEXT"

    .line 5416
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x1

    .line 5417
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "16777215"

    .line 5420
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5421
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5422
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5423
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5424
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5427
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5428
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5431
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5432
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5433
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "MEDIUMTEXT"

    .line 5434
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const/16 v14, 0xd

    const-string v15, "0"

    .line 5435
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xe

    const-string v15, "0"

    .line 5436
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xf

    const-string v15, "0"

    .line 5437
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const-string v14, "0"

    .line 5438
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const/16 v14, 0x11

    const-string v15, "10"

    .line 5439
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    .line 5440
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5445
    new-array v13, v1, [[B

    const-string v14, "LONGTEXT"

    .line 5446
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x1

    .line 5447
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const v14, 0x7fffffff

    .line 5450
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5453
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5454
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5455
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5456
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5459
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5460
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5463
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5464
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5465
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "LONGTEXT"

    .line 5466
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const/16 v14, 0xd

    const-string v15, "0"

    .line 5467
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xe

    const-string v15, "0"

    .line 5468
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xf

    const-string v15, "0"

    .line 5469
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const-string v14, "0"

    .line 5470
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const/16 v14, 0x11

    const-string v15, "10"

    .line 5471
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    .line 5472
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5477
    new-array v13, v1, [[B

    const-string v14, "TEXT"

    .line 5478
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x1

    .line 5479
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "65535"

    .line 5482
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5483
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5484
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5485
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5486
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5489
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5490
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5493
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5494
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5495
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "TEXT"

    .line 5496
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const/16 v14, 0xd

    const-string v15, "0"

    .line 5497
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xe

    const-string v15, "0"

    .line 5498
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xf

    const-string v15, "0"

    .line 5499
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const-string v14, "0"

    .line 5500
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const/16 v14, 0x11

    const-string v15, "10"

    .line 5501
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    .line 5502
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5507
    new-array v13, v1, [[B

    const-string v14, "TINYTEXT"

    .line 5508
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    const/4 v14, -0x1

    .line 5509
    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "255"

    .line 5512
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5513
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5514
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, ""

    .line 5515
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5516
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5519
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5520
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5523
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5524
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5525
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "TINYTEXT"

    .line 5526
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const/16 v14, 0xd

    const-string v15, "0"

    .line 5527
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xe

    const-string v15, "0"

    .line 5528
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xf

    const-string v15, "0"

    .line 5529
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const-string v14, "0"

    .line 5530
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const/16 v14, 0x11

    const-string v15, "10"

    .line 5531
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    .line 5532
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5537
    new-array v13, v1, [[B

    const-string v14, "CHAR"

    .line 5538
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v4

    .line 5539
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v6

    const-string v14, "255"

    .line 5542
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v5

    const-string v14, "\'"

    .line 5543
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v7

    const-string v14, "\'"

    .line 5544
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v8

    const-string v14, "(M)"

    .line 5545
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v9

    .line 5546
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v13, v11

    const-string v14, "false"

    .line 5549
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/4 v15, 0x7

    aput-object v14, v13, v15

    .line 5550
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    const/16 v15, 0x8

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5553
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    const-string v14, "false"

    .line 5554
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v10

    const-string v14, "false"

    .line 5555
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0xb

    aput-object v14, v13, v15

    const-string v14, "CHAR"

    .line 5556
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v13, v12

    const/16 v14, 0xd

    const-string v15, "0"

    .line 5557
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xe

    const-string v15, "0"

    .line 5558
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xf

    const-string v15, "0"

    .line 5559
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    const-string v14, "0"

    .line 5560
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    const/16 v15, 0x10

    aput-object v14, v13, v15

    const/16 v14, 0x11

    const-string v15, "10"

    .line 5561
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v13, v14

    .line 5562
    new-instance v14, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v13, 0xfe

    .line 5568
    iget-object v14, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v14, v9, v4, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 5569
    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v13, v9, v4, v11}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v13

    if-eqz v13, :cond_1

    const/16 v13, 0x41

    goto :goto_1

    :cond_1
    const/16 v13, 0x40

    .line 5579
    :cond_2
    :goto_1
    new-array v14, v1, [[B

    const-string v15, "NUMERIC"

    .line 5580
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v4

    .line 5581
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    aput-object v15, v14, v6

    .line 5584
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v5

    const-string v15, ""

    .line 5585
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v7

    const-string v15, ""

    .line 5586
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v8

    const-string v15, "[(M[,D])] [ZEROFILL]"

    .line 5587
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v9

    .line 5588
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    aput-object v15, v14, v11

    const-string v15, "false"

    .line 5591
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v19, 0x7

    aput-object v15, v14, v19

    .line 5592
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/16 v16, 0x8

    aput-object v15, v14, v16

    const-string v15, "false"

    .line 5595
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v17, 0x9

    aput-object v15, v14, v17

    const-string v15, "false"

    .line 5596
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v10

    const-string v15, "true"

    .line 5597
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    const/16 v18, 0xb

    aput-object v15, v14, v18

    const-string v15, "NUMERIC"

    .line 5598
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v12

    const/16 v15, 0xd

    const-string v12, "-308"

    .line 5599
    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v14, v15

    const/16 v12, 0xe

    const-string v15, "308"

    .line 5600
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v12

    const/16 v12, 0xf

    const-string v15, "0"

    .line 5601
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v12

    const-string v12, "0"

    .line 5602
    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    const/16 v15, 0x10

    aput-object v12, v14, v15

    const/16 v12, 0x11

    const-string v15, "10"

    .line 5603
    invoke-virtual {v0, v15}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v15

    aput-object v15, v14, v12

    .line 5604
    new-instance v12, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5609
    new-array v12, v1, [[B

    const-string v14, "DECIMAL"

    .line 5610
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v4

    .line 5611
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    aput-object v14, v12, v6

    .line 5614
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5615
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5616
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M[,D])] [ZEROFILL]"

    .line 5617
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5618
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5621
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5622
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5625
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5626
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5627
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "DECIMAL"

    .line 5628
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "-308"

    .line 5629
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "308"

    .line 5630
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5631
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5632
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5633
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5634
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5639
    new-array v12, v1, [[B

    const-string v13, "INTEGER"

    .line 5640
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    .line 5641
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "10"

    .line 5644
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5645
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5646
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M)] [UNSIGNED] [ZEROFILL]"

    .line 5647
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5648
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5651
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5652
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "true"

    .line 5655
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5656
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5657
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "INTEGER"

    .line 5658
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 5659
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 5660
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5661
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5662
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5663
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5664
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5666
    new-array v12, v1, [[B

    const-string v13, "INTEGER UNSIGNED"

    .line 5667
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    .line 5668
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "10"

    .line 5671
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5672
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5673
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M)] [ZEROFILL]"

    .line 5674
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5675
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5678
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5679
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "true"

    .line 5682
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5683
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5684
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "INTEGER UNSIGNED"

    .line 5685
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 5686
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 5687
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5688
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5689
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5690
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5691
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5696
    new-array v12, v1, [[B

    const-string v13, "INT"

    .line 5697
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    .line 5698
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "10"

    .line 5701
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5702
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5703
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M)] [UNSIGNED] [ZEROFILL]"

    .line 5704
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5705
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5708
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5709
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "true"

    .line 5712
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5713
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5714
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "INT"

    .line 5715
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 5716
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 5717
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5718
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5719
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5720
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5721
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5723
    new-array v12, v1, [[B

    const-string v13, "INT UNSIGNED"

    .line 5724
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    .line 5725
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "10"

    .line 5728
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5729
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5730
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M)] [ZEROFILL]"

    .line 5731
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5732
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5735
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5736
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "true"

    .line 5739
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5740
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5741
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "INT UNSIGNED"

    .line 5742
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 5743
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 5744
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5745
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5746
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5747
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5748
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5753
    new-array v12, v1, [[B

    const-string v13, "MEDIUMINT"

    .line 5754
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    .line 5755
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "7"

    .line 5758
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5759
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5760
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M)] [UNSIGNED] [ZEROFILL]"

    .line 5761
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5762
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5765
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5766
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "true"

    .line 5769
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5770
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5771
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "MEDIUMINT"

    .line 5772
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 5773
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 5774
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5775
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5776
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5777
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5778
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5780
    new-array v12, v1, [[B

    const-string v13, "MEDIUMINT UNSIGNED"

    .line 5781
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    .line 5782
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "8"

    .line 5785
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5786
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5787
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M)] [ZEROFILL]"

    .line 5788
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5789
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5792
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5793
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "true"

    .line 5796
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5797
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5798
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "MEDIUMINT UNSIGNED"

    .line 5799
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 5800
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 5801
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5802
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5803
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5804
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5805
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5810
    new-array v12, v1, [[B

    const-string v13, "SMALLINT"

    .line 5811
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    .line 5812
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "5"

    .line 5815
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5816
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5817
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M)] [UNSIGNED] [ZEROFILL]"

    .line 5818
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5819
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5822
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5823
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "true"

    .line 5826
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5827
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5828
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "SMALLINT"

    .line 5829
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 5830
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 5831
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5832
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5833
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5834
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5835
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5837
    new-array v12, v1, [[B

    const-string v13, "SMALLINT UNSIGNED"

    .line 5838
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    .line 5839
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "5"

    .line 5842
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5843
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5844
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M)] [ZEROFILL]"

    .line 5845
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5846
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5849
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5850
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "true"

    .line 5853
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5854
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5855
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "SMALLINT UNSIGNED"

    .line 5856
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 5857
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 5858
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5859
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5860
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5861
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5862
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5868
    new-array v12, v1, [[B

    const-string v13, "FLOAT"

    .line 5869
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/4 v13, 0x7

    .line 5870
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "10"

    .line 5873
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5874
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5875
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M,D)] [ZEROFILL]"

    .line 5876
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5877
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5880
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5881
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5884
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5885
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5886
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "FLOAT"

    .line 5887
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "-38"

    .line 5888
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "38"

    .line 5889
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5890
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5891
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5892
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5893
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5898
    new-array v12, v1, [[B

    const-string v13, "DOUBLE"

    .line 5899
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/16 v13, 0x8

    .line 5900
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "17"

    .line 5903
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5904
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5905
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M,D)] [ZEROFILL]"

    .line 5906
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5907
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5910
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5911
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5914
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5915
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5916
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "DOUBLE"

    .line 5917
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "-308"

    .line 5918
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "308"

    .line 5919
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5920
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5921
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5922
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5923
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5928
    new-array v12, v1, [[B

    const-string v13, "DOUBLE PRECISION"

    .line 5929
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/16 v13, 0x8

    .line 5930
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "17"

    .line 5933
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5934
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5935
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M,D)] [ZEROFILL]"

    .line 5936
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5937
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5940
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5941
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5944
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5945
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5946
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "DOUBLE PRECISION"

    .line 5947
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "-308"

    .line 5948
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "308"

    .line 5949
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5950
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5951
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5952
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5953
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5958
    new-array v12, v1, [[B

    const-string v13, "REAL"

    .line 5959
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/16 v13, 0x8

    .line 5960
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "17"

    .line 5963
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, ""

    .line 5964
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ""

    .line 5965
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "[(M,D)] [ZEROFILL]"

    .line 5966
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5967
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 5970
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 5971
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5974
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 5975
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "true"

    .line 5976
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "REAL"

    .line 5977
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "-308"

    .line 5978
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "308"

    .line 5979
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 5980
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 5981
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 5982
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 5983
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5988
    new-array v12, v1, [[B

    const-string v13, "VARCHAR"

    .line 5989
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/16 v13, 0xc

    .line 5990
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    .line 5993
    iget-object v13, v0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v13, v9, v4, v7}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "65535"

    goto :goto_2

    :cond_3
    const-string v13, "255"

    :goto_2
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, "\'"

    .line 5994
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, "\'"

    .line 5995
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, "(M)"

    .line 5996
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 5997
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 6000
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 6001
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6004
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6005
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "false"

    .line 6006
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "VARCHAR"

    .line 6007
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 6008
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 6009
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 6010
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 6011
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 6012
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 6013
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6018
    new-array v12, v1, [[B

    const-string v13, "ENUM"

    .line 6019
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/16 v13, 0xc

    .line 6020
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "65535"

    .line 6023
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, "\'"

    .line 6024
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, "\'"

    .line 6025
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, ""

    .line 6026
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 6027
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 6030
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 6031
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6034
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6035
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "false"

    .line 6036
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "ENUM"

    .line 6037
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 6038
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 6039
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 6040
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 6041
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 6042
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 6043
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6048
    new-array v12, v1, [[B

    const-string v13, "SET"

    .line 6049
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/16 v13, 0xc

    .line 6050
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "64"

    .line 6053
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, "\'"

    .line 6054
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, "\'"

    .line 6055
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, ""

    .line 6056
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 6057
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 6060
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 6061
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6064
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6065
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "false"

    .line 6066
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "SET"

    .line 6067
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 6068
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 6069
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 6070
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 6071
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 6072
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 6073
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6078
    new-array v12, v1, [[B

    const-string v13, "DATE"

    .line 6079
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/16 v13, 0x5b

    .line 6080
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "0"

    .line 6083
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, "\'"

    .line 6084
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, "\'"

    .line 6085
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, ""

    .line 6086
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 6087
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 6090
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 6091
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6094
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6095
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "false"

    .line 6096
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "DATE"

    .line 6097
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 6098
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 6099
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 6100
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 6101
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 6102
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 6103
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6108
    new-array v12, v1, [[B

    const-string v13, "TIME"

    .line 6109
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/16 v13, 0x5c

    .line 6110
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "0"

    .line 6113
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, "\'"

    .line 6114
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, "\'"

    .line 6115
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, ""

    .line 6116
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 6117
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 6120
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 6121
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6124
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6125
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "false"

    .line 6126
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "TIME"

    .line 6127
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 6128
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 6129
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 6130
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 6131
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 6132
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 6133
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6138
    new-array v12, v1, [[B

    const-string v13, "DATETIME"

    .line 6139
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v4

    const/16 v13, 0x5d

    .line 6140
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v6

    const-string v13, "0"

    .line 6143
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v5

    const-string v13, "\'"

    .line 6144
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, "\'"

    .line 6145
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v8

    const-string v13, ""

    .line 6146
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v9

    .line 6147
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    aput-object v13, v12, v11

    const-string v13, "false"

    .line 6150
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/4 v14, 0x7

    aput-object v13, v12, v14

    .line 6151
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/16 v14, 0x8

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6154
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v12, v14

    const-string v13, "false"

    .line 6155
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    aput-object v13, v12, v10

    const-string v13, "false"

    .line 6156
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xb

    aput-object v13, v12, v14

    const-string v13, "DATETIME"

    .line 6157
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0xc

    aput-object v13, v12, v14

    const/16 v13, 0xd

    const-string v14, "0"

    .line 6158
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xe

    const-string v14, "0"

    .line 6159
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const/16 v13, 0xf

    const-string v14, "0"

    .line 6160
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    const-string v13, "0"

    .line 6161
    invoke-virtual {v0, v13}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v13

    const/16 v14, 0x10

    aput-object v13, v12, v14

    const/16 v13, 0x11

    const-string v14, "10"

    .line 6162
    invoke-virtual {v0, v14}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v14

    aput-object v14, v12, v13

    .line 6163
    new-instance v13, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v14

    invoke-direct {v13, v12, v14}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6168
    new-array v1, v1, [[B

    const-string v12, "TIMESTAMP"

    .line 6169
    invoke-virtual {v0, v12}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v12

    aput-object v12, v1, v4

    const/16 v4, 0x5d

    .line 6170
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v1, v6

    const-string v4, "0"

    .line 6173
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v5

    const-string v4, "\'"

    .line 6174
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v7

    const-string v4, "\'"

    .line 6175
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v8

    const-string v4, "[(M)]"

    .line 6176
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v9

    .line 6177
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    aput-object v4, v1, v11

    const-string v4, "false"

    .line 6180
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x7

    aput-object v4, v1, v5

    .line 6181
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8

    aput-object v4, v1, v5

    const-string v4, "false"

    .line 6184
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0x9

    aput-object v4, v1, v5

    const-string v4, "false"

    .line 6185
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v1, v10

    const-string v4, "false"

    .line 6186
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0xb

    aput-object v4, v1, v5

    const-string v4, "TIMESTAMP"

    .line 6187
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0xc

    aput-object v4, v1, v5

    const/16 v4, 0xd

    const-string v5, "0"

    .line 6188
    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xe

    const-string v5, "0"

    .line 6189
    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xf

    const-string v5, "0"

    .line 6190
    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v1, v4

    const-string v4, "0"

    .line 6191
    invoke-virtual {v0, v4}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v4

    const/16 v5, 0x10

    aput-object v4, v1, v5

    const/16 v4, 0x11

    const-string v5, "10"

    .line 6192
    invoke-virtual {v0, v5}, Lcom/mysql/jdbc/DatabaseMetaData;->s2b(Ljava/lang/String;)[B

    move-result-object v5

    aput-object v5, v1, v4

    .line 6193
    new-instance v4, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6195
    invoke-direct {v0, v2, v3}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object v1

    return-object v1
.end method

.method public getUDTs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)Ljava/sql/ResultSet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x7

    .line 6236
    new-array p1, p1, [Lcom/mysql/jdbc/Field;

    .line 6237
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "TYPE_CAT"

    const/16 v0, 0x20

    const/16 v1, 0xc

    invoke-direct {p2, p3, p4, v1, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    .line 6238
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "TYPE_SCHEM"

    invoke-direct {p2, p3, p4, v1, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x1

    aput-object p2, p1, p3

    .line 6239
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "TYPE_NAME"

    invoke-direct {p2, p3, p4, v1, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x2

    aput-object p2, p1, p3

    .line 6240
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "CLASS_NAME"

    invoke-direct {p2, p3, p4, v1, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x3

    aput-object p2, p1, p3

    .line 6241
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "DATA_TYPE"

    const/16 v2, 0xa

    const/4 v3, 0x4

    invoke-direct {p2, p3, p4, v3, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object p2, p1, v3

    .line 6242
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p3, ""

    const-string p4, "REMARKS"

    invoke-direct {p2, p3, p4, v1, v0}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x5

    aput-object p2, p1, p3

    .line 6243
    new-instance p2, Lcom/mysql/jdbc/Field;

    const-string p4, ""

    const-string v0, "BASE_TYPE"

    invoke-direct {p2, p4, v0, p3, v2}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 p3, 0x6

    aput-object p2, p1, p3

    .line 6245
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 6247
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1
.end method

.method public getURL()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6257
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6267
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUseHostsInPrivileges()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 6272
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v2, "SELECT USER()"

    .line 6274
    invoke-interface {v1, v2}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6275
    :try_start_2
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    const/4 v0, 0x1

    .line 6277
    invoke-interface {v2, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_0

    .line 6281
    :try_start_3
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 6283
    invoke-static {v2}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 6291
    :try_start_4
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 6293
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_2
    if-eqz v2, :cond_2

    .line 6281
    :try_start_5
    invoke-interface {v2}, Ljava/sql/ResultSet;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    .line 6283
    invoke-static {v2}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 6291
    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 6293
    invoke-static {v1}, Lcom/mysql/jdbc/AssertionFailedException;->shouldNotHappen(Ljava/lang/Exception;)V

    .line 6279
    :cond_3
    :goto_4
    throw v0

    .line 6301
    :cond_4
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionColumns(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/ResultSet;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_2

    const/16 p2, 0x8

    .line 6342
    new-array p2, p2, [Lcom/mysql/jdbc/Field;

    const/4 v0, 0x0

    .line 6343
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "SCOPE"

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, p2, v0

    .line 6344
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "COLUMN_NAME"

    const/16 v3, 0x20

    const/4 v5, 0x1

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, p2, v5

    const/4 v0, 0x2

    .line 6345
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DATA_TYPE"

    const/4 v6, 0x4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, p2, v0

    const/4 v0, 0x3

    .line 6346
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "TYPE_NAME"

    const/16 v7, 0x10

    invoke-direct {v1, v2, v3, v5, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, p2, v0

    .line 6347
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "COLUMN_SIZE"

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, p2, v6

    .line 6348
    new-instance v0, Lcom/mysql/jdbc/Field;

    const-string v1, ""

    const-string v2, "BUFFER_LENGTH"

    invoke-direct {v0, v1, v2, v6, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v0, p2, v4

    const/4 v0, 0x6

    .line 6349
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "DECIMAL_DIGITS"

    invoke-direct {v1, v2, v3, v4, v7}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, p2, v0

    const/4 v0, 0x7

    .line 6350
    new-instance v1, Lcom/mysql/jdbc/Field;

    const-string v2, ""

    const-string v3, "PSEUDO_COLUMN"

    invoke-direct {v1, v2, v3, v4, v4}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v1, p2, v0

    .line 6352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6354
    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getMetadataSafeStatement()Ljava/sql/Statement;

    move-result-object v1

    .line 6358
    :try_start_0
    new-instance v2, Lcom/mysql/jdbc/DatabaseMetaData$10;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getCatalogIterator(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;

    move-result-object v7

    move-object v5, v2

    move-object v6, p0

    move-object v8, p3

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v5 .. v10}, Lcom/mysql/jdbc/DatabaseMetaData$10;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;Ljava/lang/String;Ljava/sql/Statement;Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/mysql/jdbc/DatabaseMetaData$10;->doForAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6479
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 6483
    :cond_0
    invoke-direct {p0, p2, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->buildResultSet([Lcom/mysql/jdbc/Field;Ljava/util/ArrayList;)Ljava/sql/ResultSet;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 6479
    invoke-interface {v1}, Ljava/sql/Statement;->close()V

    .line 6478
    :cond_1
    throw p1

    .line 6339
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Table not specified."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public insertsAreDetected(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public isCatalogAtStart()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public isReadOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public locatorsUpdateCopy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6525
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getEmulateLocators()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nullPlusNonNullIsNull()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public nullsAreSortedAtEnd()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedAtStart()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6556
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/16 v3, 0xb

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public nullsAreSortedHigh()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public nullsAreSortedLow()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6576
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->nullsAreSortedHigh()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public othersDeletesAreVisible(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public othersInsertsAreVisible(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public othersUpdatesAreVisible(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public ownDeletesAreVisible(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public ownInsertsAreVisible(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public ownUpdatesAreVisible(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected parseTableStatusIntoLocalAndReferencedColumns(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v6, p1

    const-string v8, ","

    const-string v2, "("

    .line 6651
    iget-object v3, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v4, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v5, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    const/4 v0, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x0

    .line 6658
    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6659
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6661
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    const-string v11, ")"

    .line 6663
    iget-object v12, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v14, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move-object v10, v0

    invoke-static/range {v9 .. v14}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v3

    if-eq v3, v1, :cond_4

    const/4 v5, 0x1

    .line 6671
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    const-string v11, "REFER "

    .line 6673
    iget-object v12, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v14, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move-object v10, v0

    invoke-static/range {v9 .. v14}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v6

    if-eq v6, v1, :cond_3

    const-string v11, "("

    .line 6680
    iget-object v12, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v14, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move v9, v6

    move-object v10, v0

    invoke-static/range {v9 .. v14}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v15

    if-eq v15, v1, :cond_2

    const-string v9, "REFER "

    .line 6688
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v6, v9

    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const-string v11, "/"

    .line 6690
    iget-object v12, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v14, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move-object v10, v6

    invoke-static/range {v9 .. v14}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v9

    if-eq v9, v1, :cond_1

    .line 6697
    invoke-virtual {v6, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    add-int/2addr v9, v5

    .line 6698
    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v11, ")"

    .line 6700
    iget-object v12, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v13, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    sget-object v14, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    move v9, v15

    move-object v10, v0

    invoke-static/range {v9 .. v14}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v9

    if-eq v9, v1, :cond_0

    add-int/2addr v15, v5

    .line 6708
    invoke-virtual {v0, v15, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 6710
    iget-object v1, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v5, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v0, v8, v1, v5, v2}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    .line 6711
    iget-object v0, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    iget-object v1, v7, Lcom/mysql/jdbc/DatabaseMetaData;->quotedId:Ljava/lang/String;

    invoke-static {v3, v8, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 6713
    new-instance v8, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v3, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/DatabaseMetaData$LocalAndReferencedColumns;-><init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    .line 6704
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Error parsing foreign keys definition, couldn\'t find end of referenced columns list."

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6693
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Error parsing foreign keys definition, couldn\'t find name of referenced catalog."

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6684
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Error parsing foreign keys definition, couldn\'t find start of referenced columns list."

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6676
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Error parsing foreign keys definition, couldn\'t find start of referenced tables list."

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6667
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Error parsing foreign keys definition, couldn\'t find end of local columns list."

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0

    .line 6654
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v0

    const-string v1, "Error parsing foreign keys definition, couldn\'t find start of local columns list."

    const-string v2, "S1000"

    invoke-static {v1, v2, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    throw v0
.end method

.method protected prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7870
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/MySQLConnection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p1

    .line 7872
    invoke-interface {p1}, Ljava/sql/PreparedStatement;->getMaxRows()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 7873
    invoke-interface {p1, v0}, Ljava/sql/PreparedStatement;->setMaxRows(I)V

    .line 7876
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/mysql/jdbc/Statement;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mysql/jdbc/Statement;->setHoldResultsOpenOverClose(Z)V

    return-object p1
.end method

.method public providesQueryObjectGenerator()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected s2b(Ljava/lang/String;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6727
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getCharacterSetMetadata()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getServerCharset()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->parserKnowsUnicode()Z

    move-result v4

    iget-object v5, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p1

    return-object p1
.end method

.method public storesLowerCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6739
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    return v0
.end method

.method public storesLowerCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6750
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    return v0
.end method

.method public storesMixedCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6761
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public storesMixedCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6772
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->storesLowerCaseTableName()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public storesUpperCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public storesUpperCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92EntryLevelSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsANSI92FullSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsANSI92IntermediateSQL()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsAlterTableWithAddColumn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsAlterTableWithDropColumn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsBatchUpdates()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCatalogsInDataManipulation()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6866
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInIndexDefinitions()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6877
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInPrivilegeDefinitions()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6888
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInProcedureCalls()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6899
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsCatalogsInTableDefinitions()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 6910
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x3

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsColumnAliasing()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsConvert()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsConvert(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x457

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_5

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    return v2

    :pswitch_0
    if-eq p2, v3, :cond_0

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    return v2

    :cond_0
    :pswitch_1
    return v3

    :pswitch_2
    if-eq p2, v3, :cond_1

    if-eq p2, v1, :cond_1

    packed-switch p2, :pswitch_data_4

    return v2

    :cond_1
    :pswitch_3
    return v3

    :pswitch_4
    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_2

    packed-switch p2, :pswitch_data_5

    return v2

    :cond_2
    :pswitch_5
    return v3

    :pswitch_6
    return v2

    :pswitch_7
    packed-switch p2, :pswitch_data_6

    :pswitch_8
    return v2

    :pswitch_9
    return v3

    :pswitch_a
    return v2

    :cond_3
    if-eq p2, v3, :cond_4

    if-eq p2, v1, :cond_4

    packed-switch p2, :pswitch_data_7

    return v2

    :cond_4
    :pswitch_b
    return v3

    :cond_5
    :pswitch_c
    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_6

    packed-switch p2, :pswitch_data_8

    packed-switch p2, :pswitch_data_9

    packed-switch p2, :pswitch_data_a

    return v2

    :cond_6
    :pswitch_d
    return v3

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_a
        :pswitch_7
        :pswitch_7
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_6
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_4
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch -0x4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch -0x4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch -0x6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_7
    .packed-switch -0x4
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_8
    .packed-switch -0x6
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x5b
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public supportsCoreSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsCorrelatedSubqueries()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7126
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsDataDefinitionAndDataManipulationTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsDataManipulationTransactionsOnly()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsDifferentTableCorrelationNames()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsExpressionsInOrderBy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsExtendedSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsFullOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsGetGeneratedKeys()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupBy()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByBeyondSelect()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsGroupByUnrelated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsIntegrityEnhancementFacility()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7237
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getOverrideSupportsIntegrityEnhancementFacility()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public supportsLikeEscapeClause()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsLimitedOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMinimumSQLGrammar()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMixedCaseIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7284
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportsMixedCaseQuotedIdentifiers()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7295
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportsMultipleOpenResults()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsMultipleResultSets()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7312
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsMultipleTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsNamedParameters()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsNonNullableColumns()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsOpenCursorsAcrossCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenCursorsAcrossRollback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossCommit()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOpenStatementsAcrossRollback()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOrderByUnrelated()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsOuterJoins()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsPositionedDelete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsPositionedUpdate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsResultSetConcurrency(II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x3f0

    const/16 v2, 0x3ef

    packed-switch p1, :pswitch_data_0

    .line 7464
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Illegal arguments to supportsResultSetConcurrency()"

    const-string v0, "S1009"

    invoke-static {p2, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return p1

    :pswitch_1
    if-eq p2, v2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 7451
    :cond_0
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Illegal arguments to supportsResultSetConcurrency()"

    const-string v0, "S1009"

    invoke-static {p2, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return v0

    :pswitch_2
    if-eq p2, v2, :cond_3

    if-ne p2, v1, :cond_2

    goto :goto_1

    .line 7458
    :cond_2
    invoke-virtual {p0}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "Illegal arguments to supportsResultSetConcurrency()"

    const-string v0, "S1009"

    invoke-static {p2, v0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_3
    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3eb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsResultSetHoldability(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public supportsResultSetType(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public supportsSavepoints()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7496
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0xe

    invoke-interface {v0, v2, v1, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0, v2, v3, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public supportsSchemasInDataManipulation()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInIndexDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInPrivilegeDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInProcedureCalls()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSchemasInTableDefinitions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsSelectForUpdate()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7556
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsStatementPooling()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public supportsStoredFunctionsUsingCallSyntax()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsStoredProcedures()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7574
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInComparisons()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7585
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInExists()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7596
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInIns()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7607
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsSubqueriesInQuantifieds()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7618
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsTableCorrelationNames()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public supportsTransactionIsolationLevel(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7643
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsIsolationLevel()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public supportsTransactions()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7667
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->supportsTransactions()Z

    move-result v0

    return v0
.end method

.method public supportsUnion()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7677
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public supportsUnionAll()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 7687
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {v0, v2, v1, v1}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v0

    return v0
.end method

.method public updatesAreDetected(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public usesLocalFilePerTable()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public usesLocalFiles()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
