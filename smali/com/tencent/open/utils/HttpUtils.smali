.class public Lcom/tencent/open/utils/HttpUtils;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/open/utils/HttpUtils$a;,
        Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
        Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 2

    .line 836
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 838
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result p0

    if-gez p0, :cond_3

    .line 840
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result p0

    goto :goto_0

    .line 843
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result p0

    goto :goto_0

    :cond_1
    const-string p0, "http.proxyPort"

    .line 846
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 847
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 849
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    const/4 p0, -0x1

    :cond_3
    :goto_0
    return p0
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 612
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 614
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 615
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "Content-Encoding"

    .line 617
    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p0

    const/4 v2, -0x1

    if-eqz p0, :cond_0

    .line 619
    invoke-interface {p0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v3, "gzip"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-le p0, v2, :cond_0

    .line 620
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const/16 v0, 0x200

    .line 624
    new-array v0, v0, [B

    .line 625
    :goto_1
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v4, 0x0

    .line 626
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 628
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 629
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V
    .locals 3

    const-string v0, "add_share"

    .line 386
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    const-string v0, "upload_pic"

    .line 387
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_topic"

    .line 388
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "set_user_face"

    .line 389
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_t"

    .line 390
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_pic_t"

    .line 391
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_pic_url"

    .line 392
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_0

    const-string v0, "add_video"

    .line 393
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_1

    :cond_0
    const-string v0, "requireApi"

    const/4 v1, 0x1

    .line 394
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, p1, v0, v1}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 859
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    if-eqz p0, :cond_0

    .line 861
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 862
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 866
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "http.proxyHost"

    .line 870
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 777
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    .line 779
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    .line 780
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    .line 782
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 783
    instance-of v6, v5, Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_0

    .line 787
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Content-Disposition: form-data; name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-ge v1, v4, :cond_1

    .line 790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\r\n--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 795
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 729
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 730
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_2

    instance-of v5, v4, [Ljava/lang/String;

    if-nez v5, :cond_2

    goto :goto_0

    .line 734
    :cond_2
    instance-of v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const-string v4, "&"

    .line 738
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_0

    .line 745
    :cond_4
    :goto_2
    array-length v4, v3

    if-ge v5, v4, :cond_1

    if-nez v5, :cond_5

    .line 747
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 749
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    const-string v4, "&"

    .line 756
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 758
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 762
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getErrorCodeFromException(Ljava/io/IOException;)I
    .locals 1

    .line 399
    instance-of v0, p0, Ljava/io/CharConversionException;

    if-eqz v0, :cond_0

    const/16 p0, -0x14

    return p0

    .line 401
    :cond_0
    instance-of v0, p0, Ljava/nio/charset/MalformedInputException;

    if-eqz v0, :cond_1

    const/16 p0, -0x15

    return p0

    .line 403
    :cond_1
    instance-of v0, p0, Ljava/nio/charset/UnmappableCharacterException;

    if-eqz v0, :cond_2

    const/16 p0, -0x16

    return p0

    .line 405
    :cond_2
    instance-of v0, p0, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_3

    const/16 p0, -0x17

    return p0

    .line 407
    :cond_3
    instance-of v0, p0, Ljava/nio/channels/ClosedChannelException;

    if-eqz v0, :cond_4

    const/16 p0, -0x18

    return p0

    .line 409
    :cond_4
    instance-of v0, p0, Lorg/apache/http/ConnectionClosedException;

    if-eqz v0, :cond_5

    const/16 p0, -0x19

    return p0

    .line 411
    :cond_5
    instance-of v0, p0, Ljava/io/EOFException;

    if-eqz v0, :cond_6

    const/16 p0, -0x1a

    return p0

    .line 413
    :cond_6
    instance-of v0, p0, Ljava/nio/channels/FileLockInterruptionException;

    if-eqz v0, :cond_7

    const/16 p0, -0x1b

    return p0

    .line 415
    :cond_7
    instance-of v0, p0, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_8

    const/16 p0, -0x1c

    return p0

    .line 417
    :cond_8
    instance-of v0, p0, Ljava/net/HttpRetryException;

    if-eqz v0, :cond_9

    const/16 p0, -0x1d

    return p0

    .line 419
    :cond_9
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v0, :cond_a

    const/4 p0, -0x7

    return p0

    .line 421
    :cond_a
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_b

    const/4 p0, -0x8

    return p0

    .line 423
    :cond_b
    instance-of v0, p0, Ljava/util/InvalidPropertiesFormatException;

    if-eqz v0, :cond_c

    const/16 p0, -0x1e

    return p0

    .line 425
    :cond_c
    instance-of v0, p0, Lorg/apache/http/MalformedChunkCodingException;

    if-eqz v0, :cond_d

    const/16 p0, -0x1f

    return p0

    .line 427
    :cond_d
    instance-of v0, p0, Ljava/net/MalformedURLException;

    if-eqz v0, :cond_e

    const/4 p0, -0x3

    return p0

    .line 429
    :cond_e
    instance-of v0, p0, Lorg/apache/http/NoHttpResponseException;

    if-eqz v0, :cond_f

    const/16 p0, -0x20

    return p0

    .line 431
    :cond_f
    instance-of v0, p0, Ljava/io/InvalidClassException;

    if-eqz v0, :cond_10

    const/16 p0, -0x21

    return p0

    .line 433
    :cond_10
    instance-of v0, p0, Ljava/io/InvalidObjectException;

    if-eqz v0, :cond_11

    const/16 p0, -0x22

    return p0

    .line 435
    :cond_11
    instance-of v0, p0, Ljava/io/NotActiveException;

    if-eqz v0, :cond_12

    const/16 p0, -0x23

    return p0

    .line 437
    :cond_12
    instance-of v0, p0, Ljava/io/NotSerializableException;

    if-eqz v0, :cond_13

    const/16 p0, -0x24

    return p0

    .line 439
    :cond_13
    instance-of v0, p0, Ljava/io/OptionalDataException;

    if-eqz v0, :cond_14

    const/16 p0, -0x25

    return p0

    .line 441
    :cond_14
    instance-of v0, p0, Ljava/io/StreamCorruptedException;

    if-eqz v0, :cond_15

    const/16 p0, -0x26

    return p0

    .line 443
    :cond_15
    instance-of v0, p0, Ljava/io/WriteAbortedException;

    if-eqz v0, :cond_16

    const/16 p0, -0x27

    return p0

    .line 445
    :cond_16
    instance-of v0, p0, Ljava/net/ProtocolException;

    if-eqz v0, :cond_17

    const/16 p0, -0x28

    return p0

    .line 447
    :cond_17
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_18

    const/16 p0, -0x29

    return p0

    .line 449
    :cond_18
    instance-of v0, p0, Ljavax/net/ssl/SSLKeyException;

    if-eqz v0, :cond_19

    const/16 p0, -0x2a

    return p0

    .line 451
    :cond_19
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_1a

    const/16 p0, -0x2b

    return p0

    .line 453
    :cond_1a
    instance-of v0, p0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_1b

    const/16 p0, -0x2c

    return p0

    .line 455
    :cond_1b
    instance-of v0, p0, Ljava/net/BindException;

    if-eqz v0, :cond_1c

    const/16 p0, -0x2d

    return p0

    .line 457
    :cond_1c
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_1d

    const/16 p0, -0x2e

    return p0

    .line 459
    :cond_1d
    instance-of v0, p0, Ljava/net/NoRouteToHostException;

    if-eqz v0, :cond_1e

    const/16 p0, -0x2f

    return p0

    .line 461
    :cond_1e
    instance-of v0, p0, Ljava/net/PortUnreachableException;

    if-eqz v0, :cond_1f

    const/16 p0, -0x30

    return p0

    .line 463
    :cond_1f
    instance-of v0, p0, Ljava/io/SyncFailedException;

    if-eqz v0, :cond_20

    const/16 p0, -0x31

    return p0

    .line 465
    :cond_20
    instance-of v0, p0, Ljava/io/UTFDataFormatException;

    if-eqz v0, :cond_21

    const/16 p0, -0x32

    return p0

    .line 467
    :cond_21
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_22

    const/16 p0, -0x33

    return p0

    .line 469
    :cond_22
    instance-of v0, p0, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_23

    const/16 p0, -0x34

    return p0

    .line 471
    :cond_23
    instance-of v0, p0, Ljava/io/UnsupportedEncodingException;

    if-eqz v0, :cond_24

    const/16 p0, -0x35

    return p0

    .line 473
    :cond_24
    instance-of p0, p0, Ljava/util/zip/ZipException;

    if-eqz p0, :cond_25

    const/16 p0, -0x36

    return p0

    :cond_25
    const/4 p0, -0x2

    return p0
.end method

.method public static getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 4

    .line 634
    new-instance p2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {p2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 635
    new-instance v0, Lorg/apache/http/conn/scheme/Scheme;

    const-string v1, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p2, v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    const/16 v0, 0x1bb

    .line 665
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 667
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .line 668
    sget-object v2, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 669
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-direct {v2, v3, v1, v0}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p2, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0

    .line 672
    :cond_0
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    new-instance v3, Lcom/tencent/open/utils/j;

    invoke-direct {v3}, Lcom/tencent/open/utils/j;-><init>()V

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {p2, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 675
    :catch_0
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    .line 676
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 675
    invoke-virtual {p2, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 679
    :goto_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 683
    invoke-static {p0, p1}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v1

    :cond_1
    const/4 p1, 0x0

    if-eqz v1, :cond_2

    const-string p1, "Common_HttpConnectionTimeout"

    .line 688
    invoke-virtual {v1, p1}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result p1

    const-string v2, "Common_SocketConnectionTimeout"

    .line 689
    invoke-virtual {v1, v2}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-nez p1, :cond_3

    const/16 p1, 0x3a98

    :cond_3
    if-nez v1, :cond_4

    const/16 v1, 0x7530

    .line 695
    :cond_4
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 696
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 699
    sget-object p1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    const-string p1, "UTF-8"

    .line 700
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 702
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AndroidSDK_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 705
    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 707
    new-instance p1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {p1, v0, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 709
    new-instance p2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p2, p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 712
    invoke-static {p0}, Lcom/tencent/open/utils/HttpUtils;->getProxy(Landroid/content/Context;)Lcom/tencent/open/utils/HttpUtils$a;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 714
    new-instance p1, Lorg/apache/http/HttpHost;

    iget-object v0, p0, Lcom/tencent/open/utils/HttpUtils$a;->a:Ljava/lang/String;

    iget p0, p0, Lcom/tencent/open/utils/HttpUtils$a;->b:I

    invoke-direct {p1, v0, p0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 715
    invoke-interface {p2}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p0

    const-string v0, "http.route.default-proxy"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_5
    return-object p2
.end method

.method public static getProxy(Landroid/content/Context;)Lcom/tencent/open/utils/HttpUtils$a;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "connectivity"

    .line 803
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v1, :cond_1

    return-object v0

    .line 807
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    .line 812
    :cond_2
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_3

    .line 814
    invoke-static {p0}, Lcom/tencent/open/utils/HttpUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-static {p0}, Lcom/tencent/open/utils/HttpUtils;->a(Landroid/content/Context;)I

    move-result p0

    .line 816
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-ltz p0, :cond_3

    .line 817
    new-instance v2, Lcom/tencent/open/utils/HttpUtils$a;

    invoke-direct {v2, v1, p0, v0}, Lcom/tencent/open/utils/HttpUtils$a;-><init>(Ljava/lang/String;ILcom/tencent/open/utils/HttpUtils$1;)V

    return-object v2

    :cond_3
    return-object v0
.end method

.method public static openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/k$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const-string v0, "connectivity"

    .line 489
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 491
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    new-instance p0, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;

    const-string p1, "network unavailable"

    invoke-direct {p0, p1}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 500
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_1

    .line 502
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    const-string p3, "appid_for_getting_config"

    .line 505
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "appid_for_getting_config"

    .line 506
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 507
    invoke-static {p0, p3, p1}, Lcom/tencent/open/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object p0

    const/4 p3, 0x0

    const/4 v1, 0x0

    const-string v2, "GET"

    .line 510
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_5

    .line 511
    invoke-static {v0}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    .line 512
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr v1, p3

    const-string p3, "openSDK_LOG.HttpUtils"

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->openUrl2 before url ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "?"

    .line 514
    invoke-virtual {p1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-ne p3, v3, :cond_3

    .line 515
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "?"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 517
    :cond_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 520
    :goto_2
    invoke-static {v0}, Lcom/tencent/open/log/d;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    if-eq p3, v0, :cond_4

    const-string v0, "openSDK_LOG.HttpUtils"

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->openUrl2 encodedParam ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/tencent/open/utils/HttpUtils;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " -- url = "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p3, "openSDK_LOG.HttpUtils"

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->openUrl2 encodedParam ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -- url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :goto_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 528
    new-instance p3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {p3, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string p1, "Accept-Encoding"

    const-string p2, "gzip"

    .line 529
    invoke-interface {p3, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    const-string v2, "POST"

    .line 530
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 531
    new-instance p3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string p1, "Accept-Encoding"

    const-string v2, "gzip"

    .line 532
    invoke-virtual {p3, p1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 534
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 535
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 536
    instance-of v6, v5, [B

    if-eqz v6, :cond_6

    .line 537
    check-cast v5, [B

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_4

    :cond_7
    const-string v2, "method"

    .line 541
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "method"

    .line 542
    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string p2, "Content-Type"

    const-string v2, "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    .line 544
    invoke-virtual {p3, p2, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "Connection"

    const-string v2, "Keep-Alive"

    .line 546
    invoke-virtual {p3, p2, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v2, "--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    .line 549
    invoke-static {v2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v2, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    .line 550
    invoke-static {v0, v2}, Lcom/tencent/open/utils/HttpUtils;->encodePostBody(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 555
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 556
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v0

    const-string v2, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    .line 558
    invoke-static {v2}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 559
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    .line 562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Content-Disposition: form-data; name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\"; filename=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v5, "Content-Type: content/unknown\r\n\r\n"

    .line 565
    invoke-static {v5}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 566
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_a

    .line 568
    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_a
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_9

    const-string v4, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n"

    .line 571
    invoke-static {v4}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_5

    :cond_b
    const-string p1, "\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n"

    .line 577
    invoke-static {p1}, Lcom/tencent/open/utils/k;->i(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 579
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 580
    array-length v0, p1

    add-int/2addr v1, v0

    .line 581
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 582
    new-instance p2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {p2, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 583
    invoke-virtual {p3, p2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 587
    :cond_c
    :goto_6
    invoke-interface {p0, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p0

    .line 588
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p1

    .line 589
    invoke-interface {p1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p1

    const-string p2, "openSDK_LOG.HttpUtils"

    .line 590
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "-->openUrl2 response cdoe ="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_d

    .line 592
    invoke-static {p0}, Lcom/tencent/open/utils/HttpUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object p0

    .line 598
    new-instance p1, Lcom/tencent/open/utils/k$a;

    invoke-direct {p1, p0, v1}, Lcom/tencent/open/utils/k$a;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 595
    :cond_d
    new-instance p0, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "http status code error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;,
            Lcom/tencent/open/utils/HttpUtils$HttpStatusException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "openSDK_LOG.HttpUtils"

    const-string v3, "OpenApi request"

    .line 195
    invoke-static {v2, v3}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v3

    const-string v4, "https://openmobile.qq.com/"

    invoke-virtual {v3, v1, v4}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tencent/open/utils/g;->a()Lcom/tencent/open/utils/g;

    move-result-object v4

    const-string v5, "https://openmobile.qq.com/"

    invoke-virtual {v4, v1, v5}, Lcom/tencent/open/utils/g;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object/from16 v2, p0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    move-object v3, v0

    move-object v4, v3

    .line 210
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/tencent/open/utils/HttpUtils;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/tencent/open/utils/f;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/f;

    move-result-object v8

    const-string v9, "Common_HttpRetryCount"

    invoke-virtual {v8, v9}, Lcom/tencent/open/utils/f;->a(Ljava/lang/String;)I

    move-result v8

    const-string v9, "OpenConfig_test"

    .line 220
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "config 1:Common_HttpRetryCount            config_value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "   appid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "     url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 220
    invoke-static {v9, v10}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_1

    const/4 v8, 0x3

    :cond_1
    const-string v9, "OpenConfig_test"

    .line 224
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "config 1:Common_HttpRetryCount            result_value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "   appid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/connect/auth/QQToken;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "     url:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-static {v9, v2}, Lcom/tencent/open/log/SLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 232
    :try_start_0
    invoke-static {v1, v4, v12, v11}, Lcom/tencent/open/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/k$a;

    move-result-object v0

    .line 234
    iget-object v13, v0, Lcom/tencent/open/utils/k$a;->a:Ljava/lang/String;

    .line 235
    invoke-static {v13}, Lcom/tencent/open/utils/k;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v2, "ret"

    .line 237
    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move-object v9, v0

    goto/16 :goto_4

    :catch_2
    const/4 v2, -0x4

    .line 242
    :goto_1
    :try_start_2
    iget-wide v14, v0, Lcom/tencent/open/utils/k$a;->b:J

    .line 243
    iget-wide v9, v0, Lcom/tencent/open/utils/k$a;->c:J
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/tencent/open/utils/HttpUtils$HttpStatusException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move v8, v2

    move-wide/from16 v16, v9

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object v9, v0

    .line 309
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v8, -0x4

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 313
    invoke-static {}, Lcom/tencent/open/a/g;->a()Lcom/tencent/open/a/g;

    move-result-object v0

    move-object v1, v3

    move-wide v2, v5

    move-wide v4, v10

    move-wide v6, v12

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;JJJI)V

    .line 314
    throw v9

    :catch_4
    move-exception v0

    move-object v9, v0

    .line 301
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 303
    invoke-static {v9}, Lcom/tencent/open/utils/HttpUtils;->getErrorCodeFromException(Ljava/io/IOException;)I

    move-result v8

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 306
    invoke-static {}, Lcom/tencent/open/a/g;->a()Lcom/tencent/open/a/g;

    move-result-object v0

    move-object v1, v3

    move-wide v2, v5

    move-wide v4, v10

    move-wide v6, v12

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;JJJI)V

    .line 307
    throw v9

    :catch_5
    move-exception v0

    move-object v9, v0

    .line 294
    invoke-virtual {v9}, Ljava/net/MalformedURLException;->printStackTrace()V

    const/4 v8, -0x3

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 298
    invoke-static {}, Lcom/tencent/open/a/g;->a()Lcom/tencent/open/a/g;

    move-result-object v0

    move-object v1, v3

    move-wide v2, v5

    move-wide v4, v10

    move-wide v6, v12

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;JJJI)V

    .line 299
    throw v9

    :catch_6
    move-exception v0

    .line 291
    invoke-virtual {v0}, Lcom/tencent/open/utils/HttpUtils$NetworkUnavailableException;->printStackTrace()V

    .line 292
    throw v0

    :catch_7
    move-exception v0

    move-object v9, v0

    .line 274
    invoke-virtual {v9}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->printStackTrace()V

    .line 275
    invoke-virtual {v9}, Lcom/tencent/open/utils/HttpUtils$HttpStatusException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :try_start_3
    const-string v1, "http status code error:"

    const-string v2, ""

    .line 278
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    move v8, v0

    goto :goto_2

    :catch_8
    move-exception v0

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, -0x9

    const/16 v8, -0x9

    :goto_2
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 288
    invoke-static {}, Lcom/tencent/open/a/g;->a()Lcom/tencent/open/a/g;

    move-result-object v0

    move-object v1, v3

    move-wide v2, v5

    move-wide v4, v10

    move-wide v6, v12

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;JJJI)V

    .line 289
    throw v9

    :catch_9
    move-exception v0

    move-object v9, v0

    move-object v13, v2

    .line 259
    :goto_3
    invoke-virtual {v9}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    const/4 v10, -0x8

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    if-ge v7, v8, :cond_3

    .line 265
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    goto :goto_5

    .line 268
    :cond_3
    invoke-static {}, Lcom/tencent/open/a/g;->a()Lcom/tencent/open/a/g;

    move-result-object v0

    move-object v1, v3

    move-wide v2, v5

    move-wide v4, v14

    move-wide/from16 v6, v18

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;JJJI)V

    .line 269
    throw v9

    :catch_a
    move-exception v0

    move-object v9, v0

    move-object v13, v2

    .line 247
    :goto_4
    invoke-virtual {v9}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    const/4 v10, -0x7

    const-wide/16 v14, 0x0

    const-wide/16 v18, 0x0

    if-ge v7, v8, :cond_4

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    :goto_5
    move-object v2, v13

    if-lt v7, v8, :cond_2

    move-object v13, v2

    move v8, v10

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    .line 317
    :goto_6
    invoke-static {}, Lcom/tencent/open/a/g;->a()Lcom/tencent/open/a/g;

    move-result-object v0

    move-object v1, v3

    move-wide v2, v5

    move-wide v4, v14

    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;JJJI)V

    return-object v13

    .line 255
    :cond_4
    invoke-static {}, Lcom/tencent/open/a/g;->a()Lcom/tencent/open/a/g;

    move-result-object v0

    move-object v1, v3

    move-wide v2, v5

    move-wide v4, v14

    move-wide/from16 v6, v18

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Lcom/tencent/open/a/g;->a(Ljava/lang/String;JJJI)V

    .line 256
    throw v9
.end method

.method public static requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
    .locals 9

    const-string v0, "openSDK_LOG.HttpUtils"

    const-string v1, "OpenApi requestAsync"

    .line 324
    invoke-static {v0, v1}, Lcom/tencent/open/log/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    new-instance v0, Lcom/tencent/open/utils/HttpUtils$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/tencent/open/utils/HttpUtils$1;-><init>(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V

    .line 377
    invoke-virtual {v0}, Lcom/tencent/open/utils/HttpUtils$1;->start()V

    return-void
.end method
