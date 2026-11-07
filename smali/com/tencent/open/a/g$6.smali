.class Lcom/tencent/open/a/g$6;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/a/g;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Z

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/tencent/open/a/g;


# direct methods
.method constructor <init>(Lcom/tencent/open/a/g;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lcom/tencent/open/a/g$6;->e:Lcom/tencent/open/a/g;

    iput-object p2, p0, Lcom/tencent/open/a/g$6;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/tencent/open/a/g$6;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/tencent/open/a/g$6;->c:Z

    iput-object p5, p0, Lcom/tencent/open/a/g$6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/a/g$6;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->httpRequest, params is null!"

    .line 743
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 748
    :cond_0
    invoke-static {}, Lcom/tencent/open/a/e;->a()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    :cond_1
    const-string v1, "openSDK_LOG.ReportManager"

    .line 751
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->httpRequest, retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    invoke-static {}, Lcom/tencent/open/utils/e;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/a/g$6;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/tencent/open/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 756
    iget-object v2, p0, Lcom/tencent/open/a/g$6;->a:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 757
    iget-boolean v4, p0, Lcom/tencent/open/a/g$6;->c:Z

    if-eqz v4, :cond_2

    .line 758
    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 761
    :cond_2
    iget-object v4, p0, Lcom/tencent/open/a/g$6;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 762
    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lcom/tencent/open/a/g$6;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 763
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 764
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_3
    iget-object v4, p0, Lcom/tencent/open/a/g$6;->d:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "POST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 766
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    iget-object v5, p0, Lcom/tencent/open/a/g$6;->b:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 767
    invoke-static {v2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v2

    .line 768
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 769
    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v2, v4

    :goto_0
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip"

    .line 776
    invoke-interface {v2, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/x-www-form-urlencoded"

    .line 777
    invoke-interface {v2, v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_e

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_4
    const/4 v6, 0x1

    add-int/2addr v4, v6

    .line 783
    :try_start_1
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 784
    :try_start_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    .line 785
    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const-string v9, "openSDK_LOG.ReportManager"

    .line 787
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-->httpRequest, statusCode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_5

    const-string v8, "openSDK_LOG.ReportManager"

    const-string v9, "-->ReportCenter httpRequest : HttpStatuscode != 200"

    .line 789
    invoke-static {v8, v9}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_3
    const-string v5, "openSDK_LOG.ReportManager"

    const-string v8, "-->ReportCenter httpRequest Thread success"

    .line 792
    invoke-static {v5, v8}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x1

    :goto_1
    if-eqz v7, :cond_7

    .line 808
    :try_start_4
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 810
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    :try_start_5
    const-string v1, "openSDK_LOG.ReportManager"

    const-string v2, "-->ReportCenter httpRequest consumeContent Exception:"

    .line 813
    :goto_2
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object v3, v7

    const/4 v5, 0x1

    goto :goto_3

    :catch_2
    move-exception v8

    const/4 v5, 0x1

    goto :goto_4

    :catch_3
    move-exception v8

    const/4 v5, 0x1

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :catch_4
    move-exception v0

    move-object v3, v7

    goto :goto_3

    :catch_5
    move-exception v8

    goto :goto_4

    :catch_6
    move-exception v8

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v7, v3

    goto/16 :goto_9

    :catch_7
    move-exception v0

    :goto_3
    :try_start_6
    const-string v1, "openSDK_LOG.ReportManager"

    const-string v2, "-->ReportCenter httpRequest Exception:"

    .line 800
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_7

    .line 808
    :try_start_7
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 810
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    :try_start_8
    const-string v1, "openSDK_LOG.ReportManager"

    const-string v2, "-->ReportCenter httpRequest consumeContent Exception:"
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    goto :goto_2

    :catch_9
    move-exception v8

    move-object v7, v3

    :goto_4
    :try_start_9
    const-string v9, "openSDK_LOG.ReportManager"

    const-string v10, "-->ReportCenter httpRequest SocketTimeoutException:"

    .line 798
    invoke-static {v9, v10, v8}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v7, :cond_6

    .line 808
    :try_start_a
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 810
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_7

    :catch_a
    move-exception v7

    :try_start_b
    const-string v8, "openSDK_LOG.ReportManager"

    const-string v9, "-->ReportCenter httpRequest consumeContent Exception:"

    .line 813
    :goto_5
    invoke-static {v8, v9, v7}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_7

    :catch_b
    move-exception v8

    move-object v7, v3

    :goto_6
    :try_start_c
    const-string v9, "openSDK_LOG.ReportManager"

    const-string v10, "-->ReportCenter httpRequest ConnectTimeoutException:"

    .line 796
    invoke-static {v9, v10, v8}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v7, :cond_6

    .line 808
    :try_start_d
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 810
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_7

    :catch_c
    move-exception v7

    :try_start_e
    const-string v8, "openSDK_LOG.ReportManager"

    const-string v9, "-->ReportCenter httpRequest consumeContent Exception:"

    goto :goto_5

    :cond_6
    :goto_7
    if-lt v4, v0, :cond_4

    :cond_7
    :goto_8
    if-ne v5, v6, :cond_8

    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->ReportCenter httpRequest Thread request success"

    .line 820
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_8
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->ReportCenter httpRequest Thread request failed"

    .line 822
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_b

    :goto_9
    if-eqz v7, :cond_9

    .line 808
    :try_start_f
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 810
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_a

    :catch_d
    move-exception v1

    :try_start_10
    const-string v2, "openSDK_LOG.ReportManager"

    const-string v3, "-->ReportCenter httpRequest consumeContent Exception:"

    .line 813
    invoke-static {v2, v3, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 816
    :cond_9
    :goto_a
    throw v0

    :cond_a
    const-string v0, "openSDK_LOG.ReportManager"

    const-string v1, "-->httpRequest unkonw request method return."

    .line 772
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e

    return-void

    :catch_e
    move-exception v0

    const-string v1, "openSDK_LOG.ReportManager"

    const-string v2, "-->httpRequest, exception in serial executor:"

    .line 825
    invoke-static {v1, v2, v0}, Lcom/tencent/open/log/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    return-void
.end method
