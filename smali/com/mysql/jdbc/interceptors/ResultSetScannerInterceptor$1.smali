.class Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;
.super Ljava/lang/Object;
.source "ResultSetScannerInterceptor.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;->postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;

.field final synthetic val$finalResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;Lcom/mysql/jdbc/ResultSetInternalMethods;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;->this$0:Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;

    iput-object p2, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;->val$finalResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string p1, "equals"

    .line 72
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 74
    aget-object p1, p3, p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;->val$finalResultSet:Lcom/mysql/jdbc/ResultSetInternalMethods;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 79
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    .line 81
    instance-of p3, p1, Ljava/lang/String;

    if-nez p3, :cond_2

    :cond_1
    const-string p3, "getString"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "getObject"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    const-string p3, "getObjectStoredProc"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 83
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor$1;->this$0:Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;

    iget-object p2, p2, Lcom/mysql/jdbc/interceptors/ResultSetScannerInterceptor;->regexP:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 85
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_4

    :cond_3
    return-object p1

    .line 86
    :cond_4
    new-instance p1, Ljava/sql/SQLException;

    const-string p2, "value disallowed by filter"

    invoke-direct {p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
