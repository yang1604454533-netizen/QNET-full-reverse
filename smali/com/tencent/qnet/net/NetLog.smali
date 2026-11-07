.class public Lcom/tencent/qnet/net/NetLog;
.super Ljava/lang/Object;
.source "NetLog.java"


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_log_file:Ljava/io/File;

.field private m_out:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/net/NetLog;->m_context:Landroid/content/Context;

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/net/NetLog;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/qnet/net/NetLog;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qnet/net/NetLog;->m_log_file:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/net/NetLog;->m_out:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/tencent/qnet/net/NetLog;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public open()Z
    .locals 2

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/net/NetLog;->m_log_file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 39
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/tencent/qnet/net/NetLog;->m_log_file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/qnet/net/NetLog;->m_out:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public write(Ljava/lang/String;)V
    .locals 1

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/net/NetLog;->m_out:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/tencent/qnet/net/NetLog;->m_out:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 70
    iget-object p1, p0, Lcom/tencent/qnet/net/NetLog;->m_out:Ljava/io/FileOutputStream;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
