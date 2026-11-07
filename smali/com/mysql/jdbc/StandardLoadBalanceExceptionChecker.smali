.class public Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;
.super Ljava/lang/Object;
.source "StandardLoadBalanceExceptionChecker.java"

# interfaces
.implements Lcom/mysql/jdbc/LoadBalanceExceptionChecker;


# instance fields
.field private sqlExClassList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private sqlStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private configureSQLExceptionSubclassList(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_3

    const-string v0, ""

    .line 98
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ","

    const/4 v1, 0x1

    .line 101
    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 106
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 107
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 113
    iput-object v0, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlExClassList:Ljava/util/List;

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private configureSQLStateList(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    const-string v0, ""

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ","

    const/4 v1, 0x1

    .line 84
    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 93
    iput-object v0, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlStateList:Ljava/util/List;

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "loadBalanceSQLStateFailover"

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p2, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->configureSQLStateList(Ljava/lang/String;)V

    const-string p1, "loadBalanceSQLExceptionSubclassFailover"

    .line 77
    invoke-virtual {p2, p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->configureSQLExceptionSubclassList(Ljava/lang/String;)V

    return-void
.end method

.method public shouldExceptionTriggerFailover(Ljava/sql/SQLException;)Z
    .locals 4

    .line 38
    invoke-virtual {p1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v2, "08"

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlStateList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 47
    iget-object v2, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlStateList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 56
    :cond_2
    instance-of v0, p1, Lcom/mysql/jdbc/CommunicationsException;

    if-eqz v0, :cond_3

    return v1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlExClassList:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/mysql/jdbc/StandardLoadBalanceExceptionChecker;->sqlExClassList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
