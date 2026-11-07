.class Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;
.super Ljava/lang/Object;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TypeDescriptor"
.end annotation


# instance fields
.field bufferLength:I

.field charOctetLength:I

.field columnSize:Ljava/lang/Integer;

.field dataType:S

.field decimalDigits:Ljava/lang/Integer;

.field isNullable:Ljava/lang/String;

.field nullability:I

.field numPrecRadix:I

.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 166
    iput v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    if-eqz p2, :cond_32

    const-string v1, "("

    .line 178
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const-string v1, "("

    .line 179
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    const-string v4, "unsigned"

    .line 184
    invoke-static {v1, v4}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v2, :cond_1

    sub-int/2addr v4, v5

    .line 187
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v4, "unsigned"

    .line 194
    invoke-static {p2, v4}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eq v4, v2, :cond_2

    const-string v4, "set"

    invoke-static {p2, v4}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "enum"

    invoke-static {p2, v4}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " unsigned"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v1

    const/4 v6, 0x0

    .line 202
    :goto_1
    iget-object v7, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v7}, Lcom/mysql/jdbc/MySQLConnection;->getCapitalizeTypeNames()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 203
    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 206
    :cond_3
    invoke-static {v1}, Lcom/mysql/jdbc/MysqlDefs;->mysqlToJavaType(Ljava/lang/String;)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    .line 208
    iput-object v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    const-string v1, "enum"

    .line 212
    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_5

    const-string p1, "("

    .line 213
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 214
    new-instance p2, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {p2, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 217
    :goto_2
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_2

    .line 221
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 222
    iput-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_5
    const-string v1, "set"

    .line 223
    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "("

    .line 224
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v5

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 225
    new-instance p2, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {p2, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p1

    if-lez p1, :cond_6

    sub-int/2addr p1, v5

    add-int/2addr p1, v3

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 234
    :goto_3
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 235
    invoke-virtual {p2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    .line 237
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    add-int/2addr p1, v1

    goto :goto_3

    .line 240
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_3

    .line 244
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 245
    iput-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_9
    const-string v1, ","

    .line 246
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_a

    const-string p1, "("

    .line 248
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v5

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    const-string p1, ","

    .line 249
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v5

    const-string v1, ")"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    .line 251
    :cond_a
    iput-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 252
    iput-object v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    const-string v1, "char"

    .line 255
    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v7, -0x7

    const/16 v8, 0x10

    if-ne v1, v2, :cond_b

    const-string v1, "text"

    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_b

    const-string v1, "blob"

    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_b

    const-string v1, "binary"

    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_b

    const-string v1, "bit"

    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_e

    :cond_b
    const-string v1, "("

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_e

    const-string v1, ")"

    .line 258
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_c

    .line 261
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    :cond_c
    const-string v2, "("

    .line 264
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 267
    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_2e

    const-string v1, "tinyint"

    invoke-static {p2, v3, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCase(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 269
    iget-object p1, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getTransformedBitIsBoolean()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 270
    iput-short v8, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    const-string p1, "BOOLEAN"

    .line 271
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    goto/16 :goto_5

    .line 273
    :cond_d
    iput-short v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    const-string p1, "BIT"

    .line 274
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    goto/16 :goto_5

    :cond_e
    const-string v1, "tinyint"

    .line 277
    invoke-static {p2, v1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 278
    iget-object v1, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getTinyInt1isBit()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "(1)"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v2, :cond_10

    .line 279
    iget-object p1, p1, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getTransformedBitIsBoolean()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 280
    iput-short v8, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    const-string p1, "BOOLEAN"

    .line 281
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    goto/16 :goto_5

    .line 283
    :cond_f
    iput-short v7, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->dataType:S

    const-string p1, "BIT"

    .line 284
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->typeName:Ljava/lang/String;

    goto/16 :goto_5

    :cond_10
    const/4 p1, 0x3

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 288
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_11
    const-string p1, "smallint"

    .line 290
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x5

    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 292
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_12
    const-string p1, "mediumint"

    .line 293
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/16 v1, 0x8

    if-eqz p1, :cond_14

    if-eqz v6, :cond_13

    goto :goto_4

    :cond_13
    const/4 v1, 0x7

    .line 294
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 295
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_14
    const-string p1, "int"

    .line 296
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 297
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 298
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_15
    const-string p1, "integer"

    .line 299
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 301
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_16
    const-string p1, "bigint"

    .line 302
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/16 v2, 0x13

    if-eqz p1, :cond_18

    if-eqz v6, :cond_17

    const/16 v2, 0x14

    .line 303
    :cond_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 304
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_18
    const-string p1, "int24"

    .line 305
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 306
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 307
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->decimalDigits:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_19
    const-string p1, "real"

    .line 308
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/16 v6, 0xc

    if-eqz p1, :cond_1a

    .line 309
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_1a
    const-string p1, "float"

    .line 310
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 311
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_1b
    const-string p1, "decimal"

    .line 312
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 313
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_1c
    const-string p1, "numeric"

    .line 314
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 315
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_1d
    const-string p1, "double"

    .line 316
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/16 p1, 0x16

    .line 317
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_1e
    const-string p1, "char"

    .line 318
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_1f
    const-string p1, "varchar"

    .line 320
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/16 v6, 0xff

    if-eqz p1, :cond_20

    .line 321
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_20
    const-string p1, "timestamp"

    .line 322
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 323
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_21
    const-string p1, "datetime"

    .line 324
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 325
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_22
    const-string p1, "date"

    .line 326
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 327
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_23
    const-string p1, "time"

    .line 328
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_24
    const-string p1, "tinyblob"

    .line 331
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 332
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_25
    const-string p1, "blob"

    .line 333
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const v1, 0xffff

    if-eqz p1, :cond_26

    .line 334
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_26
    const-string p1, "mediumblob"

    .line 335
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const v2, 0xffffff

    if-eqz p1, :cond_27

    .line 336
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto/16 :goto_5

    :cond_27
    const-string p1, "longblob"

    .line 337
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const v7, 0x7fffffff

    if-eqz p1, :cond_28

    .line 338
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto :goto_5

    :cond_28
    const-string p1, "tinytext"

    .line 339
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 340
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto :goto_5

    :cond_29
    const-string p1, "text"

    .line 341
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 342
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto :goto_5

    :cond_2a
    const-string p1, "mediumtext"

    .line 343
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 344
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto :goto_5

    :cond_2b
    const-string p1, "longtext"

    .line 345
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 346
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto :goto_5

    :cond_2c
    const-string p1, "enum"

    .line 347
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 348
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    goto :goto_5

    :cond_2d
    const-string p1, "set"

    .line 349
    invoke-static {p2, p1}, Lcom/mysql/jdbc/StringUtils;->startsWithIgnoreCaseAndWs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 350
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->columnSize:Ljava/lang/Integer;

    .line 356
    :cond_2e
    :goto_5
    invoke-static {}, Lcom/mysql/jdbc/MysqlIO;->getMaxBuf()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->bufferLength:I

    .line 359
    iput v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->numPrecRadix:I

    if-eqz p3, :cond_31

    const-string p1, "YES"

    .line 363
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 364
    iput v5, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    const-string p1, "YES"

    .line 365
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    goto :goto_6

    :cond_2f
    const-string p1, "UNKNOWN"

    .line 367
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 368
    iput v4, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    const-string p1, ""

    .line 369
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    goto :goto_6

    .line 373
    :cond_30
    iput v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    const-string p1, "NO"

    .line 374
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    goto :goto_6

    .line 377
    :cond_31
    iput v3, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->nullability:I

    const-string p1, "NO"

    .line 378
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TypeDescriptor;->isNullable:Ljava/lang/String;

    :goto_6
    return-void

    .line 172
    :cond_32
    invoke-virtual {p1}, Lcom/mysql/jdbc/DatabaseMetaData;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p2, "NULL typeinfo not supported."

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method
