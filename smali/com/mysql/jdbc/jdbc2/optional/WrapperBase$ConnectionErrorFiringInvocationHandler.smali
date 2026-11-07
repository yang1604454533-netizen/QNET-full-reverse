.class public Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;
.super Ljava/lang/Object;
.source "WrapperBase.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectionErrorFiringInvocationHandler"
.end annotation


# instance fields
.field invokeOn:Ljava/lang/Object;

.field final synthetic this$0:Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;->this$0:Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 70
    iput-object p1, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;->invokeOn:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;->invokeOn:Ljava/lang/Object;

    return-void
.end method

.method private proxyIfInterfaceIsJdbc(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 110
    invoke-virtual {p2}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p2

    .line 112
    array-length v0, p2

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, p2, v0

    .line 113
    invoke-static {v0}, Lcom/mysql/jdbc/Util;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.sql"

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "javax.sql"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;->proxyIfInterfaceIsJdbc(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;

    iget-object v2, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;->this$0:Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;

    invoke-direct {v1, v2, p1}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;-><init>(Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;Ljava/lang/Object;)V

    invoke-static {v0, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p1
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

    .line 77
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 79
    aget-object p1, p3, p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;->invokeOn:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p2, :cond_1

    .line 88
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;->proxyIfInterfaceIsJdbc(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p2

    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    .line 91
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p3

    instance-of p3, p3, Ljava/sql/SQLException;

    if-eqz p3, :cond_2

    .line 92
    iget-object p3, p0, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase$ConnectionErrorFiringInvocationHandler;->this$0:Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/sql/SQLException;

    invoke-virtual {p3, p1}, Lcom/mysql/jdbc/jdbc2/optional/WrapperBase;->checkAndFireConnectionError(Ljava/sql/SQLException;)V

    :cond_1
    move-object p1, p2

    :goto_1
    return-object p1

    .line 94
    :cond_2
    throw p1
.end method
