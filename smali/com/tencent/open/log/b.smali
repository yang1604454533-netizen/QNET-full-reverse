.class public Lcom/tencent/open/log/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/io/File;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "yy.MM.dd.HH"

    .line 95
    invoke-static {v0}, Lcom/tencent/open/log/d$d;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/log/b;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
    .locals 2

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Tracer.File"

    .line 109
    iput-object v0, p0, Lcom/tencent/open/log/b;->b:Ljava/lang/String;

    const v0, 0x7fffffff

    .line 110
    iput v0, p0, Lcom/tencent/open/log/b;->c:I

    .line 111
    iput v0, p0, Lcom/tencent/open/log/b;->d:I

    const/16 v0, 0x1000

    .line 112
    iput v0, p0, Lcom/tencent/open/log/b;->e:I

    const-wide/16 v0, 0x2710

    .line 113
    iput-wide v0, p0, Lcom/tencent/open/log/b;->f:J

    const/16 v0, 0xa

    .line 115
    iput v0, p0, Lcom/tencent/open/log/b;->h:I

    const-string v0, ".log"

    .line 116
    iput-object v0, p0, Lcom/tencent/open/log/b;->i:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    .line 117
    iput-wide v0, p0, Lcom/tencent/open/log/b;->j:J

    .line 157
    invoke-virtual {p0, p1}, Lcom/tencent/open/log/b;->a(Ljava/io/File;)V

    .line 158
    invoke-virtual {p0, p2}, Lcom/tencent/open/log/b;->b(I)V

    .line 159
    invoke-virtual {p0, p3}, Lcom/tencent/open/log/b;->a(I)V

    .line 160
    invoke-virtual {p0, p4}, Lcom/tencent/open/log/b;->c(I)V

    .line 161
    invoke-virtual {p0, p5}, Lcom/tencent/open/log/b;->a(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0, p6, p7}, Lcom/tencent/open/log/b;->a(J)V

    .line 163
    invoke-virtual {p0, p8}, Lcom/tencent/open/log/b;->d(I)V

    .line 164
    invoke-virtual {p0, p9}, Lcom/tencent/open/log/b;->b(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, p10, p11}, Lcom/tencent/open/log/b;->b(J)V

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.tencent.mobileqq_connectSdk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".log"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(J)[Ljava/io/File;
    .locals 4

    .line 187
    invoke-virtual {p0}, Lcom/tencent/open/log/b;->b()Ljava/io/File;

    move-result-object v0

    .line 189
    invoke-direct {p0, p1, p2}, Lcom/tencent/open/log/b;->d(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/open/log/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 191
    :try_start_0
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v1, "openSDK_LOG"

    const-string v2, "getWorkFile,get old sdcard file exception:"

    .line 193
    invoke-static {v1, v2, p2}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v0

    .line 197
    :goto_0
    invoke-static {}, Lcom/tencent/open/utils/k;->c()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 199
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    .line 201
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/tencent/open/log/c;->o:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 206
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string v0, "openSDK_LOG"

    const-string v2, "getWorkFile,get app specific file exception:"

    .line 209
    invoke-static {v0, v2, p1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v0, v1

    :goto_1
    const/4 p1, 0x2

    .line 212
    new-array p1, p1, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    const/4 p2, 0x1

    aput-object v0, p1, p2

    return-object p1
.end method

.method private d(J)Ljava/lang/String;
    .locals 1

    .line 221
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 222
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 223
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string p2, "yy.MM.dd.HH"

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/tencent/open/log/b;->c:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 353
    iput-wide p1, p0, Lcom/tencent/open/log/b;->f:J

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/tencent/open/log/b;->g:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/tencent/open/log/b;->b:Ljava/lang/String;

    return-void
.end method

.method public a()[Ljava/io/File;
    .locals 2

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/log/b;->c(J)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/io/File;
    .locals 1

    .line 247
    invoke-virtual {p0}, Lcom/tencent/open/log/b;->e()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 316
    iput p1, p0, Lcom/tencent/open/log/b;->d:I

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 436
    iput-wide p1, p0, Lcom/tencent/open/log/b;->j:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 416
    iput-object p1, p0, Lcom/tencent/open/log/b;->i:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/tencent/open/log/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    .line 332
    iput p1, p0, Lcom/tencent/open/log/b;->e:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 321
    iget v0, p0, Lcom/tencent/open/log/b;->e:I

    return v0
.end method

.method public d(I)V
    .locals 0

    .line 395
    iput p1, p0, Lcom/tencent/open/log/b;->h:I

    return-void
.end method

.method public e()Ljava/io/File;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/tencent/open/log/b;->g:Ljava/io/File;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 384
    iget v0, p0, Lcom/tencent/open/log/b;->h:I

    return v0
.end method
