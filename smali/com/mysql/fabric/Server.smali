.class public Lcom/mysql/fabric/Server;
.super Ljava/lang/Object;
.source "Server.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/mysql/fabric/Server;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private groupName:Ljava/lang/String;

.field private hostname:Ljava/lang/String;

.field private mode:Lcom/mysql/fabric/ServerMode;

.field private port:I

.field private role:Lcom/mysql/fabric/ServerRole;

.field private uuid:Ljava/lang/String;

.field private weight:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mysql/fabric/ServerMode;Lcom/mysql/fabric/ServerRole;D)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/mysql/fabric/Server;->groupName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/mysql/fabric/Server;->uuid:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    .line 42
    iput p4, p0, Lcom/mysql/fabric/Server;->port:I

    .line 43
    iput-object p5, p0, Lcom/mysql/fabric/Server;->mode:Lcom/mysql/fabric/ServerMode;

    .line 44
    iput-object p6, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    .line 45
    iput-wide p7, p0, Lcom/mysql/fabric/Server;->weight:D

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mysql/fabric/Server;)I
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lcom/mysql/fabric/Server;

    invoke-virtual {p0, p1}, Lcom/mysql/fabric/Server;->compareTo(Lcom/mysql/fabric/Server;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 101
    instance-of v0, p1, Lcom/mysql/fabric/Server;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 104
    :cond_0
    check-cast p1, Lcom/mysql/fabric/Server;

    .line 105
    invoke-virtual {p1}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mysql/fabric/Server;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getHostPortString()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mysql/fabric/Server;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Lcom/mysql/fabric/ServerMode;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mysql/fabric/Server;->mode:Lcom/mysql/fabric/ServerMode;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/mysql/fabric/Server;->port:I

    return v0
.end method

.method public getRole()Lcom/mysql/fabric/ServerRole;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/mysql/fabric/Server;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/mysql/fabric/Server;->weight:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/mysql/fabric/Server;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isMaster()Z
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->PRIMARY:Lcom/mysql/fabric/ServerRole;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSlave()Z
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->SECONDARY:Lcom/mysql/fabric/ServerRole;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    sget-object v1, Lcom/mysql/fabric/ServerRole;->SPARE:Lcom/mysql/fabric/ServerRole;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "Server[%s, %s:%d, %s, %s, weight=%s]"

    const/4 v1, 0x6

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/mysql/fabric/Server;->uuid:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mysql/fabric/Server;->hostname:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/mysql/fabric/Server;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mysql/fabric/Server;->mode:Lcom/mysql/fabric/ServerMode;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/mysql/fabric/Server;->role:Lcom/mysql/fabric/ServerRole;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/mysql/fabric/Server;->weight:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
