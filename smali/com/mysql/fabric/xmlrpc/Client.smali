.class public Lcom/mysql/fabric/xmlrpc/Client;
.super Ljava/lang/Object;
.source "Client.java"


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public clearHeader(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public execute(Lcom/mysql/fabric/xmlrpc/base/MethodCall;)Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/Client;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "POST"

    .line 69
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v0, "User-Agent"

    const-string v2, "MySQL XML-RPC"

    .line 70
    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string v2, "text/xml"

    .line 71
    invoke-virtual {v1, v0, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 72
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v0, 0x1

    .line 73
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 74
    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 77
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/MethodCall;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 86
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 87
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 90
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 91
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 93
    new-instance v2, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;

    invoke-direct {v2}, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;-><init>()V

    .line 95
    invoke-virtual {v0, p1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 99
    invoke-virtual {v2}, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->getMethodResponse()Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->getFault()Lcom/mysql/fabric/xmlrpc/base/Fault;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    .line 108
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object p1

    .line 101
    :cond_2
    :try_start_2
    new-instance v0, Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;

    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->getFault()Lcom/mysql/fabric/xmlrpc/base/Fault;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;-><init>(Lcom/mysql/fabric/xmlrpc/base/Fault;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 108
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 107
    :cond_3
    throw p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/Client;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
