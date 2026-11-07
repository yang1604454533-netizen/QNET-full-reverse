.class public Lcom/tencent/qnet/core/ProxyConfig;
.super Ljava/lang/Object;
.source "ProxyConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/core/ProxyConfig$IPAddress;
    }
.end annotation


# static fields
.field public static AppInstallID:Ljava/lang/String;

.field public static AppVersion:Ljava/lang/String;

.field public static final FAKE_NETWORK_IP:I

.field public static final FAKE_NETWORK_MASK:I

.field public static final IS_DEBUG:Z

.field public static final IS_LOG_TCP:Z

.field public static final IS_LOG_UDP:Z

.field public static final Instance:Lcom/tencent/qnet/core/ProxyConfig;


# instance fields
.field public globalMode:Z

.field m_DnsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/qnet/core/ProxyConfig$IPAddress;",
            ">;"
        }
    .end annotation
.end field

.field m_DomainMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field m_IpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/qnet/core/ProxyConfig$IPAddress;",
            ">;"
        }
    .end annotation
.end field

.field public m_ProxyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/qnet/tunnel/Config;",
            ">;"
        }
    .end annotation
.end field

.field m_RouteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/qnet/core/ProxyConfig$IPAddress;",
            ">;"
        }
    .end annotation
.end field

.field m_Task:Ljava/util/TimerTask;

.field m_Timer:Ljava/util/Timer;

.field m_dns_ttl:I

.field m_isolate_http_host_header:Z

.field m_mtu:I

.field m_outside_china_use_proxy:Z

.field m_session_name:Ljava/lang/String;

.field m_user_agent:Ljava/lang/String;

