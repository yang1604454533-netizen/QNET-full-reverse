.class public Lcom/mysql/jdbc/ConnectionGroupManager;
.super Ljava/lang/Object;
.source "ConnectionGroupManager.java"


# static fields
.field private static GROUP_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ConnectionGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static hasRegisteredJmx:Z

.field private static mbean:Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    .line 39
    new-instance v0, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;

    invoke-direct {v0}, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;

    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/mysql/jdbc/ConnectionGroupManager;->hasRegisteredJmx:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 82
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 83
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 84
    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/ConnectionGroup;->addHost(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getActiveHostCount(Ljava/lang/String;)I
    .locals 2

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 90
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 91
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionGroup;

    .line 92
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 94
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public static getActiveHostLists(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 164
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 166
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionGroup;

    .line 168
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v1

    .line 169
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 174
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 176
    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 181
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    .line 183
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 186
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 188
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_2

    .line 191
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getActiveLogicalConnectionCount(Ljava/lang/String;)J
    .locals 4

    .line 99
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 100
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionGroup;

    int-to-long v2, v0

    .line 101
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionGroup;->getActiveLogicalConnectionCount()J

    move-result-wide v0

    add-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public static getActivePhysicalConnectionCount(Ljava/lang/String;)J
    .locals 4

    .line 108
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 109
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionGroup;

    int-to-long v2, v0

    .line 110
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionGroup;->getActivePhysicalConnectionCount()J

    move-result-wide v0

    add-long/2addr v2, v0

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    return-wide v0
.end method

.method public static getConnectionGroup(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionGroup;
    .locals 1

    .line 62
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/ConnectionGroup;

    return-object p0
.end method

.method public static declared-synchronized getConnectionGroupInstance(Ljava/lang/String;)Lcom/mysql/jdbc/ConnectionGroup;
    .locals 3

    const-class v0, Lcom/mysql/jdbc/ConnectionGroupManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/ConnectionGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 47
    :cond_0
    :try_start_1
    new-instance v1, Lcom/mysql/jdbc/ConnectionGroup;

    invoke-direct {v1, p0}, Lcom/mysql/jdbc/ConnectionGroup;-><init>(Ljava/lang/String;)V

    .line 48
    sget-object v2, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0

    throw p0
.end method

.method private static getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/mysql/jdbc/ConnectionGroup;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    const-string v0, ""

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 73
    sget-object v1, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/ConnectionGroup;

    if-eqz p0, :cond_1

    .line 75
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0

    .line 67
    :cond_2
    :goto_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 69
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public static getRegisteredConnectionGroups()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 195
    invoke-static {v0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    .line 198
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mysql/jdbc/ConnectionGroup;

    .line 199
    invoke-virtual {v3}, Lcom/mysql/jdbc/ConnectionGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalHostCount(Ljava/lang/String;)I
    .locals 3

    .line 116
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 118
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/ConnectionGroup;

    .line 119
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionGroup;->getInitialHosts()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 120
    invoke-virtual {v1}, Lcom/mysql/jdbc/ConnectionGroup;->getClosedHosts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public static getTotalLogicalConnectionCount(Ljava/lang/String;)J
    .locals 4

    .line 127
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 128
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionGroup;

    .line 129
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionGroup;->getTotalLogicalConnectionCount()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getTotalPhysicalConnectionCount(Ljava/lang/String;)J
    .locals 4

    .line 136
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 137
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionGroup;

    .line 138
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionGroup;->getTotalPhysicalConnectionCount()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static getTotalTransactionCount(Ljava/lang/String;)J
    .locals 4

    .line 145
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mysql/jdbc/ConnectionGroup;

    .line 147
    invoke-virtual {v2}, Lcom/mysql/jdbc/ConnectionGroup;->getTotalTransactionCount()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static registerJmx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    sget-boolean v0, Lcom/mysql/jdbc/ConnectionGroupManager;->hasRegisteredJmx:Z

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    sget-object v0, Lcom/mysql/jdbc/ConnectionGroupManager;->mbean:Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;

    invoke-virtual {v0}, Lcom/mysql/jdbc/jmx/LoadBalanceConnectionGroupManager;->registerJmx()V

    const/4 v0, 0x1

    .line 58
    sput-boolean v0, Lcom/mysql/jdbc/ConnectionGroupManager;->hasRegisteredJmx:Z

    return-void
.end method

.method public static removeHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 153
    invoke-static {p0, p1, v0}, Lcom/mysql/jdbc/ConnectionGroupManager;->removeHost(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static removeHost(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 157
    invoke-static {p0}, Lcom/mysql/jdbc/ConnectionGroupManager;->getGroupsMatching(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    .line 158
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/jdbc/ConnectionGroup;

    .line 159
    invoke-virtual {v0, p1, p2}, Lcom/mysql/jdbc/ConnectionGroup;->removeHost(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
