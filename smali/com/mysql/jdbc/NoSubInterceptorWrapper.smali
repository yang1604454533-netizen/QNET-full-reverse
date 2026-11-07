.class public Lcom/mysql/jdbc/NoSubInterceptorWrapper;
.super Ljava/lang/Object;
.source "NoSubInterceptorWrapper.java"

# interfaces
.implements Lcom/mysql/jdbc/StatementInterceptorV2;


# instance fields
.field private final underlyingInterceptor:Lcom/mysql/jdbc/StatementInterceptorV2;


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/StatementInterceptorV2;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->underlyingInterceptor:Lcom/mysql/jdbc/StatementInterceptorV2;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Interceptor to be wrapped can not be NULL"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->underlyingInterceptor:Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptorV2;->destroy()V

    return-void
.end method

.method public executeTopLevelOnly()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->underlyingInterceptor:Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-interface {v0}, Lcom/mysql/jdbc/StatementInterceptorV2;->executeTopLevelOnly()Z

    move-result v0

    return v0
.end method

.method public getUnderlyingInterceptor()Lcom/mysql/jdbc/StatementInterceptorV2;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->underlyingInterceptor:Lcom/mysql/jdbc/StatementInterceptorV2;

    return-object v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->underlyingInterceptor:Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-interface {v0, p1, p2}, Lcom/mysql/jdbc/StatementInterceptorV2;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    return-void
.end method

.method public postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object v0, p0

    .line 58
    iget-object v1, v0, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->underlyingInterceptor:Lcom/mysql/jdbc/StatementInterceptorV2;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/mysql/jdbc/StatementInterceptorV2;->postProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/ResultSetInternalMethods;Lcom/mysql/jdbc/Connection;IZZLjava/sql/SQLException;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 v1, 0x0

    return-object v1
.end method

.method public preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mysql/jdbc/NoSubInterceptorWrapper;->underlyingInterceptor:Lcom/mysql/jdbc/StatementInterceptorV2;

    invoke-interface {v0, p1, p2, p3}, Lcom/mysql/jdbc/StatementInterceptorV2;->preProcess(Ljava/lang/String;Lcom/mysql/jdbc/Statement;Lcom/mysql/jdbc/Connection;)Lcom/mysql/jdbc/ResultSetInternalMethods;

    const/4 p1, 0x0

    return-object p1
.end method
