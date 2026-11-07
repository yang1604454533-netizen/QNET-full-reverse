.class public Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;
.super Ljava/lang/Object;
.source "SessionAssociationInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptor;


# static fields
.field protected static final sessionLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected currentSessionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->sessionLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSessionKey()Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->sessionLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final resetSessionKey()V
    .locals 2

    .line 45
    sget-object v0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->sessionLocal:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static final setSessionKey(Ljava/lang/String;)V
    .locals 1

    .line 41
    sget-object v0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->sessionLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->getSessionKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p2, p0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->currentSessionKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "SET @mysql_proxy_session=?"

    .line 69
    invoke-interface {p3, p2}, Lcom/mysql/jdbc/Connection;->clientPrepareStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p2

    const/4 p3, 0x1

    .line 72
    :try_start_0
    invoke-interface {p2, p3, p1}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 73
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->execute()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 78
    iput-object p1, p0, Lcom/mysql/jdbc/interceptors/SessionAssociationInterceptor;->currentSessionKey:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 81
    invoke-interface {p2}, Ljava/sql/PreparedStatement;->close()V

    .line 75
    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
