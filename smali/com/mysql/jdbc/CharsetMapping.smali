.class public Lcom/mysql/jdbc/CharsetMapping;
.super Ljava/lang/Object;
.source "CharsetMapping.java"


# static fields
.field public static final CHARSET_NAME_TO_CHARSET:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/MysqlCharset;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHARSET_NAME_TO_COLLATION_INDEX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

.field public static final COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

.field public static final COLLATION_NOT_DEFINED:Ljava/lang/String; = "none"

.field private static final ERROR_MESSAGE_FILE_TO_MYSQL_CHARSET:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ESCAPE_ENCODINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final JAVA_ENCODING_UC_TO_MYSQL_CHARSET:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/MysqlCharset;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final MAP_SIZE:I = 0x800

.field private static final MULTIBYTE_ENCODINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MYSQL_4_0_CHARSET_NAME_cp1251cias:Ljava/lang/String; = "cp1251cias"

.field private static final MYSQL_4_0_CHARSET_NAME_cp1251csas:Ljava/lang/String; = "cp1251csas"

.field private static final MYSQL_4_0_CHARSET_NAME_croat:Ljava/lang/String; = "croat"

.field private static final MYSQL_4_0_CHARSET_NAME_czech:Ljava/lang/String; = "czech"

.field private static final MYSQL_4_0_CHARSET_NAME_danish:Ljava/lang/String; = "danish"

.field private static final MYSQL_4_0_CHARSET_NAME_dos:Ljava/lang/String; = "dos"

.field private static final MYSQL_4_0_CHARSET_NAME_estonia:Ljava/lang/String; = "estonia"

.field private static final MYSQL_4_0_CHARSET_NAME_euc_kr:Ljava/lang/String; = "euc_kr"

.field private static final MYSQL_4_0_CHARSET_NAME_german1:Ljava/lang/String; = "german1"

.field private static final MYSQL_4_0_CHARSET_NAME_hungarian:Ljava/lang/String; = "hungarian"

.field private static final MYSQL_4_0_CHARSET_NAME_koi8_ru:Ljava/lang/String; = "koi8_ru"

.field private static final MYSQL_4_0_CHARSET_NAME_koi8_ukr:Ljava/lang/String; = "koi8_ukr"

.field private static final MYSQL_4_0_CHARSET_NAME_latin1_de:Ljava/lang/String; = "latin1_de"

.field private static final MYSQL_4_0_CHARSET_NAME_latvian:Ljava/lang/String; = "latvian"

.field private static final MYSQL_4_0_CHARSET_NAME_latvian1:Ljava/lang/String; = "latvian1"

.field private static final MYSQL_4_0_CHARSET_NAME_usa7:Ljava/lang/String; = "usa7"

.field private static final MYSQL_4_0_CHARSET_NAME_win1250:Ljava/lang/String; = "win1250"

.field private static final MYSQL_4_0_CHARSET_NAME_win1251:Ljava/lang/String; = "win1251"

.field private static final MYSQL_4_0_CHARSET_NAME_win1251ukr:Ljava/lang/String; = "win1251ukr"

.field private static final MYSQL_CHARSET_NAME_armscii8:Ljava/lang/String; = "armscii8"

.field private static final MYSQL_CHARSET_NAME_ascii:Ljava/lang/String; = "ascii"

.field private static final MYSQL_CHARSET_NAME_big5:Ljava/lang/String; = "big5"

.field private static final MYSQL_CHARSET_NAME_binary:Ljava/lang/String; = "binary"

.field private static final MYSQL_CHARSET_NAME_cp1250:Ljava/lang/String; = "cp1250"

.field private static final MYSQL_CHARSET_NAME_cp1251:Ljava/lang/String; = "cp1251"

.field private static final MYSQL_CHARSET_NAME_cp1256:Ljava/lang/String; = "cp1256"

.field private static final MYSQL_CHARSET_NAME_cp1257:Ljava/lang/String; = "cp1257"

.field private static final MYSQL_CHARSET_NAME_cp850:Ljava/lang/String; = "cp850"

.field private static final MYSQL_CHARSET_NAME_cp852:Ljava/lang/String; = "cp852"

.field private static final MYSQL_CHARSET_NAME_cp866:Ljava/lang/String; = "cp866"

.field private static final MYSQL_CHARSET_NAME_cp932:Ljava/lang/String; = "cp932"

.field private static final MYSQL_CHARSET_NAME_dec8:Ljava/lang/String; = "dec8"

.field private static final MYSQL_CHARSET_NAME_eucjpms:Ljava/lang/String; = "eucjpms"

.field private static final MYSQL_CHARSET_NAME_euckr:Ljava/lang/String; = "euckr"

.field private static final MYSQL_CHARSET_NAME_gb18030:Ljava/lang/String; = "gb18030"

.field private static final MYSQL_CHARSET_NAME_gb2312:Ljava/lang/String; = "gb2312"

.field private static final MYSQL_CHARSET_NAME_gbk:Ljava/lang/String; = "gbk"

.field private static final MYSQL_CHARSET_NAME_geostd8:Ljava/lang/String; = "geostd8"

.field private static final MYSQL_CHARSET_NAME_greek:Ljava/lang/String; = "greek"

.field private static final MYSQL_CHARSET_NAME_hebrew:Ljava/lang/String; = "hebrew"

.field private static final MYSQL_CHARSET_NAME_hp8:Ljava/lang/String; = "hp8"

.field private static final MYSQL_CHARSET_NAME_keybcs2:Ljava/lang/String; = "keybcs2"

.field private static final MYSQL_CHARSET_NAME_koi8r:Ljava/lang/String; = "koi8r"

.field private static final MYSQL_CHARSET_NAME_koi8u:Ljava/lang/String; = "koi8u"

.field private static final MYSQL_CHARSET_NAME_latin1:Ljava/lang/String; = "latin1"

.field private static final MYSQL_CHARSET_NAME_latin2:Ljava/lang/String; = "latin2"

.field private static final MYSQL_CHARSET_NAME_latin5:Ljava/lang/String; = "latin5"

.field private static final MYSQL_CHARSET_NAME_latin7:Ljava/lang/String; = "latin7"

.field private static final MYSQL_CHARSET_NAME_macce:Ljava/lang/String; = "macce"

.field private static final MYSQL_CHARSET_NAME_macroman:Ljava/lang/String; = "macroman"

.field private static final MYSQL_CHARSET_NAME_sjis:Ljava/lang/String; = "sjis"

