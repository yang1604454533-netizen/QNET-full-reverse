.class public Lcom/tencent/qnet/pcap/PcapDump;
.super Ljava/lang/Object;
.source "PcapDump.java"


# static fields
.field public static DUMP:Z


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_log_file:Ljava/io/File;

.field private m_out:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_context:Landroid/content/Context;

    .line 28
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "%s_%s.pcap"

    const/4 v2, 0x2

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_log_file:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_out:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public open()Z
    .locals 4

    const/4 v0, 0x0

    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_log_file:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_log_file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_out:Ljava/io/DataOutputStream;

    .line 47
    invoke-static {}, Lcom/tencent/qnet/pcap/PcapHeader;->getDefault()Lcom/tencent/qnet/pcap/PcapHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/pcap/PcapHeader;->getBuff()[B

    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_out:Ljava/io/DataOutputStream;

    array-length v3, v1

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return v0
.end method

.method public write([B)V
    .locals 2

    .line 77
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/tencent/qnet/pcap/PcapDump;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_out:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tencent/qnet/pcap/PcapDump;->m_out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
