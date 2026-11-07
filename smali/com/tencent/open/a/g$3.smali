.class Lcom/tencent/open/a/g$3;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/a/g;->a(Ljava/lang/String;JJJILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:J

.field final synthetic g:Z

.field final synthetic h:Lcom/tencent/open/a/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/a/g;JLjava/lang/String;Ljava/lang/String;IJJZ)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/tencent/open/a/g$3;->h:Lcom/tencent/open/a/g;

    iput-wide p2, p0, Lcom/tencent/open/a/g$3;->a:J

    iput-object p4, p0, Lcom/tencent/open/a/g$3;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/open/a/g$3;->c:Ljava/lang/String;

    iput p6, p0, Lcom/tencent/open/a/g$3;->d:I

    iput-wide p7, p0, Lcom/tencent/open/a/g$3;->e:J

    iput-wide p9, p0, Lcom/tencent/open/a/g$3;->f:J

    iput-boolean p11, p0, Lcom/tencent/open/a/g$3;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 284
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/open/a/g$3;->a:J

    const/4 v4, 0x0

    sub-long/2addr v0, v2

    .line 286
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 288
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "apn"

    .line 289
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appid"

    const-string v5, "1000067"

    .line 290
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "commandid"

    .line 291
    iget-object v5, p0, Lcom/tencent/open/a/g$3;->b:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "detail"

    .line 292
    iget-object v5, p0, Lcom/tencent/open/a/g$3;->c:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network="

    .line 295
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "sdcard="

    .line 296
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "wifi="

    .line 297
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/open/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceInfo"

    .line 299
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v3, p0, Lcom/tencent/open/a/g$3;->h:Lcom/tencent/open/a/g;

    iget v4, p0, Lcom/tencent/open/a/g$3;->d:I

    invoke-virtual {v3, v4}, Lcom/tencent/open/a/g;->a(I)I

    move-result v3

    const/16 v4, 0x64

    .line 303
    div-int v3, v4, v3

    if-gtz v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    if-le v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const-string v3, "frequency"

    .line 310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "reqSize"

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/tencent/open/a/g$3;->e:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "resultCode"

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/tencent/open/a/g$3;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "rspSize"

    .line 313
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/tencent/open/a/g$3;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "timeCost"

    .line 314
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uin"

    const-string v1, "1000"

    .line 315
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v0, Lcom/tencent/open/a/b;

    invoke-direct {v0, v2}, Lcom/tencent/open/a/b;-><init>(Landroid/os/Bundle;)V

    .line 320
    iget-object v1, p0, Lcom/tencent/open/a/g$3;->h:Lcom/tencent/open/a/g;

    iget-object v1, v1, Lcom/tencent/open/a/g;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/tencent/open/a/g$3;->h:Lcom/tencent/open/a/g;

    iget-object v0, v0, Lcom/tencent/open/a/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 324
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v1

    const-string v2, "Agent_ReportTimeInterval"

    .line 325
    invoke-virtual {v1, v2}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2710

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/tencent/open/a/g$3;->h:Lcom/tencent/open/a/g;

    const-string v3, "report_cgi"

    invoke-virtual {v2, v3, v0}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;I)Z

    move-result v0

    const/16 v2, 0x3e8

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/tencent/open/a/g$3;->g:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/tencent/open/a/g$3;->h:Lcom/tencent/open/a/g;

    iget-object v0, v0, Lcom/tencent/open/a/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 335
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 336
    iput v2, v0, Landroid/os/Message;->what:I

    .line 337
    iget-object v2, p0, Lcom/tencent/open/a/g$3;->h:Lcom/tencent/open/a/g;

    iget-object v2, v2, Lcom/tencent/open/a/g;->f:Landroid/os/Handler;

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 331
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tencent/open/a/g$3;->h:Lcom/tencent/open/a/g;

    invoke-virtual {v0}, Lcom/tencent/open/a/g;->b()V

    .line 332
    iget-object v0, p0, Lcom/tencent/open/a/g$3;->h:Lcom/tencent/open/a/g;

    iget-object v0, v0, Lcom/tencent/open/a/g;->f:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "openSDK_LOG.ReportManager"

    const-string v2, "--> reportCGI, exception in sub thread."

    .line 341
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method