.field private static final MYSQL_CHARSET_NAME_swe7:Ljava/lang/String; = "swe7"

.field private static final MYSQL_CHARSET_NAME_tis620:Ljava/lang/String; = "tis620"

.field private static final MYSQL_CHARSET_NAME_ucs2:Ljava/lang/String; = "ucs2"

.field private static final MYSQL_CHARSET_NAME_ujis:Ljava/lang/String; = "ujis"

.field private static final MYSQL_CHARSET_NAME_utf16:Ljava/lang/String; = "utf16"

.field private static final MYSQL_CHARSET_NAME_utf16le:Ljava/lang/String; = "utf16le"

.field private static final MYSQL_CHARSET_NAME_utf32:Ljava/lang/String; = "utf32"

.field private static final MYSQL_CHARSET_NAME_utf8:Ljava/lang/String; = "utf8"

.field private static final MYSQL_CHARSET_NAME_utf8mb4:Ljava/lang/String; = "utf8mb4"

.field public static final MYSQL_COLLATION_INDEX_binary:I = 0x3f

.field public static final MYSQL_COLLATION_INDEX_utf8:I = 0x21

.field public static final NOT_USED:Ljava/lang/String; = "latin1"

.field public static final UTF8MB4_INDEXES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static numberOfEncodingsConfigured:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const/16 v0, 0x3c

    .line 133
    new-array v1, v0, [Lcom/mysql/jdbc/MysqlCharset;

    new-instance v9, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "usa7"

    const-string v2, "US-ASCII"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/4 v2, 0x0

    aput-object v9, v1, v2

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v4, "ascii"

    const-string v5, "US-ASCII"

    const-string v6, "ASCII"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v6, v2, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v3, v1, v6

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v4, "big5"

    const-string v5, "Big5"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-direct {v3, v4, v7, v2, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    aput-object v3, v1, v7

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v4, "gbk"

    const-string v5, "GBK"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v7, v2, v5}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v5, "sjis"

    const-string v8, "SHIFT_JIS"

    const-string v9, "Cp943"

    const-string v10, "WINDOWS-31J"

    filled-new-array {v8, v9, v10}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v5, v7, v2, v8}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v8, "cp932"

    const-string v9, "WINDOWS-31J"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v8, v7, v6, v9}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v8, 0x5

    aput-object v3, v1, v8

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v9, "gb2312"

    const-string v10, "GB2312"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v7, v2, v10}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v9, 0x6

    aput-object v3, v1, v9

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v10, "ujis"

    const-string v11, "EUC_JP"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v10, v4, v2, v11}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/4 v10, 0x7

    aput-object v3, v1, v10

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v12, "eucjpms"

    const-string v11, "EUC_JP_Solaris"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v15

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/16 v16, 0x5

    const/16 v17, 0x0

    const/16 v18, 0x3

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;III)V

    const/16 v11, 0x8

    aput-object v3, v1, v11

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v13, "gb18030"

    const-string v12, "GB18030"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x4

    const/4 v15, 0x0

    const/16 v17, 0x5

    const/16 v18, 0x7

    const/16 v19, 0x4

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;III)V

    const/16 v12, 0x9

    aput-object v3, v1, v12

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v14, "euc_kr"

    const-string v13, "EUC_KR"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v17

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v13, v3

    invoke-direct/range {v13 .. v19}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v13, 0xa

    aput-object v3, v1, v13

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v14, "euckr"

    const-string v15, "EUC-KR"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v7, v2, v15}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v14, 0xb

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v15, "latin1"

    const-string v0, "Cp1252"

    const-string v14, "ISO8859_1"

    filled-new-array {v0, v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v15, v6, v6, v0}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v0, 0xc

    aput-object v3, v1, v0

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v14, "swe7"

    const-string v15, "Cp1252"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v6, v2, v15}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v14, 0xd

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v14, "hp8"

    const-string v15, "Cp1252"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v6, v2, v15}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v14, 0xe

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v14, "dec8"

    const-string v15, "Cp1252"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v6, v2, v15}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v14, 0xf

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v14, "armscii8"

    const-string v15, "Cp1252"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v6, v2, v15}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v14, 0x10

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v14, "geostd8"

    const-string v15, "Cp1252"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v6, v2, v15}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v14, 0x11

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v14, "latin2"

    const-string v15, "ISO8859_2"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    invoke-direct {v3, v14, v6, v2, v15}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v14, 0x12

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "czech"

    const-string v14, "ISO8859_2"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v24

    const/16 v22, 0x1

    const/16 v23, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v14, 0x13

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "hungarian"

    const-string v14, "ISO8859_2"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v14, 0x14

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "croat"

    const-string v14, "ISO8859_2"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v3

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v14, 0x15

    aput-object v3, v1, v14

    new-instance v3, Lcom/mysql/jdbc/MysqlCharset;

    const-string v14, "greek"

    const-string v15, "ISO8859_7"

    const-string v0, "greek"

    filled-new-array {v15, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v14, v6, v2, v0}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v0, 0x16

    aput-object v3, v1, v0

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "latin7"

    const-string v14, "ISO-8859-13"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x17

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "hebrew"

    const-string v14, "ISO8859_8"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x18

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "latin5"

    const-string v14, "ISO8859_9"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x19

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "latvian"

    const-string v3, "ISO8859_13"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x1a

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "latvian1"

    const-string v3, "ISO8859_13"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x1b

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "estonia"

    const-string v3, "ISO8859_13"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    const/16 v23, 0x1

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x1c

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "cp850"

    const-string v14, "Cp850"

    const-string v15, "Cp437"

    filled-new-array {v14, v15}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x1d

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "dos"

    const-string v3, "Cp850"

    const-string v14, "Cp437"

    filled-new-array {v3, v14}, [Ljava/lang/String;

    move-result-object v24

    const/16 v23, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x1e

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "cp852"

    const-string v14, "Cp852"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x1f

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "keybcs2"

    const-string v14, "Cp852"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x20

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "cp866"

    const-string v14, "Cp866"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x21

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "koi8_ru"

    const-string v3, "KOI8_R"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x22

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "koi8r"

    const-string v14, "KOI8_R"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v6, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x23

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "koi8u"

    const-string v14, "KOI8_R"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x24

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "koi8_ukr"

    const-string v3, "KOI8_R"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x25

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "tis620"

    const-string v14, "TIS620"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x26

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "cp1250"

    const-string v14, "Cp1250"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x27

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "win1250"

    const-string v3, "Cp1250"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x28

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "cp1251"

    const-string v14, "Cp1251"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v6, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x29

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "win1251"

    const-string v3, "Cp1251"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x2a

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "cp1251cias"

    const-string v3, "Cp1251"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x2b

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "cp1251csas"

    const-string v3, "Cp1251"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x2c

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "win1251ukr"

    const-string v3, "Cp1251"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x2d

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "cp1256"

    const-string v14, "Cp1256"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x2e

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "cp1257"

    const-string v14, "Cp1257"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x2f

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "macroman"

    const-string v14, "MacRoman"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x30

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "macce"

    const-string v14, "MacCentralEurope"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x31

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "utf8"

    const-string v14, "UTF-8"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v4, v6, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x32

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "utf8mb4"

    const-string v14, "UTF-8"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v5, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x33

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "ucs2"

    const-string v14, "UnicodeBig"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v7, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x34

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "binary"

    const-string v14, "ISO8859_1"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v6, v6, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x35

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "latin1_de"

    const-string v3, "ISO8859_1"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x36

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "german1"

    const-string v3, "ISO8859_1"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x37

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v21, "danish"

    const-string v3, "ISO8859_1"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v24

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v26}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;II)V

    const/16 v3, 0x38

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "utf16"

    const-string v14, "UTF-16"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v5, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x39

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "utf16le"

    const-string v14, "UTF-16LE"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v5, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x3a

    aput-object v0, v1, v3

    new-instance v0, Lcom/mysql/jdbc/MysqlCharset;

    const-string v3, "utf32"

    const-string v14, "UTF-32"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v3, v5, v2, v14}, Lcom/mysql/jdbc/MysqlCharset;-><init>(Ljava/lang/String;II[Ljava/lang/String;)V

    const/16 v3, 0x3b

    aput-object v0, v1, v3

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 218
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 219
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 220
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    const/4 v13, 0x0

    .line 221
    :goto_0
    array-length v12, v1

    if-ge v13, v12, :cond_5

    .line 222
    aget-object v12, v1, v13

    iget-object v12, v12, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 224
    aget-object v11, v1, v13

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget v11, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    aget-object v10, v1, v13

    iget-object v10, v10, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v11, v10

    sput v11, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    .line 228
    aget-object v10, v1, v13

    iget-object v10, v10, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 231
    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    if-nez v16, :cond_0

    .line 233
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {v3, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    move-object/from16 v9, v16

    .line 236
    :goto_2
    aget-object v8, v1, v13

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    aget-object v8, v1, v13

    iget v8, v8, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    if-le v8, v6, :cond_1

    .line 240
    invoke-interface {v14, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v8, 0x5

    const/4 v9, 0x6

    goto :goto_1

    :cond_2
    const-string v8, "big5"

    .line 247
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "gbk"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "sjis"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 248
    :cond_3
    aget-object v8, v1, v13

    iget-object v8, v8, Lcom/mysql/jdbc/MysqlCharset;->javaEncodingsUc:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x5

    const/4 v9, 0x6

    const/4 v10, 0x7

    const/16 v11, 0x8

    goto :goto_0

    .line 252
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    .line 253
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->JAVA_ENCODING_UC_TO_MYSQL_CHARSET:Ljava/util/Map;

    .line 254
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->MULTIBYTE_ENCODINGS:Ljava/util/Set;

    .line 255
    invoke-static {v15}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->ESCAPE_ENCODINGS:Ljava/util/Set;

    const/16 v0, 0x800

    .line 258
    new-array v1, v0, [Lcom/mysql/jdbc/Collation;

    .line 259
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v8, "big5_chinese_ci"

    const-string v9, "big5"

    invoke-direct {v3, v6, v8, v6, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v6

    .line 260
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v8, "latin2_czech_cs"

    const-string v9, "latin2"

    invoke-direct {v3, v7, v8, v2, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    .line 261
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v7, "dec8_swedish_ci"

    const-string v8, "dec8"

    invoke-direct {v3, v4, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v4

    .line 262
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "cp850_general_ci"

    const-string v7, "cp850"

    invoke-direct {v3, v5, v4, v6, v7}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v5

    .line 263
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "latin1_german1_ci"

    const-string v5, "latin1"

    const/4 v7, 0x5

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    .line 264
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "hp8_english_ci"

    const-string v5, "hp8"

    const/4 v7, 0x6

    invoke-direct {v3, v7, v4, v2, v5}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    .line 265
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "koi8r_general_ci"

    const-string v5, "koi8r"

    const/4 v7, 0x7

    invoke-direct {v3, v7, v4, v2, v5}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    .line 266
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "latin1_swedish_ci"

    const-string v5, "latin1"

    const/16 v7, 0x8

    invoke-direct {v3, v7, v4, v2, v5}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    .line 267
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "latin2_general_ci"

    const-string v5, "latin2"

    const/16 v7, 0x9

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    .line 268
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "swe7_swedish_ci"

    const-string v5, "swe7"

    const/16 v7, 0xa

    invoke-direct {v3, v7, v4, v2, v5}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    .line 269
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "ascii_general_ci"

    const-string v5, "ascii"

    const/16 v7, 0xb

    invoke-direct {v3, v7, v4, v2, v5}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    .line 270
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "ujis_japanese_ci"

    const-string v5, "ujis"

    const/16 v7, 0xc

    invoke-direct {v3, v7, v4, v2, v5}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    const/16 v3, 0xd

    .line 271
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xd

    const-string v7, "sjis_japanese_ci"

    const-string v8, "sjis"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe

    .line 272
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe

    const-string v7, "cp1251_bulgarian_ci"

    const-string v8, "cp1251"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf

    .line 273
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf

    const-string v7, "latin1_danish_ci"

    const-string v8, "latin1"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x10

    .line 274
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x10

    const-string v7, "hebrew_general_ci"

    const-string v8, "hebrew"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x11

    .line 275
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x11

    const-string v7, "latin1_german1_ci"

    const-string v8, "win1251"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x12

    .line 276
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x12

    const-string v7, "tis620_thai_ci"

    const-string v8, "tis620"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x13

    .line 277
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x13

    const-string v7, "euckr_korean_ci"

    const-string v8, "euckr"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x14

    .line 278
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x14

    const-string v7, "latin7_estonian_cs"

    const-string v8, "latin7"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x15

    .line 279
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x15

    const-string v7, "latin2_hungarian_ci"

    const-string v8, "latin2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x16

    .line 280
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x16

    const-string v7, "koi8u_general_ci"

    const-string v8, "koi8u"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x17

    .line 281
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x17

    const-string v7, "cp1251_ukrainian_ci"

    const-string v8, "cp1251"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x18

    .line 282
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x18

    const-string v7, "gb2312_chinese_ci"

    const-string v8, "gb2312"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x19

    .line 283
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x19

    const-string v7, "greek_general_ci"

    const-string v8, "greek"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    .line 284
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x1a

    const-string v7, "cp1250_general_ci"

    const-string v8, "cp1250"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    .line 285
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x1b

    const-string v7, "latin2_croatian_ci"

    const-string v8, "latin2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    .line 286
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x1c

    const-string v7, "gbk_chinese_ci"

    const-string v8, "gbk"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    .line 287
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x1d

    const-string v7, "cp1257_lithuanian_ci"

    const-string v8, "cp1257"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    .line 288
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x1e

    const-string v7, "latin5_turkish_ci"

    const-string v8, "latin5"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    .line 289
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x1f

    const-string v7, "latin1_german2_ci"

    const-string v8, "latin1"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x20

    .line 290
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x20

    const-string v7, "armscii8_general_ci"

    const-string v8, "armscii8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x21

    .line 291
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x21

    const-string v7, "utf8_general_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x22

    .line 292
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x22

    const-string v7, "cp1250_czech_cs"

    const-string v8, "cp1250"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x23

    .line 293
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x23

    const-string v7, "ucs2_general_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x24

    .line 294
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x24

    const-string v7, "cp866_general_ci"

    const-string v8, "cp866"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x25

    .line 295
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x25

    const-string v7, "keybcs2_general_ci"

    const-string v8, "keybcs2"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x26

    .line 296
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x26

    const-string v7, "macce_general_ci"

    const-string v8, "macce"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x27

    .line 297
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x27

    const-string v7, "macroman_general_ci"

    const-string v8, "macroman"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x28

    .line 298
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x28

    const-string v7, "cp852_general_ci"

    const-string v8, "cp852"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x29

    .line 299
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x29

    const-string v7, "latin7_general_ci"

    const-string v8, "latin7"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    .line 300
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x2a

    const-string v7, "latin7_general_cs"

    const-string v8, "latin7"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    .line 301
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x2b

    const-string v7, "macce_bin"

    const-string v8, "macce"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    .line 302
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x2c

    const-string v7, "cp1250_croatian_ci"

    const-string v8, "cp1250"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    .line 303
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x2d

    const-string v7, "utf8mb4_general_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    .line 304
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x2e

    const-string v7, "utf8mb4_bin"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x2f

    .line 305
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x2f

    const-string v7, "latin1_bin"

    const-string v8, "latin1"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x30

    .line 306
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x30

    const-string v7, "latin1_general_ci"

    const-string v8, "latin1"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x31

    .line 307
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x31

    const-string v7, "latin1_general_cs"

    const-string v8, "latin1"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x32

    .line 308
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x32

    const-string v7, "cp1251_bin"

    const-string v8, "cp1251"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x33

    .line 309
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x33

    const-string v7, "cp1251_general_ci"

    const-string v8, "cp1251"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x34

    .line 310
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x34

    const-string v7, "cp1251_general_cs"

    const-string v8, "cp1251"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x35

    .line 311
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x35

    const-string v7, "macroman_bin"

    const-string v8, "macroman"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x36

    .line 312
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x36

    const-string v7, "utf16_general_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x37

    .line 313
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x37

    const-string v7, "utf16_bin"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x38

    .line 314
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x38

    const-string v7, "utf16le_general_ci"

    const-string v8, "utf16le"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x39

    .line 315
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x39

    const-string v7, "cp1256_general_ci"

    const-string v8, "cp1256"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x3a

    .line 316
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x3a

    const-string v7, "cp1257_bin"

    const-string v8, "cp1257"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x3b

    .line 317
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x3b

    const-string v7, "cp1257_general_ci"

    const-string v8, "cp1257"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    .line 318
    new-instance v3, Lcom/mysql/jdbc/Collation;

    const-string v4, "utf32_general_ci"

    const-string v5, "utf32"

    const/16 v7, 0x3c

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v3, v1, v7

    const/16 v3, 0x3d

    .line 319
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x3d

    const-string v7, "utf32_bin"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x3e

    .line 320
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x3e

    const-string v7, "utf16le_bin"

    const-string v8, "utf16le"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x3f

    .line 321
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x3f

    const-string v7, "binary"

    const-string v8, "binary"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x40

    .line 322
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x40

    const-string v7, "armscii8_bin"

    const-string v8, "armscii8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x41

    .line 323
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x41

    const-string v7, "ascii_bin"

    const-string v8, "ascii"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x42

    .line 324
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x42

    const-string v7, "cp1250_bin"

    const-string v8, "cp1250"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x43

    .line 325
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x43

    const-string v7, "cp1256_bin"

    const-string v8, "cp1256"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x44

    .line 326
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x44

    const-string v7, "cp866_bin"

    const-string v8, "cp866"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x45

    .line 327
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x45

    const-string v7, "dec8_bin"

    const-string v8, "dec8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x46

    .line 328
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x46

    const-string v7, "greek_bin"

    const-string v8, "greek"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x47

    .line 329
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x47

    const-string v7, "hebrew_bin"

    const-string v8, "hebrew"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x48

    .line 330
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x48

    const-string v7, "hp8_bin"

    const-string v8, "hp8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x49

    .line 331
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x49

    const-string v7, "keybcs2_bin"

    const-string v8, "keybcs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x4a

    .line 332
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x4a

    const-string v7, "koi8r_bin"

    const-string v8, "koi8r"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x4b

    .line 333
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x4b

    const-string v7, "koi8u_bin"

    const-string v8, "koi8u"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x4c

    .line 334
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x4c

    const-string v7, "utf8_tolower_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x4d

    .line 335
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x4d

    const-string v7, "latin2_bin"

    const-string v8, "latin2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x4e

    .line 336
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x4e

    const-string v7, "latin5_bin"

    const-string v8, "latin5"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x4f

    .line 337
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x4f

    const-string v7, "latin7_bin"

    const-string v8, "latin7"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x50

    .line 338
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x50

    const-string v7, "cp850_bin"

    const-string v8, "cp850"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x51

    .line 339
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x51

    const-string v7, "cp852_bin"

    const-string v8, "cp852"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x52

    .line 340
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x52

    const-string v7, "swe7_bin"

    const-string v8, "swe7"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x53

    .line 341
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x53

    const-string v7, "utf8_bin"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x54

    .line 342
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x54

    const-string v7, "big5_bin"

    const-string v8, "big5"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x55

    .line 343
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x55

    const-string v7, "euckr_bin"

    const-string v8, "euckr"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x56

    .line 344
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x56

    const-string v7, "gb2312_bin"

    const-string v8, "gb2312"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x57

    .line 345
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x57

    const-string v7, "gbk_bin"

    const-string v8, "gbk"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x58

    .line 346
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x58

    const-string v7, "sjis_bin"

    const-string v8, "sjis"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x59

    .line 347
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x59

    const-string v7, "tis620_bin"

    const-string v8, "tis620"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x5a

    .line 348
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x5a

    const-string v7, "ucs2_bin"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x5b

    .line 349
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x5b

    const-string v7, "ujis_bin"

    const-string v8, "ujis"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x5c

    .line 350
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x5c

    const-string v7, "geostd8_general_ci"

    const-string v8, "geostd8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x5d

    .line 351
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x5d

    const-string v7, "geostd8_bin"

    const-string v8, "geostd8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x5e

    .line 352
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x5e

    const-string v7, "latin1_spanish_ci"

    const-string v8, "latin1"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x5f

    .line 353
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x5f

    const-string v7, "cp932_japanese_ci"

    const-string v8, "cp932"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x60

    .line 354
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x60

    const-string v7, "cp932_bin"

    const-string v8, "cp932"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x61

    .line 355
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x61

    const-string v7, "eucjpms_japanese_ci"

    const-string v8, "eucjpms"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x62

    .line 356
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x62

    const-string v7, "eucjpms_bin"

    const-string v8, "eucjpms"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x63

    .line 357
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x63

    const-string v7, "cp1250_polish_ci"

    const-string v8, "cp1250"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x65

    .line 359
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x65

    const-string v7, "utf16_unicode_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x66

    .line 360
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x66

    const-string v7, "utf16_icelandic_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x67

    .line 361
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x67

    const-string v7, "utf16_latvian_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x68

    .line 362
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x68

    const-string v7, "utf16_romanian_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x69

    .line 363
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x69

    const-string v7, "utf16_slovenian_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x6a

    .line 364
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x6a

    const-string v7, "utf16_polish_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x6b

    .line 365
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x6b

    const-string v7, "utf16_estonian_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x6c

    .line 366
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x6c

    const-string v7, "utf16_spanish_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x6d

    .line 367
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x6d

    const-string v7, "utf16_swedish_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x6e

    .line 368
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x6e

    const-string v7, "utf16_turkish_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x6f

    .line 369
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x6f

    const-string v7, "utf16_czech_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x70

    .line 370
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x70

    const-string v7, "utf16_danish_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x71

    .line 371
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x71

    const-string v7, "utf16_lithuanian_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x72

    .line 372
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x72

    const-string v7, "utf16_slovak_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x73

    .line 373
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x73

    const-string v7, "utf16_spanish2_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x74

    .line 374
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x74

    const-string v7, "utf16_roman_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x75

    .line 375
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x75

    const-string v7, "utf16_persian_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x76

    .line 376
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x76

    const-string v7, "utf16_esperanto_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x77

    .line 377
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x77

    const-string v7, "utf16_hungarian_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x78

    .line 378
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x78

    const-string v7, "utf16_sinhala_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x79

    .line 379
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x79

    const-string v7, "utf16_german2_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x7a

    .line 380
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x7a

    const-string v7, "utf16_croatian_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x7b

    .line 381
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x7b

    const-string v7, "utf16_unicode_520_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x7c

    .line 382
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x7c

    const-string v7, "utf16_vietnamese_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x80

    .line 384
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x80

    const-string v7, "ucs2_unicode_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x81

    .line 385
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x81

    const-string v7, "ucs2_icelandic_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x82

    .line 386
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x82

    const-string v7, "ucs2_latvian_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x83

    .line 387
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x83

    const-string v7, "ucs2_romanian_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x84

    .line 388
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x84

    const-string v7, "ucs2_slovenian_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x85

    .line 389
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x85

    const-string v7, "ucs2_polish_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x86

    .line 390
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x86

    const-string v7, "ucs2_estonian_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x87

    .line 391
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x87

    const-string v7, "ucs2_spanish_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x88

    .line 392
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x88

    const-string v7, "ucs2_swedish_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x89

    .line 393
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x89

    const-string v7, "ucs2_turkish_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x8a

    .line 394
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x8a

    const-string v7, "ucs2_czech_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x8b

    .line 395
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x8b

    const-string v7, "ucs2_danish_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x8c

    .line 396
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x8c

    const-string v7, "ucs2_lithuanian_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x8d

    .line 397
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x8d

    const-string v7, "ucs2_slovak_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x8e

    .line 398
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x8e

    const-string v7, "ucs2_spanish2_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x8f

    .line 399
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x8f

    const-string v7, "ucs2_roman_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x90

    .line 400
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x90

    const-string v7, "ucs2_persian_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x91

    .line 401
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x91

    const-string v7, "ucs2_esperanto_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x92

    .line 402
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x92

    const-string v7, "ucs2_hungarian_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x93

    .line 403
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x93

    const-string v7, "ucs2_sinhala_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x94

    .line 404
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x94

    const-string v7, "ucs2_german2_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x95

    .line 405
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x95

    const-string v7, "ucs2_croatian_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x96

    .line 406
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x96

    const-string v7, "ucs2_unicode_520_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x97

    .line 407
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x97

    const-string v7, "ucs2_vietnamese_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x9f

    .line 409
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x9f

    const-string v7, "ucs2_general_mysql500_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa0

    .line 410
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa0

    const-string v7, "utf32_unicode_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa1

    .line 411
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa1

    const-string v7, "utf32_icelandic_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa2

    .line 412
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa2

    const-string v7, "utf32_latvian_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa3

    .line 413
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa3

    const-string v7, "utf32_romanian_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa4

    .line 414
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa4

    const-string v7, "utf32_slovenian_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa5

    .line 415
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa5

    const-string v7, "utf32_polish_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa6

    .line 416
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa6

    const-string v7, "utf32_estonian_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa7

    .line 417
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa7

    const-string v7, "utf32_spanish_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa8

    .line 418
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa8

    const-string v7, "utf32_swedish_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xa9

    .line 419
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xa9

    const-string v7, "utf32_turkish_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xaa

    .line 420
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xaa

    const-string v7, "utf32_czech_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xab

    .line 421
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xab

    const-string v7, "utf32_danish_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xac

    .line 422
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xac

    const-string v7, "utf32_lithuanian_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xad

    .line 423
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xad

    const-string v7, "utf32_slovak_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xae

    .line 424
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xae

    const-string v7, "utf32_spanish2_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xaf

    .line 425
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xaf

    const-string v7, "utf32_roman_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb0

    .line 426
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xb0

    const-string v7, "utf32_persian_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb1

    .line 427
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xb1

    const-string v7, "utf32_esperanto_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb2

    .line 428
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xb2

    const-string v7, "utf32_hungarian_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb3

    .line 429
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xb3

    const-string v7, "utf32_sinhala_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb4

    .line 430
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xb4

    const-string v7, "utf32_german2_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb5

    .line 431
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xb5

    const-string v7, "utf32_croatian_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb6

    .line 432
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xb6

    const-string v7, "utf32_unicode_520_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xb7

    .line 433
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xb7

    const-string v7, "utf32_vietnamese_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc0

    .line 435
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc0

    const-string v7, "utf8_unicode_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc1

    .line 436
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc1

    const-string v7, "utf8_icelandic_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc2

    .line 437
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc2

    const-string v7, "utf8_latvian_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc3

    .line 438
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc3

    const-string v7, "utf8_romanian_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc4

    .line 439
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc4

    const-string v7, "utf8_slovenian_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc5

    .line 440
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc5

    const-string v7, "utf8_polish_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc6

    .line 441
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc6

    const-string v7, "utf8_estonian_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc7

    .line 442
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc7

    const-string v7, "utf8_spanish_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc8

    .line 443
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc8

    const-string v7, "utf8_swedish_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xc9

    .line 444
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xc9

    const-string v7, "utf8_turkish_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xca

    .line 445
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xca

    const-string v7, "utf8_czech_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xcb

    .line 446
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xcb

    const-string v7, "utf8_danish_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xcc

    .line 447
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xcc

    const-string v7, "utf8_lithuanian_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xcd

    .line 448
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xcd

    const-string v7, "utf8_slovak_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xce

    .line 449
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xce

    const-string v7, "utf8_spanish2_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xcf

    .line 450
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xcf

    const-string v7, "utf8_roman_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd0

    .line 451
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xd0

    const-string v7, "utf8_persian_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd1

    .line 452
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xd1

    const-string v7, "utf8_esperanto_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd2

    .line 453
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xd2

    const-string v7, "utf8_hungarian_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd3

    .line 454
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xd3

    const-string v7, "utf8_sinhala_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd4

    .line 455
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xd4

    const-string v7, "utf8_german2_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd5

    .line 456
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xd5

    const-string v7, "utf8_croatian_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd6

    .line 457
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xd6

    const-string v7, "utf8_unicode_520_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xd7

    .line 458
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xd7

    const-string v7, "utf8_vietnamese_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xdf

    .line 460
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xdf

    const-string v7, "utf8_general_mysql500_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe0

    .line 461
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe0

    const-string v7, "utf8mb4_unicode_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe1

    .line 462
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe1

    const-string v7, "utf8mb4_icelandic_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe2

    .line 463
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe2

    const-string v7, "utf8mb4_latvian_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe3

    .line 464
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe3

    const-string v7, "utf8mb4_romanian_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe4

    .line 465
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe4

    const-string v7, "utf8mb4_slovenian_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe5

    .line 466
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe5

    const-string v7, "utf8mb4_polish_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe6

    .line 467
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe6

    const-string v7, "utf8mb4_estonian_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe7

    .line 468
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe7

    const-string v7, "utf8mb4_spanish_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe8

    .line 469
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe8

    const-string v7, "utf8mb4_swedish_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xe9

    .line 470
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xe9

    const-string v7, "utf8mb4_turkish_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xea

    .line 471
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xea

    const-string v7, "utf8mb4_czech_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xeb

    .line 472
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xeb

    const-string v7, "utf8mb4_danish_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xec

    .line 473
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xec

    const-string v7, "utf8mb4_lithuanian_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xed

    .line 474
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xed

    const-string v7, "utf8mb4_slovak_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xee

    .line 475
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xee

    const-string v7, "utf8mb4_spanish2_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xef

    .line 476
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xef

    const-string v7, "utf8mb4_roman_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf0

    .line 477
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf0

    const-string v7, "utf8mb4_persian_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf1

    .line 478
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf1

    const-string v7, "utf8mb4_esperanto_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf2

    .line 479
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf2

    const-string v7, "utf8mb4_hungarian_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf3

    .line 480
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf3

    const-string v7, "utf8mb4_sinhala_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf4

    .line 481
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf4

    const-string v7, "utf8mb4_german2_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf5

    .line 482
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf5

    const-string v7, "utf8mb4_croatian_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf6

    .line 483
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf6

    const-string v7, "utf8mb4_unicode_520_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf7

    .line 484
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf7

    const-string v7, "utf8mb4_vietnamese_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf8

    .line 485
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf8

    const-string v7, "gb18030_chinese_ci"

    const-string v8, "gb18030"

    invoke-direct {v4, v5, v7, v6, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xf9

    .line 486
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xf9

    const-string v7, "gb18030_bin"

    const-string v8, "gb18030"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xfa

    .line 487
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xfa

    const-string v7, "gb18030_unicode_520_ci"

    const-string v8, "gb18030"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0xff

    .line 489
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0xff

    const-string v7, "utf8mb4_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x100

    .line 490
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x100

    const-string v7, "utf8mb4_de_pb_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x101

    .line 491
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x101

    const-string v7, "utf8mb4_is_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x102

    .line 492
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x102

    const-string v7, "utf8mb4_lv_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x103

    .line 493
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x103

    const-string v7, "utf8mb4_ro_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x104

    .line 494
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x104

    const-string v7, "utf8mb4_sl_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x105

    .line 495
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x105

    const-string v7, "utf8mb4_pl_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x106

    .line 496
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x106

    const-string v7, "utf8mb4_et_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x107

    .line 497
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x107

    const-string v7, "utf8mb4_es_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x108

    .line 498
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x108

    const-string v7, "utf8mb4_sv_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x109

    .line 499
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x109

    const-string v7, "utf8mb4_tr_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x10a

    .line 500
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x10a

    const-string v7, "utf8mb4_cs_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x10b

    .line 501
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x10b

    const-string v7, "utf8mb4_da_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x10c

    .line 502
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x10c

    const-string v7, "utf8mb4_lt_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x10d

    .line 503
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x10d

    const-string v7, "utf8mb4_sk_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x10e

    .line 504
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x10e

    const-string v7, "utf8mb4_es_trad_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x10f

    .line 505
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x10f

    const-string v7, "utf8mb4_la_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x111

    .line 507
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x111

    const-string v7, "utf8mb4_eo_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x112

    .line 508
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x112

    const-string v7, "utf8mb4_hu_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x113

    .line 509
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x113

    const-string v7, "utf8mb4_hr_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x115

    .line 511
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x115

    const-string v7, "utf8mb4_vi_0900_ai_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x116

    .line 513
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x116

    const-string v7, "utf8mb4_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x117

    .line 514
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x117

    const-string v7, "utf8mb4_de_pb_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x118

    .line 515
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x118

    const-string v7, "utf8mb4_is_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x119

    .line 516
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x119

    const-string v7, "utf8mb4_lv_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x11a

    .line 517
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x11a

    const-string v7, "utf8mb4_ro_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x11b

    .line 518
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x11b

    const-string v7, "utf8mb4_sl_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x11c

    .line 519
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x11c

    const-string v7, "utf8mb4_pl_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x11d

    .line 520
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x11d

    const-string v7, "utf8mb4_et_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x11e

    .line 521
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x11e

    const-string v7, "utf8mb4_es_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x11f

    .line 522
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x11f

    const-string v7, "utf8mb4_sv_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x120

    .line 523
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x120

    const-string v7, "utf8mb4_tr_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x121

    .line 524
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x121

    const-string v7, "utf8mb4_cs_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x122

    .line 525
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x122

    const-string v7, "utf8mb4_da_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x123

    .line 526
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x123

    const-string v7, "utf8mb4_lt_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x124

    .line 527
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x124

    const-string v7, "utf8mb4_sk_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x125

    .line 528
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x125

    const-string v7, "utf8mb4_es_trad_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x126

    .line 529
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x126

    const-string v7, "utf8mb4_la_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x128

    .line 531
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x128

    const-string v7, "utf8mb4_eo_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x129

    .line 532
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x129

    const-string v7, "utf8mb4_hu_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x12a

    .line 533
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x12a

    const-string v7, "utf8mb4_hr_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x12c

    .line 535
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x12c

    const-string v7, "utf8mb4_vi_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x12f

    .line 537
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x12f

    const-string v7, "utf8mb4_ja_0900_as_cs"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x146

    .line 539
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x146

    const-string v7, "utf8mb4_test_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x147

    .line 540
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x147

    const-string v7, "utf16_test_ci"

    const-string v8, "utf16"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x148

    .line 541
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x148

    const-string v7, "utf8mb4_test_400_ci"

    const-string v8, "utf8mb4"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x150

    .line 543
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x150

    const-string v7, "utf8_bengali_standard_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x151

    .line 544
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x151

    const-string v7, "utf8_bengali_traditional_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x160

    .line 546
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x160

    const-string v7, "utf8_phone_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x161

    .line 547
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x161

    const-string v7, "utf8_test_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x162

    .line 548
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x162

    const-string v7, "utf8_5624_1"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x163

    .line 549
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x163

    const-string v7, "utf8_5624_2"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x164

    .line 550
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x164

    const-string v7, "utf8_5624_3"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x165

    .line 551
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x165

    const-string v7, "utf8_5624_4"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x166

    .line 552
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x166

    const-string v7, "ucs2_test_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x167

    .line 553
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x167

    const-string v7, "ucs2_vn_ci"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x168

    .line 554
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x168

    const-string v7, "ucs2_5624_1"

    const-string v8, "ucs2"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x170

    .line 556
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x170

    const-string v7, "utf8_5624_5"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x187

    .line 557
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x187

    const-string v7, "utf32_test_ci"

    const-string v8, "utf32"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    const/16 v3, 0x7ff

    .line 558
    new-instance v4, Lcom/mysql/jdbc/Collation;

    const/16 v5, 0x7ff

    const-string v7, "utf8_maxuserid_ci"

    const-string v8, "utf8"

    invoke-direct {v4, v5, v7, v2, v8}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    aput-object v4, v1, v3

    .line 560
    new-array v3, v0, [Ljava/lang/String;

    sput-object v3, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    .line 561
    new-array v3, v0, [Lcom/mysql/jdbc/MysqlCharset;

    sput-object v3, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    .line 562
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 563
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 564
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 566
    new-instance v7, Lcom/mysql/jdbc/Collation;

    const-string v8, "none"

    const-string v9, "latin1"

    invoke-direct {v7, v2, v8, v2, v9}, Lcom/mysql/jdbc/Collation;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    :goto_3
    if-ge v6, v0, :cond_a

    .line 568
    aget-object v2, v1, v6

    if-eqz v2, :cond_6

    aget-object v2, v1, v6

    goto :goto_4

    :cond_6
    move-object v2, v7

    .line 569
    :goto_4
    sget-object v8, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_COLLATION_NAME:[Ljava/lang/String;

    iget-object v9, v2, Lcom/mysql/jdbc/Collation;->collationName:Ljava/lang/String;

    aput-object v9, v8, v6

    .line 570
    sget-object v8, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    iget-object v9, v2, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    aput-object v9, v8, v6

    .line 571
    iget-object v8, v2, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    iget-object v8, v8, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    .line 573
    invoke-interface {v3, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v10, v2, Lcom/mysql/jdbc/Collation;->priority:I

    if-ge v9, v10, :cond_8

    .line 574
    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget v2, v2, Lcom/mysql/jdbc/Collation;->priority:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const-string v2, "utf8mb4"

    .line 579
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 580
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 584
    :cond_a
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_COLLATION_INDEX:Ljava/util/Map;

    .line 585
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->UTF8MB4_INDEXES:Ljava/util/Set;

    .line 590
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "czech"

    const-string v2, "latin2"

    .line 591
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "danish"

    const-string v2, "latin1"

    .line 592
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dutch"

    const-string v2, "latin1"

    .line 593
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "english"

    const-string v2, "latin1"

    .line 594
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "estonian"

    const-string v2, "latin7"

    .line 595
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "french"

    const-string v2, "latin1"

    .line 596
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "german"

    const-string v2, "latin1"

    .line 597
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "greek"

    const-string v2, "greek"

    .line 598
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hungarian"

    const-string v2, "latin2"

    .line 599
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "italian"

    const-string v2, "latin1"

    .line 600
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "japanese"

    const-string v2, "ujis"

    .line 601
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "japanese-sjis"

    const-string v2, "sjis"

    .line 602
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "korean"

    const-string v2, "euckr"

    .line 603
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "norwegian"

    const-string v2, "latin1"

    .line 604
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "norwegian-ny"

    const-string v2, "latin1"

    .line 605
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "polish"

    const-string v2, "latin2"

    .line 606
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "portuguese"

    const-string v2, "latin1"

    .line 607
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "romanian"

    const-string v2, "latin2"

    .line 608
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "russian"

    const-string v2, "koi8r"

    .line 609
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "serbian"

    const-string v2, "cp1250"

    .line 610
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "slovak"

    const-string v2, "latin2"

    .line 611
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spanish"

    const-string v2, "latin1"

    .line 612
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "swedish"

    const-string v2, "latin1"

    .line 613
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ukrainian"

    const-string v2, "koi8u"

    .line 614
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/CharsetMapping;->ERROR_MESSAGE_FILE_TO_MYSQL_CHARSET:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getCharacterEncodingForErrorMessages(Lcom/mysql/jdbc/ConnectionImpl;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 742
    invoke-virtual {p0, v1, v1, v0}, Lcom/mysql/jdbc/ConnectionImpl;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "jdbc.local.character_set_results"

    .line 743
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 745
    invoke-static {p0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    return-object p0

    :cond_1
    const-string v1, "language"

    .line 754
    invoke-virtual {p0, v1}, Lcom/mysql/jdbc/ConnectionImpl;->getServerVariable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 756
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 761
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "/"

    .line 763
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "\\"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    :cond_4
    const/16 v2, 0x2f

    add-int/lit8 v3, v1, -0x1

    .line 767
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    const/16 v2, 0x5c

    .line 770
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    :cond_5
    if-ne v2, v4, :cond_6

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-eq v0, v1, :cond_a

    if-ge v1, v0, :cond_7

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 782
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 784
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->ERROR_MESSAGE_FILE_TO_MYSQL_CHARSET:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_8

    const-string p0, "Cp1252"

    return-object p0

    .line 791
    :cond_8
    invoke-static {p0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, "Cp1252"

    return-object p0

    :cond_9
    return-object p0

    :cond_a
    :goto_1
    const-string p0, "Cp1252"

    return-object p0

    :cond_b
    :goto_2
    const-string p0, "Cp1252"

    return-object p0
.end method

.method public static getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 665
    check-cast p1, Lcom/mysql/jdbc/Connection;

    invoke-static {p0, p1}, Lcom/mysql/jdbc/CharsetMapping;->getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 667
    sget-object p1, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_COLLATION_INDEX:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 669
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getJavaEncodingForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 718
    invoke-static {p0, v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForCollationIndex(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaEncodingForCollationIndex(Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 710
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    .line 711
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v0, p0

    .line 712
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/MysqlCharset;->getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getJavaEncodingForMysqlCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 706
    invoke-static {p0, v0}, Lcom/mysql/jdbc/CharsetMapping;->getJavaEncodingForMysqlCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getJavaEncodingForMysqlCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 698
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/MysqlCharset;

    if-eqz p0, :cond_0

    .line 700
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/MysqlCharset;->getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getMblen(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 816
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/MysqlCharset;

    if-eqz p0, :cond_0

    .line 818
    iget p0, p0, Lcom/mysql/jdbc/MysqlCharset;->mblen:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final getMysqlCharsetForJavaEncoding(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 623
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/CharsetMapping;->JAVA_ENCODING_UC_TO_MYSQL_CHARSET:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_4

    .line 626
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    .line 630
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 631
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/MysqlCharset;

    if-nez p1, :cond_1

    .line 636
    iget-object p0, v2, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    .line 639
    iget v3, v1, Lcom/mysql/jdbc/MysqlCharset;->major:I

    iget v4, v2, Lcom/mysql/jdbc/MysqlCharset;->major:I

    if-lt v3, v4, :cond_2

    iget v3, v1, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    iget v4, v2, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    if-lt v3, v4, :cond_2

    iget v3, v1, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    iget v4, v2, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    if-lt v3, v4, :cond_2

    iget v3, v1, Lcom/mysql/jdbc/MysqlCharset;->priority:I

    iget v4, v2, Lcom/mysql/jdbc/MysqlCharset;->priority:I

    if-ge v3, v4, :cond_0

    iget v3, v1, Lcom/mysql/jdbc/MysqlCharset;->major:I

    iget v4, v2, Lcom/mysql/jdbc/MysqlCharset;->major:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    iget v4, v2, Lcom/mysql/jdbc/MysqlCharset;->minor:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    iget v4, v2, Lcom/mysql/jdbc/MysqlCharset;->subminor:I

    if-ne v3, v4, :cond_0

    .line 642
    :cond_2
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/MysqlCharset;->isOkayForVersion(Lcom/mysql/jdbc/Connection;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 649
    iget-object p0, v1, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    .line 657
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-static {p1, v1, v0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    .line 658
    invoke-virtual {p1, p0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 659
    throw p1

    :catch_1
    move-exception p0

    .line 655
    throw p0
.end method

.method public static getMysqlCharsetNameForCollationIndex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 676
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-ge v0, v1, :cond_0

    .line 677
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->COLLATION_INDEX_TO_CHARSET:[Lcom/mysql/jdbc/MysqlCharset;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static final getNumberOfCharsetsConfigured()I
    .locals 1

    .line 722
    sget v0, Lcom/mysql/jdbc/CharsetMapping;->numberOfEncodingsConfigured:I

    return v0
.end method

.method public static final isMultibyteCharset(Ljava/lang/String;)Z
    .locals 2

    .line 811
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->MULTIBYTE_ENCODINGS:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static final requiresEscapeEasternUnicode(Ljava/lang/String;)Z
    .locals 2

    .line 802
    sget-object v0, Lcom/mysql/jdbc/CharsetMapping;->ESCAPE_ENCODINGS:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
