.class public Lcom/mysql/jdbc/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/StringUtils$SearchMode;
    }
.end annotation


# static fields
.field private static final BYTE_RANGE:I = 0x100

.field private static final HEX_DIGITS:[C

.field private static final NON_COMMENTS_MYSQL_VERSION_REF_LENGTH:I = 0x5

.field public static final SEARCH_MODE__ALL:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__BSESC_COM_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__BSESC_MRK_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__COM_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__MRK_WS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEARCH_MODE__NONE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALID_ID_CHARS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@"

.field static final WILDCARD_ESCAPE:C = '\\'

.field static final WILDCARD_MANY:C = '%'

.field static final WILDCARD_ONE:C = '_'

.field private static final WILD_COMPARE_CONTINUE_WITH_WILD:I = 0x1

.field private static final WILD_COMPARE_MATCH:I = 0x0

.field private static final WILD_COMPARE_NO_MATCH:I = -0x1

.field private static allBytes:[B

.field private static byteToChars:[C

.field private static final charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final platformEncoding:Ljava/lang/String;

.field private static toPlainStringMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 63
    const-class v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__ALL:Ljava/util/Set;

    .line 68
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    .line 74
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v3, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__BSESC_COM_WS:Ljava/util/Set;

    .line 80
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__BSESC_MRK_WS:Ljava/util/Set;

    .line 86
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__COM_WS:Ljava/util/Set;

    .line 92
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    sget-object v1, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_WS:Ljava/util/Set;

    .line 98
    const-class v0, Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__NONE:Ljava/util/Set;

    const/16 v0, 0x100

    .line 105
    new-array v1, v0, [B

    sput-object v1, Lcom/mysql/jdbc/StringUtils;->allBytes:[B

    .line 107
    new-array v0, v0, [C

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->byteToChars:[C

    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "file.encoding"

    .line 121
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    const/16 v0, -0x80

    :goto_0
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    .line 152
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->allBytes:[B

    add-int/lit16 v2, v0, 0x80

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/mysql/jdbc/StringUtils;->allBytes:[B

    const/16 v2, 0xff

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([BII)V

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    if-ge v4, v1, :cond_1

    .line 160
    sget-object v5, Lcom/mysql/jdbc/StringUtils;->byteToChars:[C

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 164
    :cond_1
    :try_start_0
    const-class v0, Ljava/math/BigDecimal;

    const-string v1, "toPlainString"

    new-array v2, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->toPlainStringMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 v0, 0x10

    .line 2376
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendAsHex(Ljava/lang/StringBuilder;I)V
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "0x0"

    .line 2387
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/16 v0, 0x20

    const/4 v1, 0x0

    const-string v2, "0x"

    .line 2395
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, -0x4

    ushr-int v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    if-eqz v1, :cond_2

    .line 2400
    sget-object v3, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 2402
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    aget-char v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-nez v0, :cond_1

    return-void
.end method

.method public static appendAsHex(Ljava/lang/StringBuilder;[B)V
    .locals 5

    const-string v0, "0x"

    .line 2379
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 2381
    sget-object v3, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mysql/jdbc/StringUtils;->HEX_DIGITS:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static consistentToString(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 184
    :cond_0
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->toPlainStringMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 186
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->toPlainStringMethod:Ljava/lang/reflect/Method;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 194
    :catch_0
    :cond_1
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpAsHex([BI)Ljava/lang/String;
    .locals 14

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    div-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x7f

    const/16 v6, 0x20

    const/16 v7, 0x8

    const/4 v8, 0x1

    if-ge v3, v1, :cond_4

    if-ge v4, p1, :cond_4

    move v10, v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_1

    .line 217
    aget-byte v11, p0, v10

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 219
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v12, v8, :cond_0

    .line 220
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 223
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    const-string v8, "    "

    .line 227
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v4

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_3

    .line 230
    aget-byte v9, p0, v8

    and-int/lit16 v9, v9, 0xff

    if-le v9, v6, :cond_2

    if-ge v9, v5, :cond_2

    .line 233
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v9, v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_2
    const-string v9, ". "

    .line 235
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const-string v4, "\n"

    .line 241
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto/16 :goto_0

    :cond_4
    move v1, v4

    :goto_4
    if-ge v1, p1, :cond_6

    .line 247
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v8, :cond_5

    .line 250
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    :goto_5
    if-ge v2, v7, :cond_7

    const-string v1, "   "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    const-string v1, "    "

    .line 261
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    if-ge v4, p1, :cond_9

    .line 264
    aget-byte v1, p0, v4

    and-int/lit16 v1, v1, 0xff

    if-le v1, v6, :cond_8

    if-ge v1, v5, :cond_8

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_8
    const-string v1, ". "

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_9
    const-string p0, "\n"

    .line 273
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static endsWith([BLjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 279
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 280
    array-length v2, p0

    sub-int/2addr v2, v1

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    .line 282
    aget-byte v2, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static escapeEasternUnicodeByteStream([BLjava/lang/String;)[B
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 304
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 305
    new-array p0, v1, [B

    return-object p0

    .line 308
    :cond_1
    array-length v0, p0

    .line 312
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x0

    .line 315
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 317
    aget-byte v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v4

    goto :goto_2

    .line 322
    :cond_2
    aget-byte v4, p0, v3

    if-gez v4, :cond_3

    add-int/lit16 v4, v4, 0x100

    .line 329
    :cond_3
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x80

    if-lt v4, v6, :cond_5

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    .line 349
    aget-byte v4, p0, v3

    if-gez v4, :cond_4

    add-int/lit16 v4, v4, 0x100

    .line 356
    :cond_4
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-ne v4, v5, :cond_7

    .line 361
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_5
    if-ne v4, v5, :cond_7

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7

    add-int/lit8 v4, v3, 0x1

    .line 366
    aget-byte v6, p0, v4

    if-gez v6, :cond_6

    add-int/lit16 v6, v6, 0x100

    :cond_6
    const/16 v7, 0x62

    if-ne v6, v7, :cond_7

    .line 374
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 375
    invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v3, v4

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    :goto_2
    if-lt v3, v0, :cond_8

    .line 392
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static escapeQuote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2042
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1, p1}, Lcom/mysql/jdbc/StringUtils;->stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p0

    .line 2044
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 2048
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2049
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 2051
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2053
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v3, -0x1

    if-le v0, v3, :cond_1

    .line 2056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2057
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 2058
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 2060
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2063
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 127
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 130
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/mysql/jdbc/StringUtils;->charsetsByAlias:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0

    .line 146
    :catch_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :catch_1
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :catch_2
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p0}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static firstAlphaCharUc(Ljava/lang/String;I)C
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 430
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_2

    .line 433
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 435
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 436
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static firstNonWsCharUc(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    .line 404
    invoke-static {p0, v0}, Lcom/mysql/jdbc/StringUtils;->firstNonWsCharUc(Ljava/lang/String;I)C

    move-result p0

    return p0
.end method

.method public static firstNonWsCharUc(Ljava/lang/String;I)C
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 412
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge p1, v1, :cond_2

    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 417
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 418
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static fixDecimalExponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x45

    .line 453
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x65

    .line 456
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    :cond_0
    if-eq v0, v1, :cond_1

    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-le v1, v0, :cond_1

    .line 461
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_1

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    .line 465
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 467
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    .line 2325
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;IILjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;II)[B
    .locals 1

    .line 2335
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;IILjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;IILjava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2353
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    .line 2354
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 2357
    :cond_0
    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    add-int/2addr p2, p1

    .line 2355
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    .line 2360
    :cond_2
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 2362
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2365
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 2366
    new-array p2, p1, [B

    const/4 p3, 0x0

    .line 2367
    invoke-virtual {p0, p2, p3, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p2
.end method

.method public static getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 595
    :try_start_0
    invoke-virtual {p1, p0, p4, p5}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;II)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 597
    invoke-static {p0, p4, p5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;II)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    add-int/2addr p5, p4

    .line 599
    invoke-virtual {p0, p4, p5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 600
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p6, :cond_2

    .line 602
    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 604
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 605
    invoke-static {p1, p0}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    return-object p0

    .line 612
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "StringUtils.5"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StringUtils.6"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 564
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 566
    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 568
    :cond_1
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p4, :cond_2

    .line 570
    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 572
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 573
    invoke-static {p1, p0}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    return-object p0

    .line 580
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "StringUtils.5"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StringUtils.6"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2344
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;IILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p6, :cond_0

    .line 640
    :try_start_0
    invoke-interface {p6, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object p6

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    invoke-static {p1, p6}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object p6

    :goto_0
    move-object v1, p6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p7

    .line 642
    invoke-static/range {v0 .. v7}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 644
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StringUtils.5"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StringUtils.6"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 624
    :try_start_0
    invoke-interface {p4, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    invoke-static {p1, p4}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object p4

    :goto_0
    move-object v1, p4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    .line 626
    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Lcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 628
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StringUtils.5"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StringUtils.6"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getBytes([C)[B
    .locals 3

    const/4 v0, 0x0

    .line 2288
    :try_start_0
    array-length v1, p0

    sget-object v2, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBytes([CII)[B
    .locals 1

    .line 2298
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getBytes([CIILjava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2311
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 2313
    invoke-static {p0, p1, p2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2316
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 2317
    new-array p2, p1, [B

    const/4 p3, 0x0

    .line 2318
    invoke-virtual {p0, p2, p3, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object p2
.end method

.method public static getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;IIZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 517
    :try_start_0
    invoke-virtual {p1, p0, p4, p5}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes([CII)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 519
    invoke-static {p0, p4, p5}, Lcom/mysql/jdbc/StringUtils;->getBytes([CII)[B

    move-result-object p0

    goto :goto_0

    .line 521
    :cond_1
    invoke-static {p0, p4, p5, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object p1

    if-nez p6, :cond_2

    .line 523
    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_2

    .line 525
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 526
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p0, p4, p5}, Ljava/lang/String;-><init>([CII)V

    invoke-static {p1, p3}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    return-object p0

    .line 533
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "StringUtils.0"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StringUtils.1"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 486
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes([C)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 488
    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes([C)[B

    move-result-object p0

    goto :goto_0

    .line 490
    :cond_1
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->getBytes([CLjava/lang/String;)[B

    move-result-object p1

    if-nez p4, :cond_2

    .line 492
    invoke-static {p2}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 494
    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 495
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {p1, p3}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    return-object p0

    .line 502
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "StringUtils.0"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StringUtils.1"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getBytes([CLjava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2307
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/mysql/jdbc/StringUtils;->getBytes([CIILjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes([CLjava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p4, :cond_0

    .line 545
    :try_start_0
    invoke-interface {p4, p1}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object p4

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    invoke-static {p1, p4}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->getInstance(Ljava/lang/String;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object p4

    :goto_0
    move-object v1, p4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    .line 547
    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->getBytes([CLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 549
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StringUtils.0"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StringUtils.1"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p5}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getBytesNullTerminated(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2409
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 2411
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 2413
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 2414
    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2415
    invoke-virtual {p0, v0, v1, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 2416
    aput-byte v1, v0, p1

    return-object v0
.end method

.method public static getBytesWrapped(Ljava/lang/String;CCLcom/mysql/jdbc/SingleByteCharsetConverter;Ljava/lang/String;Ljava/lang/String;ZLcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 659
    :try_start_0
    invoke-virtual {p3, p0, p1, p2}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytesWrapped(Ljava/lang/String;CC)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 661
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, 0x2

    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 662
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 668
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 669
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 674
    invoke-static {p0, p4}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-nez p6, :cond_2

    .line 676
    invoke-static {p4}, Lcom/mysql/jdbc/CharsetMapping;->requiresEscapeEasternUnicode(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 678
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 679
    invoke-static {p1, p0}, Lcom/mysql/jdbc/StringUtils;->escapeEasternUnicodeByteStream([BLjava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    move-object p0, p1

    :goto_0
    return-object p0

    .line 686
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "StringUtils.10"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "StringUtils.11"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "S1009"

    invoke-static {p0, p1, p7}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getInt([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 692
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mysql/jdbc/StringUtils;->getInt([BII)I

    move-result p0

    return p0
.end method

.method public static getInt([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    :goto_0
    if-ge p1, p2, :cond_0

    .line 701
    aget-byte v0, p0, p1

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_c

    .line 712
    aget-byte v0, p0, p1

    int-to-char v0, v0

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x1

    goto :goto_1

    .line 715
    :cond_1
    aget-byte v0, p0, p1

    int-to-char v0, v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const v1, 0xccccccc

    const/4 v4, 0x7

    if-eqz v0, :cond_3

    const/16 v4, 0x8

    :cond_3
    move v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v2, p2, :cond_8

    .line 734
    aget-byte v7, p0, v2

    int-to-char v7, v7

    .line 736
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    const/16 v9, 0xa

    if-eqz v8, :cond_4

    add-int/lit8 v7, v7, -0x30

    int-to-char v7, v7

    goto :goto_3

    .line 738
    :cond_4
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 739
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    add-int/lit8 v7, v7, -0x41

    add-int/2addr v7, v9

    int-to-char v7, v7

    :goto_3
    if-lt v7, v9, :cond_5

    goto :goto_6

    :cond_5
    if-gt v6, v1, :cond_7

    if-ne v6, v1, :cond_6

    if-le v7, v4, :cond_6

    goto :goto_4

    :cond_6
    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v7

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v5, 0x1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_6
    if-eq v2, p1, :cond_b

    if-nez v5, :cond_a

    if-eqz v0, :cond_9

    neg-int v6, v6

    :cond_9
    return v6

    .line 762
    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 758
    :cond_b
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 706
    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getLong([B)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 770
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mysql/jdbc/StringUtils;->getLong([BII)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong([BII)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move/from16 v1, p2

    move/from16 v2, p1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 779
    aget-byte v3, p0, v2

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eq v2, v1, :cond_d

    .line 790
    aget-byte v3, p0, v2

    int-to-char v3, v3

    const/16 v4, 0x2d

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_1

    .line 793
    :cond_1
    aget-byte v3, p0, v2

    int-to-char v3, v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0xa

    int-to-long v7, v4

    const-wide v9, 0x7fffffffffffffffL

    .line 800
    div-long v11, v9, v7

    .line 801
    rem-long/2addr v9, v7

    long-to-int v9, v9

    int-to-long v9, v9

    if-eqz v3, :cond_3

    const-wide/16 v13, 0x1

    add-long/2addr v9, v13

    :cond_3
    const-wide/16 v13, 0x0

    move v5, v2

    move-wide v14, v13

    const/4 v13, 0x0

    :goto_2
    if-ge v5, v1, :cond_9

    .line 811
    aget-byte v6, p0, v5

    int-to-char v6, v6

    .line 813
    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v16

    if-eqz v16, :cond_4

    add-int/lit8 v6, v6, -0x30

    int-to-char v6, v6

    goto :goto_3

    .line 815
    :cond_4
    invoke-static {v6}, Ljava/lang/Character;->isLetter(C)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 816
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    add-int/lit8 v6, v6, -0x41

    add-int/2addr v6, v4

    int-to-char v6, v6

    :goto_3
    if-lt v6, v4, :cond_5

    goto :goto_6

    :cond_5
    cmp-long v16, v14, v11

    if-gtz v16, :cond_8

    if-nez v16, :cond_6

    move/from16 v17, v5

    int-to-long v4, v6

    cmp-long v4, v4, v9

    if-lez v4, :cond_7

    goto :goto_4

    :cond_6
    move/from16 v17, v5

    :cond_7
    mul-long v14, v14, v7

    int-to-long v4, v6

    add-long/2addr v14, v4

    goto :goto_5

    :cond_8
    move/from16 v17, v5

    :goto_4
    const/4 v13, 0x1

    :goto_5
    add-int/lit8 v5, v17, 0x1

    const/16 v4, 0xa

    goto :goto_2

    :cond_9
    :goto_6
    if-eq v5, v2, :cond_c

    if-nez v13, :cond_b

    if-eqz v3, :cond_a

    neg-long v14, v14

    :cond_a
    return-wide v14

    .line 839
    :cond_b
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 835
    :cond_c
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 784
    :cond_d
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static/range {p0 .. p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getShort([B)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 847
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mysql/jdbc/StringUtils;->getShort([BII)S

    move-result p0

    return p0
.end method

.method public static getShort([BII)S
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    :goto_0
    if-ge p1, p2, :cond_0

    .line 856
    aget-byte v0, p0, p1

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_c

    .line 867
    aget-byte v0, p0, p1

    int-to-char v0, v0

    const/16 v1, 0x2d

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x1

    goto :goto_1

    .line 870
    :cond_1
    aget-byte v0, p0, p1

    int-to-char v0, v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_2

    add-int/lit8 p1, p1, 0x1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xccc

    int-to-short v1, v1

    const/4 v4, 0x7

    int-to-short v4, v4

    if-eqz v0, :cond_3

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    :cond_3
    move v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v2, p2, :cond_8

    .line 888
    aget-byte v7, p0, v2

    int-to-char v7, v7

    .line 890
    invoke-static {v7}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    const/16 v9, 0xa

    if-eqz v8, :cond_4

    add-int/lit8 v7, v7, -0x30

    int-to-char v7, v7

    goto :goto_3

    .line 892
    :cond_4
    invoke-static {v7}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 893
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    add-int/lit8 v7, v7, -0x41

    add-int/2addr v7, v9

    int-to-char v7, v7

    :goto_3
    if-lt v7, v9, :cond_5

    goto :goto_6

    :cond_5
    if-gt v6, v1, :cond_7

    if-ne v6, v1, :cond_6

    if-le v7, v4, :cond_6

    goto :goto_4

    :cond_6
    mul-int/lit8 v6, v6, 0xa

    int-to-short v6, v6

    add-int/2addr v6, v7

    int-to-short v6, v6

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v5, 0x1

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_8
    :goto_6
    if-eq v2, p1, :cond_b

    if-nez v5, :cond_a

    if-eqz v0, :cond_9

    neg-int p0, v6

    int-to-short v6, p0

    :cond_9
    return v6

    .line 916
    :cond_a
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 912
    :cond_b
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 861
    :cond_c
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-static {p0}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static indexOf([BC)I
    .locals 4

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1834
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1837
    aget-byte v3, p0, v2

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_3

    .line 952
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 953
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-gt p0, v1, :cond_5

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    .line 961
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 962
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    :goto_0
    if-gt p0, v1, :cond_4

    .line 965
    invoke-static {p1, p0, v3, v2}, Lcom/mysql/jdbc/StringUtils;->isCharAtPosNotEqualIgnoreCase(Ljava/lang/String;ICC)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    add-int/lit8 p0, p0, 0x1

    if-gt p0, v1, :cond_2

    .line 967
    invoke-static {p1, p0, v3, v2}, Lcom/mysql/jdbc/StringUtils;->isCharAtPosNotEqualIgnoreCase(Ljava/lang/String;ICC)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    if-gt p0, v1, :cond_3

    .line 971
    invoke-static {p1, p0, p2}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return p0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v0

    :cond_6
    :goto_3
    return v0
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v0, p6

    const/4 v10, -0x1

    if-eqz v7, :cond_b

    if-nez v8, :cond_0

    goto/16 :goto_3

    .line 1122
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1123
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v11, v1, v2

    move v1, p0

    if-gt v1, v11, :cond_a

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 1130
    :cond_1
    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eqz v9, :cond_4

    if-eqz p4, :cond_4

    .line 1131
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_4

    if-eqz p5, :cond_3

    .line 1137
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v6, :cond_5

    aget-char v13, v5, v12

    .line 1138
    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v10, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1139
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/String;

    aput-object p5, v1, v3

    aput-object v9, v1, v4

    const-string v2, "StringUtils.16"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/String;

    aput-object p5, v1, v3

    aput-object v9, v1, v4

    const-string v2, "StringUtils.16"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v9, v1, v3

    aput-object p4, v1, v4

    const-string v2, "StringUtils.15"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1145
    :cond_5
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    .line 1146
    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    .line 1148
    invoke-static {v13}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1150
    invoke-static/range {p6 .. p6}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1151
    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_6
    move-object v14, v0

    move v0, v1

    :goto_1
    if-gt v0, v11, :cond_9

    move v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object v6, v14

    .line 1155
    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfNextChar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    if-ne v0, v10, :cond_7

    return v10

    .line 1161
    :cond_7
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1163
    invoke-static {v1, v12, v13}, Lcom/mysql/jdbc/StringUtils;->isCharEqualIgnoreCase(CCC)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v7, v0, v8}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    return v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    return v10

    :cond_a
    :goto_2
    return v10

    :cond_b
    :goto_3
    return v10
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    const-string v5, ""

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1091
    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public static indexOfIgnoreCase(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p5

    const/4 v9, -0x1

    if-eqz v7, :cond_f

    if-nez v8, :cond_0

    goto/16 :goto_8

    .line 1008
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    .line 1010
    array-length v1, v8

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v8, v2

    .line 1011
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    return v9

    .line 1018
    :cond_2
    array-length v12, v8

    if-lez v12, :cond_3

    add-int/lit8 v1, v12, -0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v3, v1

    sub-int v13, v10, v3

    move/from16 v1, p0

    if-le v1, v13, :cond_4

    return v9

    .line 1026
    :cond_4
    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v14, 0x1

    if-eqz v2, :cond_6

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_5

    goto :goto_2

    .line 1028
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v11

    aput-object p4, v1, v14

    const-string v2, "StringUtils.15"

    invoke-static {v2, v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1031
    :cond_6
    :goto_2
    aget-object v2, v8, v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1033
    invoke-static/range {p5 .. p5}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 1034
    sget-object v2, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_7
    move-object v6, v0

    .line 1039
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v5

    .line 1040
    invoke-interface {v5, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1041
    sget-object v0, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v5, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v0, v1

    :goto_3
    if-gt v0, v13, :cond_e

    .line 1044
    aget-object v2, v8, v11

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v15, v5

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v5

    if-eq v5, v9, :cond_d

    if-le v5, v13, :cond_8

    goto/16 :goto_7

    .line 1050
    :cond_8
    aget-object v0, v8, v11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v5

    move v4, v0

    const/4 v0, 0x0

    const/16 v16, 0x1

    :goto_4
    add-int/lit8 v3, v0, 0x1

    if-ge v3, v12, :cond_b

    if-eqz v16, :cond_b

    add-int/lit8 v1, v10, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v0, v4

    move-object/from16 v2, p1

    move/from16 v20, v3

    move-object/from16 v3, v17

    move v11, v4

    move-object/from16 v4, v18

    move/from16 v17, v5

    move-object/from16 v5, v19

    move-object/from16 v18, v6

    move-object v6, v15

    .line 1054
    invoke-static/range {v0 .. v6}, Lcom/mysql/jdbc/StringUtils;->indexOfNextChar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v0

    if-eq v11, v0, :cond_a

    .line 1055
    aget-object v1, v8, v20

    invoke-static {v7, v0, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_5

    .line 1059
    :cond_9
    aget-object v1, v8, v20

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v4, v0, v1

    goto :goto_6

    :cond_a
    :goto_5
    move v4, v11

    const/16 v16, 0x0

    :goto_6
    move/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v0, v20

    const/4 v11, 0x0

    goto :goto_4

    :cond_b
    move/from16 v17, v5

    move-object/from16 v18, v6

    if-eqz v16, :cond_c

    return v17

    :cond_c
    add-int/lit8 v0, v17, 0x1

    move-object v5, v15

    move-object/from16 v6, v18

    const/4 v11, 0x0

    goto :goto_3

    :cond_d
    :goto_7
    return v9

    :cond_e
    return v9

    :cond_f
    :goto_8
    return v9
.end method

.method public static indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 933
    invoke-static {v0, p0, p1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static indexOfNextChar(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/jdbc/StringUtils$SearchMode;",
            ">;)I"
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    const/4 v7, -0x1

    if-nez v2, :cond_0

    return v7

    .line 1195
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v0, v8, :cond_1

    return v7

    .line 1202
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v10, v0, 0x1

    if-ge v10, v8, :cond_2

    .line 1203
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    if-gt v0, v1, :cond_2d

    add-int/lit8 v12, v0, 0x2

    if-ge v12, v8, :cond_3

    .line 1208
    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 1213
    :goto_1
    sget-object v13, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    const/16 v14, 0x5c

    const/4 v15, 0x1

    if-eqz v13, :cond_5

    if-ne v9, v14, :cond_5

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v9, v0, 0x2

    if-ge v9, v8, :cond_4

    .line 1217
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    move v10, v9

    :goto_3
    move v9, v12

    :goto_4
    const/4 v7, 0x1

    goto/16 :goto_1a

    .line 1219
    :cond_5
    sget-object v13, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BETWEEN_MARKERS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-eq v13, v7, :cond_14

    .line 1223
    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1224
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-eq v12, v7, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    const/4 v13, 0x0

    :goto_6
    add-int/2addr v0, v15

    if-gt v0, v1, :cond_11

    .line 1225
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_7

    if-eqz v13, :cond_11

    :cond_7
    if-nez v12, :cond_c

    .line 1226
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-eq v14, v7, :cond_c

    .line 1228
    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 1231
    invoke-virtual {v4, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v16, 0x0

    :goto_7
    add-int/2addr v0, v15

    if-gt v0, v1, :cond_d

    .line 1232
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v14, :cond_8

    if-eqz v16, :cond_d

    :cond_8
    if-ne v7, v11, :cond_9

    add-int/lit8 v16, v16, 0x1

    :goto_8
    const/4 v7, -0x1

    goto :goto_7

    :cond_9
    if-ne v7, v14, :cond_a

    add-int/lit8 v16, v16, -0x1

    goto :goto_8

    .line 1238
    :cond_a
    sget-object v15, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/16 v15, 0x5c

    if-ne v7, v15, :cond_b

    add-int/lit8 v0, v0, 0x1

    :cond_b
    const/4 v7, -0x1

    const/4 v15, 0x1

    goto :goto_7

    :cond_c
    if-ne v11, v9, :cond_e

    add-int/lit8 v13, v13, 0x1

    :cond_d
    :goto_9
    const/4 v7, -0x1

    const/16 v14, 0x5c

    const/4 v15, 0x1

    goto :goto_6

    :cond_e
    if-ne v11, v10, :cond_f

    add-int/lit8 v13, v13, -0x1

    goto :goto_9

    .line 1246
    :cond_f
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->ALLOW_BACKSLASH_ESCAPE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    const/16 v7, 0x5c

    if-ne v11, v7, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_10
    const/16 v7, 0x5c

    goto :goto_9

    :cond_11
    add-int/lit8 v7, v0, 0x1

    if-ge v7, v8, :cond_12

    .line 1251
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_a

    :cond_12
    const/4 v11, 0x0

    :goto_a
    add-int/lit8 v7, v0, 0x2

    if-ge v7, v8, :cond_13

    .line 1252
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_b

    :cond_13
    const/4 v7, 0x0

    :goto_b
    move v10, v7

    move v9, v11

    goto/16 :goto_4

    .line 1254
    :cond_14
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/16 v11, 0x2a

    const/16 v13, 0x2f

    if-eqz v7, :cond_1d

    if-ne v9, v13, :cond_1d

    if-ne v10, v11, :cond_1d

    const/16 v7, 0x21

    if-eq v12, v7, :cond_18

    add-int/lit8 v0, v0, 0x1

    :cond_15
    :goto_c
    const/4 v7, 0x1

    add-int/2addr v0, v7

    if-gt v0, v1, :cond_17

    .line 1259
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v11, :cond_15

    add-int/lit8 v7, v0, 0x1

    if-ge v7, v8, :cond_16

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_d

    :cond_16
    const/4 v7, 0x0

    :goto_d
    if-eq v7, v13, :cond_17

    goto :goto_c

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_18
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x1

    add-int/2addr v0, v7

    const/4 v7, 0x1

    :goto_e
    const/4 v9, 0x5

    if-gt v7, v9, :cond_1a

    add-int v10, v0, v7

    if-ge v10, v8, :cond_1a

    .line 1271
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_19

    goto :goto_f

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1a
    :goto_f
    if-ne v7, v9, :cond_1b

    add-int/lit8 v0, v0, 0x5

    :cond_1b
    :goto_10
    add-int/lit8 v7, v0, 0x1

    if-ge v7, v8, :cond_1c

    .line 1280
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_11

    :cond_1c
    const/4 v11, 0x0

    :goto_11
    add-int/lit8 v7, v0, 0x2

    if-ge v7, v8, :cond_13

    .line 1281
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_b

    .line 1283
    :cond_1d
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_BLOCK_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    if-ne v9, v11, :cond_1f

    if-ne v10, v13, :cond_1f

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v7, v0, 0x2

    if-ge v7, v8, :cond_1e

    .line 1289
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_12

    :cond_1e
    const/4 v11, 0x0

    :goto_12
    move v10, v11

    goto/16 :goto_3

    .line 1291
    :cond_1f
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_LINE_COMMENTS:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const/16 v7, 0x2d

    if-ne v9, v7, :cond_22

    if-ne v10, v7, :cond_22

    invoke-static {v12}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_21

    const/16 v7, 0x3b

    if-ne v12, v7, :cond_20

    const/4 v11, 0x1

    goto :goto_13

    :cond_20
    const/4 v11, 0x0

    :goto_13
    if-nez v11, :cond_23

    if-eqz v12, :cond_23

    goto :goto_14

    :cond_21
    const/4 v11, 0x0

    goto :goto_15

    :cond_22
    const/4 v11, 0x0

    :goto_14
    const/16 v7, 0x23

    if-ne v9, v7, :cond_2a

    :cond_23
    :goto_15
    if-eqz v11, :cond_25

    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x1

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    if-ge v7, v8, :cond_24

    .line 1299
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_16

    :cond_24
    const/4 v11, 0x0

    :goto_16
    add-int/lit8 v7, v0, 0x2

    if-ge v7, v8, :cond_13

    .line 1300
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto/16 :goto_b

    :cond_25
    :goto_17
    const/4 v7, 0x1

    add-int/2addr v0, v7

    const/16 v7, 0xd

    const/16 v10, 0xa

    if-gt v0, v1, :cond_26

    .line 1303
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v10, :cond_26

    if-eq v9, v7, :cond_26

    goto :goto_17

    :cond_26
    add-int/lit8 v11, v0, 0x1

    if-ge v11, v8, :cond_27

    .line 1307
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    goto :goto_18

    :cond_27
    const/4 v12, 0x0

    :goto_18
    if-ne v9, v7, :cond_29

    if-ne v12, v10, :cond_29

    add-int/lit8 v0, v11, 0x1

    if-ge v0, v8, :cond_28

    .line 1311
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v12, v0

    goto :goto_19

    :cond_28
    const/4 v12, 0x0

    :goto_19
    move v0, v11

    :cond_29
    add-int/lit8 v7, v0, 0x2

    if-ge v7, v8, :cond_1e

    .line 1313
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_12

    .line 1316
    :cond_2a
    sget-object v7, Lcom/mysql/jdbc/StringUtils$SearchMode;->SKIP_WHITE_SPACE:Lcom/mysql/jdbc/StringUtils$SearchMode;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_2b

    goto :goto_1b

    :cond_2b
    move v9, v10

    move v10, v12

    goto/16 :goto_4

    :goto_1a
    add-int/2addr v0, v7

    const/4 v7, -0x1

    goto/16 :goto_0

    :cond_2c
    :goto_1b
    return v0

    :cond_2d
    const/4 v0, -0x1

    return v0
.end method

.method public static indexOfQuoteDoubleAware(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v0, -0x1

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 2220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_0

    goto :goto_2

    .line 2224
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, -0x1

    :goto_0
    if-eqz v2, :cond_3

    .line 2231
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v0, :cond_2

    if-eq v3, v1, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 2232
    invoke-virtual {p0, p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p2, v3, 0x2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_2
    return v0
.end method

.method private static isCharAtPosNotEqualIgnoreCase(Ljava/lang/String;ICC)Z
    .locals 1

    .line 1325
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq v0, p3, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    if-eq p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCharEqualIgnoreCase(CCC)Z
    .locals 1

    .line 1329
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    if-eq v0, p2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmptyOrWhitespaceOnly(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 2022
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2026
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 2029
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1846
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isStrictlyNumeric(Ljava/lang/CharSequence;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 2430
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 2433
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2434
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static final isValidIdChar(C)Z
    .locals 1

    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIGKLMNOPQRSTUVWXYZ0123456789$_#@"

    .line 2373
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static lastIndexOf([BC)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1820
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 1821
    aget-byte v2, p0, v1

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2104
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, " "

    .line 2107
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    .line 2112
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2114
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 2117
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_2

    add-int v2, v1, v0

    .line 2120
    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    add-int/2addr v3, v0

    .line 2123
    invoke-virtual {p2, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_2
    if-gez v1, :cond_3

    return-object p0

    .line 2135
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static quoteIdentifier(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "`"

    .line 2158
    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/StringUtils;->quoteIdentifier(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static s2b(Ljava/lang/String;Lcom/mysql/jdbc/MySQLConnection;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    .line 1792
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnicode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1794
    :try_start_0
    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1797
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    return-object p1

    .line 1800
    :cond_1
    invoke-interface {p1, v0}, Lcom/mysql/jdbc/MySQLConnection;->getCharsetConverter(Ljava/lang/String;)Lcom/mysql/jdbc/SingleByteCharsetConverter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1803
    invoke-virtual {p1, p0}, Lcom/mysql/jdbc/SingleByteCharsetConverter;->toBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 1806
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1808
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 1812
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeProcOrFuncName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "%"

    .line 1975
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1419
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    if-eqz p1, :cond_5

    const/4 v0, 0x0

    .line 1429
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1432
    :goto_0
    sget-object v8, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_COM_WS:Ljava/util/Set;

    move v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-static/range {v2 .. v8}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1433
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz p5, :cond_1

    .line 1436
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1439
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 1443
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_4

    .line 1444
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p5, :cond_3

    .line 1447
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1450
    :cond_3
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1

    .line 1423
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 1391
    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1348
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    .line 1355
    new-instance v0, Ljava/util/StringTokenizer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1357
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1359
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1360
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 1363
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1366
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object p0

    .line 1352
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static splitDBdotName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    const-string v0, "%"

    .line 1998
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    const-string v0, " "

    .line 2003
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p3, "."

    .line 2004
    invoke-virtual {p0, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    const-string v2, "."

    if-eqz p3, :cond_2

    .line 2006
    sget-object p3, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__MRK_WS:Ljava/util/Set;

    :goto_0
    move-object v5, p3

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/mysql/jdbc/StringUtils;->SEARCH_MODE__BSESC_MRK_WS:Ljava/util/Set;

    goto :goto_0

    :goto_1
    move-object v1, p0

    move-object v3, p2

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)I

    move-result p3

    :goto_2
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_3

    .line 2012
    invoke-virtual {p0, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    add-int/2addr p3, v1

    .line 2013
    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 2015
    :cond_3
    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_3
    const/4 p2, 0x2

    .line 2018
    new-array p2, p2, [Ljava/lang/String;

    aput-object p1, p2, v2

    aput-object p0, p2, v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1999
    :cond_4
    :goto_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static startsWith([BLjava/lang/String;)Z
    .locals 5

    .line 1457
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1459
    array-length v1, p0

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1463
    aget-byte v3, p0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6

    .line 1485
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1500
    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static startsWithIgnoreCaseAndNonAlphaNumeric(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1521
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 1524
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1525
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1530
    :cond_3
    :goto_1
    invoke-static {p0, v0, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static startsWithIgnoreCaseAndWs(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1590
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1591
    aget-object v2, p1, v1

    invoke-static {p0, v2, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1545
    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1567
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge p2, v0, :cond_3

    .line 1570
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1575
    :cond_3
    :goto_2
    invoke-static {p0, p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static stripComments(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .locals 14

    move-object v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1875
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1880
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 1891
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6

    if-eq v6, v3, :cond_11

    if-eq v4, v3, :cond_2

    move-object/from16 v7, p2

    .line 1893
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v6, v8, :cond_3

    move-object v8, p1

    const/4 v4, -0x1

    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v7, p2

    :cond_3
    move-object v8, p1

    .line 1896
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-eq v9, v3, :cond_4

    if-nez v5, :cond_4

    move v5, v6

    move v4, v9

    :cond_4
    :goto_1
    const/16 v9, 0xd

    const/16 v10, 0xa

    if-nez v5, :cond_c

    const/16 v11, 0x2f

    if-ne v6, v11, :cond_c

    if-nez p4, :cond_5

    if-eqz p3, :cond_c

    .line 1902
    :cond_5
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6

    const/16 v12, 0x2a

    if-ne v6, v12, :cond_b

    if-eqz p3, :cond_b

    const/4 v6, 0x0

    .line 1905
    :cond_6
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v13

    if-ne v13, v11, :cond_7

    if-eq v6, v12, :cond_1

    :cond_7
    if-ne v13, v9, :cond_8

    .line 1908
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6

    if-ne v6, v10, :cond_a

    .line 1910
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6

    goto :goto_2

    :cond_8
    if-ne v13, v10, :cond_9

    .line 1915
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6

    goto :goto_2

    :cond_9
    move v6, v13

    :cond_a
    :goto_2
    if-gez v6, :cond_6

    goto :goto_0

    :cond_b
    if-ne v6, v11, :cond_10

    if-eqz p4, :cond_10

    .line 1925
    :goto_3
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6

    if-eq v6, v10, :cond_10

    if-eq v6, v9, :cond_10

    if-ltz v6, :cond_10

    goto :goto_3

    :cond_c
    if-nez v5, :cond_d

    const/16 v11, 0x23

    if-ne v6, v11, :cond_d

    if-eqz p5, :cond_d

    .line 1930
    :goto_4
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6

    if-eq v6, v10, :cond_10

    if-eq v6, v9, :cond_10

    if-ltz v6, :cond_10

    goto :goto_4

    :cond_d
    if-nez v5, :cond_10

    const/16 v12, 0x2d

    if-ne v6, v12, :cond_10

    if-eqz p6, :cond_10

    .line 1933
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6

    if-eq v6, v3, :cond_f

    if-eq v6, v12, :cond_e

    goto :goto_6

    .line 1947
    :cond_e
    :goto_5
    invoke-virtual {v2}, Ljava/io/StringReader;->read()I

    move-result v6

    if-eq v6, v10, :cond_10

    if-eq v6, v9, :cond_10

    if-ltz v6, :cond_10

    goto :goto_5

    .line 1936
    :cond_f
    :goto_6
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eq v6, v3, :cond_1

    int-to-char v6, v6

    .line 1939
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_10
    if-eq v6, v3, :cond_1

    int-to-char v6, v6

    .line 1952
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1959
    :catch_0
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stripEnclosure([BLjava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .line 1604
    array-length v0, p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/mysql/jdbc/StringUtils;->startsWith([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lcom/mysql/jdbc/StringUtils;->endsWith([BLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1606
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    .line 1607
    array-length p2, p0

    sub-int/2addr p2, v0

    .line 1608
    new-array p2, p2, [B

    .line 1610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 1611
    array-length v0, p2

    const/4 v1, 0x0

    .line 1612
    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public static toAsciiString([B)Ljava/lang/String;
    .locals 2

    .line 1628
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toAsciiString([BII)Ljava/lang/String;
    .locals 3

    .line 1644
    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 1648
    aget-byte v2, p0, p1

    int-to-char v2, v2

    aput-char v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1652
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1

    .line 2276
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2278
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 1

    .line 2264
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/StringUtils;->platformEncoding:Ljava/lang/String;

    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 2266
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toString([BIILjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2251
    invoke-static {p3}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p3

    .line 2253
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 2257
    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->findCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 2259
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unQuoteIdentifier(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 2189
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    const-string v1, " "

    .line 2190
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 2195
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2200
    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-ltz v2, :cond_3

    add-int/2addr v2, v0

    .line 2203
    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    add-int/2addr v3, v0

    .line 2206
    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_2
    return-object p0

    .line 2213
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object p0

    :cond_5
    :goto_1
    return-object p0
.end method

.method public static wildCompareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1664
    invoke-static {p0, p1}, Lcom/mysql/jdbc/StringUtils;->wildCompareInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static wildCompareInternal(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    const/4 v0, -0x1

    if-eqz p0, :cond_19

    if-nez p1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v1, "%"

    .line 1686
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    .line 1691
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1694
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    :cond_2
    const/4 v7, 0x1

    if-eq v4, v1, :cond_17

    .line 1699
    :goto_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    const/16 v10, 0x25

    const/16 v11, 0x5f

    if-eq v8, v10, :cond_8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_8

    .line 1700
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_3

    add-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_3

    move v4, v6

    :cond_3
    if-eq v5, v3, :cond_7

    add-int/lit8 v6, v4, 0x1

    .line 1704
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_4

    goto :goto_1

    :cond_4
    if-ne v6, v1, :cond_6

    if-eq v8, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2

    :cond_6
    move v4, v6

    move v5, v8

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    return v7

    .line 1716
    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v11, :cond_c

    :cond_9
    if-ne v5, v3, :cond_a

    return v6

    :cond_a
    add-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v7

    if-ge v4, v1, :cond_b

    .line 1722
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v11, :cond_9

    :cond_b
    if-ne v4, v1, :cond_c

    goto/16 :goto_6

    .line 1729
    :cond_c
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    add-int/2addr v4, v7

    :goto_2
    if-eq v4, v1, :cond_f

    .line 1734
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_d

    goto :goto_3

    .line 1738
    :cond_d
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v11, :cond_f

    if-ne v5, v3, :cond_e

    return v0

    :cond_e
    add-int/lit8 v5, v5, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_f
    if-ne v4, v1, :cond_10

    return v2

    :cond_10
    if-ne v5, v3, :cond_11

    return v0

    .line 1758
    :cond_11
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_12

    add-int/lit8 v6, v4, 0x1

    if-eq v6, v1, :cond_12

    .line 1759
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v8, v2

    move v4, v6

    goto :goto_4

    :cond_12
    move v8, v2

    :goto_4
    add-int/2addr v7, v4

    :goto_5
    if-eq v5, v3, :cond_13

    .line 1765
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v2, :cond_13

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_13
    add-int/lit8 v1, v5, 0x1

    if-ne v5, v3, :cond_14

    return v0

    .line 1773
    :cond_14
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mysql/jdbc/StringUtils;->wildCompareInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_15

    return v2

    :cond_15
    if-ne v1, v3, :cond_16

    return v0

    :cond_16
    move v5, v1

    goto :goto_5

    :cond_17
    :goto_6
    if-eq v5, v3, :cond_18

    const/4 v2, 0x1

    :cond_18
    return v2

    :cond_19
    :goto_7
    return v0
.end method
