.class public Lcom/mysql/jdbc/EscapeTokenizer;
.super Ljava/lang/Object;
.source "EscapeTokenizer.java"


# static fields
.field private static final CHR_BEGIN_TOKEN:C = '{'

.field private static final CHR_COMMENT:C = '-'

.field private static final CHR_CR:C = '\r'

.field private static final CHR_DBL_QUOTE:C = '\"'

.field private static final CHR_END_TOKEN:C = '}'

.field private static final CHR_ESCAPE:C = '\\'

.field private static final CHR_LF:C = '\n'

.field private static final CHR_SGL_QUOTE:C = '\''

.field private static final CHR_VARIABLE:C = '@'


# instance fields
.field private bracesLevel:I

.field private emittingEscapeCode:Z

.field private inQuotes:Z

.field private pos:I

.field private quoteChar:C

.field private sawVariableUse:Z

.field private source:Ljava/lang/String;

.field private sourceLength:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    .line 42
    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 44
    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    .line 45
    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse:Z

    .line 46
    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    .line 47
    iput-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    .line 48
    iput-char v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    .line 57
    iput-object p1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    .line 59
    iput v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    return-void
.end method


# virtual methods
.method public declared-synchronized hasMoreTokens()Z
    .locals 2

    monitor-enter p0

    .line 68
    :try_start_0
    iget v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    iget v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized nextToken()Ljava/lang/String;
    .locals 10

    monitor-enter p0

    .line 77
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-boolean v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "{"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iput-boolean v2, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v3, v4, :cond_f

    .line 87
    iget-object v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_1
    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    if-ne v3, v4, :cond_5

    :cond_2
    if-nez v1, :cond_5

    .line 98
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    iget-boolean v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    if-eqz v4, :cond_4

    .line 100
    iget-char v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    if-ne v3, v4, :cond_e

    .line 102
    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v4, v5

    iget v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v4, v6, :cond_3

    iget-object v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    iget v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-char v6, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    if-ne v4, v6, :cond_3

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    goto/16 :goto_4

    .line 106
    :cond_3
    iput-boolean v2, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    goto/16 :goto_4

    .line 110
    :cond_4
    iput-boolean v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    .line 111
    iput-char v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->quoteChar:C

    goto/16 :goto_4

    :cond_5
    const/16 v4, 0xa

    if-eq v3, v4, :cond_d

    const/16 v6, 0xd

    if-ne v3, v6, :cond_6

    goto/16 :goto_2

    .line 123
    :cond_6
    iget-boolean v7, p0, Lcom/mysql/jdbc/EscapeTokenizer;->inQuotes:Z

    if-nez v7, :cond_c

    if-nez v1, :cond_c

    const/16 v7, 0x2d

    if-ne v3, v7, :cond_8

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    iget v8, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v8, v5

    iget v9, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v8, v9, :cond_e

    iget-object v8, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    iget v9, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_e

    .line 130
    :goto_1
    iget v7, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    iget v8, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sourceLength:I

    if-ge v7, v8, :cond_7

    if-eq v3, v4, :cond_7

    if-eq v3, v6, :cond_7

    .line 131
    iget-object v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->source:Ljava/lang/String;

    iget v7, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    :cond_7
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    goto :goto_4

    :cond_8
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_a

    .line 141
    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    .line 142
    iget v4, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    if-ne v4, v5, :cond_9

    .line 143
    iput-boolean v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->emittingEscapeCode:Z

    .line 144
    iget v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 147
    :cond_9
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    const/16 v4, 0x7d

    if-ne v3, v4, :cond_b

    .line 153
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    .line 155
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->bracesLevel:I

    if-nez v3, :cond_e

    .line 156
    iget v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    .line 157
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_b
    const/16 v1, 0x40

    if-ne v3, v1, :cond_c

    .line 164
    :try_start_2
    iput-boolean v5, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse:Z

    .line 168
    :cond_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 118
    :cond_d
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v1, 0x0

    .line 86
    :cond_e
    :goto_4
    iget v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/mysql/jdbc/EscapeTokenizer;->pos:I

    goto/16 :goto_0

    .line 172
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 76
    monitor-exit p0

    throw v0
.end method

.method sawVariableUse()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcom/mysql/jdbc/EscapeTokenizer;->sawVariableUse:Z

    return v0
.end method
