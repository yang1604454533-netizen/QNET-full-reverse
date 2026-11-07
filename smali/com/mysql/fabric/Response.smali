.class public Lcom/mysql/fabric/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private fabricUuid:Ljava/lang/String;

.field private protocolVersion:I

.field private resultSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private ttl:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mysql/fabric/FabricCommunicationException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    .line 45
    iget v1, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 48
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/fabric/Response;->fabricUuid:Ljava/lang/String;

    const/4 v1, 0x2

    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/mysql/fabric/Response;->ttl:I

    const/4 v1, 0x3

    .line 50
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    const-string v1, ""

    .line 51
    iget-object v2, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x4

    .line 54
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 56
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 57
    new-instance v0, Lcom/mysql/fabric/proto/xmlrpc/ResultSetParser;

    invoke-direct {v0}, Lcom/mysql/fabric/proto/xmlrpc/ResultSetParser;-><init>()V

    const-string v1, "info"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const-string v2, "rows"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lcom/mysql/fabric/proto/xmlrpc/ResultSetParser;->parse(Ljava/util/Map;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/Response;->resultSet:Ljava/util/List;

    :cond_1
    return-void

    .line 46
    :cond_2
    new-instance p1, Lcom/mysql/fabric/FabricCommunicationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown protocol version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mysql/fabric/FabricCommunicationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mysql/fabric/Response;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getFabricUuid()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mysql/fabric/Response;->fabricUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/mysql/fabric/Response;->protocolVersion:I

    return v0
.end method

.method public getResultSet()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/mysql/fabric/Response;->resultSet:Ljava/util/List;

    return-object v0
.end method

.method public getTtl()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/mysql/fabric/Response;->ttl:I

    return v0
.end method