.field m_welcome_info:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/tencent/qnet/core/ProxyConfig;

    invoke-direct {v0}, Lcom/tencent/qnet/core/ProxyConfig;-><init>()V

    sput-object v0, Lcom/tencent/qnet/core/ProxyConfig;->Instance:Lcom/tencent/qnet/core/ProxyConfig;

    const-string v0, "255.255.0.0"

    .line 35
    invoke-static {v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/qnet/core/ProxyConfig;->FAKE_NETWORK_MASK:I

    const-string v0, "172.25.0.0"

    .line 36
    invoke-static {v0}, Lcom/tencent/qnet/tcpip/CommonMethods;->ipStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/tencent/qnet/core/ProxyConfig;->FAKE_NETWORK_IP:I

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->globalMode:Z

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_outside_china_use_proxy:Z

    .line 51
    iput-boolean v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_isolate_http_host_header:Z

    .line 103
    new-instance v0, Lcom/tencent/qnet/core/ProxyConfig$1;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/core/ProxyConfig$1;-><init>(Lcom/tencent/qnet/core/ProxyConfig;)V

    iput-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_Task:Ljava/util/TimerTask;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_IpList:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_DnsList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_RouteList:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_ProxyList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_DomainMap:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_Timer:Ljava/util/Timer;

    .line 100
    iget-object v1, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_Timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_Task:Ljava/util/TimerTask;

    const-wide/32 v3, 0x1d4c0

    const-wide/32 v5, 0x1d4c0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private addDomainToHashMap([Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 3

    .line 370
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_1

    .line 371
    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_DomainMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addIPAddressToList([Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/qnet/core/ProxyConfig$IPAddress;",
            ">;)V"
        }
    .end annotation

    .line 392
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_2

    .line 393
    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 397
    :cond_0
    new-instance v1, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;

    invoke-direct {v1, p0, v0}, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;-><init>(Lcom/tencent/qnet/core/ProxyConfig;Ljava/lang/String;)V

    .line 398
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private convertToBool(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 380
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 382
    :cond_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "on"

    .line 383
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "yes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method private downloadConfig(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 238
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 239
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v2, "X-Android-MODEL"

    .line 241
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-Android-SDK_INT"

    .line 242
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-Android-RELEASE"

    .line 243
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-App-Version"

    .line 244
    sget-object v3, Lcom/tencent/qnet/core/ProxyConfig;->AppVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "X-App-Install-ID"

    .line 245
    sget-object v3, Lcom/tencent/qnet/core/ProxyConfig;->AppInstallID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "User-Agent"

    const-string v3, "http.agent"

    .line 246
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 249
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 253
    :catch_0
    new-instance v0, Ljava/lang/Exception;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Download config file from %s failed."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDomainState(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 196
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_DomainMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x2e

    .line 201
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 203
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v1
.end method

.method public static isFakeIP(I)Z
    .locals 1

    .line 130
    sget v0, Lcom/tencent/qnet/core/ProxyConfig;->FAKE_NETWORK_MASK:I

    and-int/2addr p0, v0

    sget v0, Lcom/tencent/qnet/core/ProxyConfig;->FAKE_NETWORK_IP:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private readConfigFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2000

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 261
    :try_start_0
    new-array v1, v1, [B

    .line 263
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 264
    :goto_0
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    .line 265
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v2, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_2

    :catch_1
    move-object v3, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 269
    :catch_2
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Can\'t read config file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v3, :cond_1

    .line 273
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 277
    :catch_3
    :cond_1
    throw p1
.end method

.method private tryAddProxy([Ljava/lang/String;)V
    .locals 5

    .line 355
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "proxy\\s+([^:]+):(\\d+)"

    const/4 v4, 0x2

    .line 356
    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 357
    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 358
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultLocalIP()Lcom/tencent/qnet/core/ProxyConfig$IPAddress;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_IpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_IpList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;

    return-object v0

    .line 149
    :cond_0
    new-instance v0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;

    const-string v1, "10.8.0.2"

    const/16 v2, 0x20

    invoke-direct {v0, p0, v1, v2}, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;-><init>(Lcom/tencent/qnet/core/ProxyConfig;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getDefaultProxy()Lcom/tencent/qnet/tunnel/Config;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_ProxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_ProxyList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/tunnel/Config;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultTunnelConfig(Ljava/net/InetSocketAddress;)Lcom/tencent/qnet/tunnel/Config;
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/tencent/qnet/core/ProxyConfig;->getDefaultProxy()Lcom/tencent/qnet/tunnel/Config;

    move-result-object p1

    return-object p1
.end method

.method public getDnsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/qnet/core/ProxyConfig$IPAddress;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_DnsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDnsTTL()I
    .locals 2

    .line 162
    iget v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_dns_ttl:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 163
    iput v1, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_dns_ttl:I

    .line 165
    :cond_0
    iget v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_dns_ttl:I

    return v0
.end method

.method public getMTU()I
    .locals 3

    .line 187
    iget v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_mtu:I

    const/16 v1, 0x4e20

    const/16 v2, 0x578

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_mtu:I

    if-gt v0, v1, :cond_0

    .line 188
    iget v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_mtu:I

    return v0

    :cond_0
    return v1
.end method

.method public getRouteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/qnet/core/ProxyConfig$IPAddress;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_RouteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSessionName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_session_name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/tencent/qnet/core/ProxyConfig;->getDefaultProxy()Lcom/tencent/qnet/tunnel/Config;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/qnet/tunnel/Config;->ServerAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_session_name:Ljava/lang/String;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_session_name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_user_agent:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_user_agent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "http.agent"

    .line 181
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_user_agent:Ljava/lang/String;

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_user_agent:Ljava/lang/String;

    return-object v0
.end method

.method public getWelcomeInfo()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_welcome_info:Ljava/lang/String;

    return-object v0
.end method

.method public isIsolateHttpHostHeader()Z
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_isolate_http_host_header:Z

    return v0
.end method

.method public loadFromFile(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    .line 282
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    .line 283
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    const-string v0, "\\r?\\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/ProxyConfig;->loadFromLines([Ljava/lang/String;)V

    return-void
.end method

.method protected loadFromLines([Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 298
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_IpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_DnsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_RouteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 301
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_ProxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 302
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_DomainMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 305
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_d

    aget-object v4, p1, v2

    const/4 v5, 0x1

    add-int/2addr v3, v5

    const-string v6, "\\s+"

    .line 307
    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 308
    array-length v7, v6

    const/4 v8, 0x2

    if-ge v7, v8, :cond_0

    goto/16 :goto_1

    .line 312
    :cond_0
    aget-object v7, v6, v1

    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    const-string v9, "#"

    .line 314
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "ip"

    .line 316
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 317
    iget-object v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_IpList:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v5, v4}, Lcom/tencent/qnet/core/ProxyConfig;->addIPAddressToList([Ljava/lang/String;ILjava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_1
    const-string v9, "dns"

    .line 318
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 319
    iget-object v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_DnsList:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v5, v4}, Lcom/tencent/qnet/core/ProxyConfig;->addIPAddressToList([Ljava/lang/String;ILjava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_2
    const-string v9, "route"

    .line 320
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 321
    iget-object v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_RouteList:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v5, v4}, Lcom/tencent/qnet/core/ProxyConfig;->addIPAddressToList([Ljava/lang/String;ILjava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_3
    const-string v9, "direct_domain"

    .line 322
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 323
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v6, v5, v4}, Lcom/tencent/qnet/core/ProxyConfig;->addDomainToHashMap([Ljava/lang/String;ILjava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_4
    const-string v9, "proxy_domain"

    .line 324
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 325
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v6, v5, v4}, Lcom/tencent/qnet/core/ProxyConfig;->addDomainToHashMap([Ljava/lang/String;ILjava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_5
    const-string v9, "dns_ttl"

    .line 326
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 327
    aget-object v4, v6, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_dns_ttl:I

    goto/16 :goto_1

    :cond_6
    const-string v9, "welcome_info"

    .line 328
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v6, " "

    .line 329
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_welcome_info:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v9, "session_name"

    .line 330
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 331
    aget-object v4, v6, v5

    iput-object v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_session_name:Ljava/lang/String;

    goto :goto_1

    :cond_8
    const-string v9, "user_agent"

    .line 332
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v6, " "

    .line 333
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_user_agent:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v4, "outside_china_use_proxy"

    .line 334
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 335
    aget-object v4, v6, v5

    invoke-direct {p0, v4}, Lcom/tencent/qnet/core/ProxyConfig;->convertToBool(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_outside_china_use_proxy:Z

    goto :goto_1

    :cond_a
    const-string v4, "isolate_http_host_header"

    .line 336
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 337
    aget-object v4, v6, v5

    invoke-direct {p0, v4}, Lcom/tencent/qnet/core/ProxyConfig;->convertToBool(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_isolate_http_host_header:Z

    goto :goto_1

    :cond_b
    const-string v4, "mtu"

    .line 338
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 339
    aget-object v4, v6, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_mtu:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 343
    new-instance v0, Ljava/lang/Exception;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    aput-object v7, v2, v5

    aput-object p1, v2, v8

    const-string p1, "config file parse error: line:%d, tag:%s, error:%s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_d
    iget-object v0, p0, Lcom/tencent/qnet/core/ProxyConfig;->m_ProxyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 350
    invoke-direct {p0, p1}, Lcom/tencent/qnet/core/ProxyConfig;->tryAddProxy([Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public loadFromUrl(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 289
    invoke-direct {p0, p1}, Lcom/tencent/qnet/core/ProxyConfig;->readConfigFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 291
    :cond_0
    invoke-direct {p0, p1}, Lcom/tencent/qnet/core/ProxyConfig;->downloadConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 293
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/core/ProxyConfig;->loadFromLines([Ljava/lang/String;)V

    return-void
.end method

.method public needProxy(Ljava/lang/String;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
