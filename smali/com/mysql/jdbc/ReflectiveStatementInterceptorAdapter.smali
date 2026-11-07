.class public Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;
.super Ljava/lang/Object;
.source "ReflectiveStatementInterceptorAdapter.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptorV2;


# instance fields
.field private final toProxy:Lcom/mysql/jdbc/StatementInterceptor;

.field final v2PostProcessMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/StatementInterceptor;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->getV2PostProcessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->v2PostProcessMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static final getV2PostProcessMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "postProcess"

    const/16 v2, 0x8

    .line 84
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/mysql/jdbc/Statement;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Lcom/mysql/jdbc/ResultSetInternalMethods;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Lcom/mysql/jdbc/Connection;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, Ljava/sql/SQLException;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :catch_1
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptor;->destroy()V

    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptor;->executeTopLevelOnly()Z

    move-result v0

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/StatementInterceptor;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->v2PostProcessMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object p4, v2, p1

    const/4 p1, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x5

    if-eqz p6, :cond_0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    aput-object p2, v2, p1

    const/4 p1, 0x6

    if-eqz p7, :cond_1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    aput-object p2, v2, p1

    const/4 p1, 0x7

    aput-object p8, v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/ResultSetInternalMethods;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 71
    new-instance p2, Ljava/sql/SQLException;

    const-string p3, "Unable to reflectively invoke interceptor"

    invoke-direct {p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 74
    throw p2

    :catch_1
    move-exception p1

    .line 66
    new-instance p2, Ljava/sql/SQLException;

    const-string p3, "Unable to reflectively invoke interceptor"

    invoke-direct {p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 69
    throw p2

    :catch_2
    move-exception p1

    .line 61
    new-instance p2, Ljava/sql/SQLException;

    const-string p3, "Unable to reflectively invoke interceptor"

    invoke-direct {p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 64
    throw p2
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/ReflectiveStatementInterceptorAdapter;->toProxy:Lcom/mysql/jdbc/StatementInterceptor;

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/StatementInterceptor;->preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object p1

    return-object p1
.end method
