.class Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;
.super Ljava/lang/Object;
.source "MultiHostConnectionProxy.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/MultiHostConnectionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JdbcInterfaceProxy"
.end annotation


# instance fields
.field invokeOn:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/MultiHostConnectionProxy;Ljava/lang/Object;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invokeOn:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invokeOn:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "equals"

    .line 99
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 101
    aget-object p1, p3, p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    monitor-enter p1

    const/4 v0, 0x0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->invokeOn:Ljava/lang/Object;

    invoke-virtual {p2, v1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2, p3}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->proxyIfReturnTypeIsJdbcInterface(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    move-object p3, v0

    .line 111
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mysql/jdbc/MultiHostConnectionProxy$JdbcInterfaceProxy;->this$0:Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-virtual {v0, p2}, Lcom/mysql/jdbc/MultiHostConnectionProxy;->dealWithInvocationException(Ljava/lang/reflect/InvocationTargetException;)V

    move-object p2, p3

    .line 114
    :goto_1
    monitor-exit p1

    return-object p2

    .line 115
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method
