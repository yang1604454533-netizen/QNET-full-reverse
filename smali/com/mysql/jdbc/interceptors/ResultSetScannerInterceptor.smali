.class public Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;
.super Ljava/lang/Object;
.source "ResultSetScannerInterceptor.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptor;


# instance fields
.field protected regexP:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string p1, "resultSetScannerRegex"

    .line 44
    invoke-virtual {p2, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_0

    .line 51
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;->regexP:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 53
    new-instance p2, Ljava/sql/SQLException;

    const-string v0, "Can\'t use configured regex due to underlying exception."

    invoke-direct {p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 56
    throw p2

    .line 47
    :cond_0
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "resultSetScannerRegex must be configured, and must be > 0 characters"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Class;

    const-class p4, Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v0, 0x0

    aput-object p4, p2, v0

    new-instance p4, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;

    invoke-direct {p4, p0, p3}, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;-><init>(Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;Lcom/mysql/jdbc/ResultSetInternalMethods;)V

    invoke-static {p1, p2, p4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/ResultSetInternalMethods;

    return-object p1
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
