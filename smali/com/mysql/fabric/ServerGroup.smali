.class public Lcom/mysql/fabric/ServerGroup;
.super Ljava/lang/Object;
.source "ServerGroup.java"


# instance fields
.field private name:Ljava/lang/String;

.field private servers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/Server;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/Server;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/mysql/fabric/ServerGroup;->name:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/mysql/fabric/ServerGroup;->servers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getMaster()Lcom/mysql/fabric/Server;
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/mysql/fabric/ServerGroup;->servers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/Server;

    .line 55
    invoke-virtual {v1}, Lcom/mysql/fabric/Server;->getRole()Lcom/mysql/fabric/ServerRole;

    move-result-object v2

    sget-object v3, Lcom/mysql/fabric/ServerRole;->PRIMARY:Lcom/mysql/fabric/ServerRole;

    if-ne v2, v3, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mysql/fabric/ServerGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getServer(Ljava/lang/String;)Lcom/mysql/fabric/Server;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/mysql/fabric/ServerGroup;->servers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/fabric/Server;

    .line 69
    invoke-virtual {v1}, Lcom/mysql/fabric/Server;->getHostPortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getServers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/mysql/fabric/Server;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mysql/fabric/ServerGroup;->servers:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Group[name=%s, servers=%s]"

    const/4 v1, 0x2

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/fabric/ServerGroup;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mysql/fabric/ServerGroup;->servers:Ljava/util/Set;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
