.class public Lcom/tencent/qnet/core/HttpHostHeaderParser;
.super Ljava/lang/Object;
.source "HttpHostHeaderParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getHttpHost([BII)Ljava/lang/String;
    .locals 4

    .line 32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    const-string p0, "\\r\\n"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 34
    aget-object p2, p0, p1

    const-string v0, "GET"

    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "POST"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HEAD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OPTIONS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_0
    const/4 p2, 0x1

    const/4 v0, 0x1

    .line 36
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 37
    aget-object v1, p0, v0

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 38
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 39
    aget-object v2, v1, p1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 40
    aget-object v1, v1, p2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "host"

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static getSNI([BII)Ljava/lang/String;
    .locals 5

    add-int v0, p1, p2

    const/16 v1, 0x2b

    const/4 v2, 0x0

    if-le p2, v1, :cond_9

    .line 52
    aget-byte p2, p0, p1

    const/16 v3, 0x16

    if-ne p2, v3, :cond_9

    add-int/2addr p1, v1

    add-int/lit8 p2, p1, 0x1

    if-le p2, v0, :cond_0

    return-object v2

    .line 57
    :cond_0
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    add-int/lit8 p1, p2, 0x2

    if-le p1, v0, :cond_1

    return-object v2

    .line 62
    :cond_1
    invoke-static {p0, p2}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result p2

    const v1, 0xffff

    and-int/2addr p2, v1

    add-int/2addr p1, p2

    add-int/lit8 p2, p1, 0x1

    if-le p2, v0, :cond_2

    return-object v2

    .line 68
    :cond_2
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p2, p1

    if-ne p2, v0, :cond_3

    .line 72
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "TLS Client Hello packet doesn\'t contains SNI info.(offset == limit)"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    :cond_3
    add-int/lit8 p1, p2, 0x2

    if-le p1, v0, :cond_4

    return-object v2

    .line 78
    :cond_4
    invoke-static {p0, p2}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result p2

    and-int/2addr p2, v1

    add-int/2addr p2, p1

    if-le p2, v0, :cond_5

    .line 82
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "TLS Client Hello packet is incomplete."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    :cond_5
    :goto_0
    add-int/lit8 p2, p1, 0x4

    if-gt p2, v0, :cond_8

    add-int/lit8 p2, p1, 0x1

    .line 87
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v3, p2, 0x1

    .line 88
    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    .line 89
    invoke-static {p0, v3}, Lcom/tencent/qnet/tcpip/CommonMethods;->readShort([BI)S

    move-result v4

    and-int/2addr v4, v1

    add-int/lit8 v3, v3, 0x2

    if-nez p1, :cond_7

    if-nez p2, :cond_7

    const/4 p1, 0x5

    if-le v4, p1, :cond_7

    add-int/2addr v3, p1

    add-int/lit8 v4, v4, -0x5

    add-int p1, v3, v4

    if-le p1, v0, :cond_6

    return-object v2

    .line 96
    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    return-object p1

    :cond_7
    add-int p1, v3, v4

    goto :goto_0

    .line 105
    :cond_8
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "TLS Client Hello packet doesn\'t contains Host field info."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    .line 108
    :cond_9
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string p1, "Bad TLS Client Hello packet."

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2
.end method

.method public static parseHost([BII)Ljava/lang/String;
    .locals 2

    .line 12
    :try_start_0
    aget-byte v0, p0, p1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 20
    :sswitch_0
    invoke-static {p0, p1, p2}, Lcom/tencent/qnet/core/HttpHostHeaderParser;->getHttpHost([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 22
    :sswitch_1
    invoke-static {p0, p1, p2}, Lcom/tencent/qnet/core/HttpHostHeaderParser;->getSNI([BII)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    sget-object p1, Lcom/tencent/qnet/core/LocalVpnService;->Instance:Lcom/tencent/qnet/core/LocalVpnService;

    const-string p2, "Error: parseHost:%s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, p2, v0}, Lcom/tencent/qnet/core/LocalVpnService;->writeLog(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_1
        0x43 -> :sswitch_0
        0x44 -> :sswitch_0
        0x47 -> :sswitch_0
        0x48 -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
