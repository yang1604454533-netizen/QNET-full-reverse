.class public final Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;
.super Ljava/lang/Object;
.source "MysqlConnectionTester.java"

# interfaces
.implements Lcom/mchange/v2/c3p0/QueryConnectionTester;


# static fields
.field private static final NO_ARGS_ARRAY:[Ljava/lang/Object;

.field private static final serialVersionUID:J = 0x2d31373136343830L


# instance fields
.field private transient pingMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;->NO_ARGS_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    :try_start_0
    const-class v0, Lcom/mysql/jdbc/Connection;

    const-string v1, "ping"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;->pingMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public activeCheckConnection(Ljava/sql/Connection;)I
    .locals 4

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;->pingMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 63
    instance-of v0, p1, Lcom/mysql/jdbc/Connection;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/mysql/jdbc/Connection;

    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->ping()V

    goto :goto_0

    .line 68
    :cond_0
    check-cast p1, Lcom/mchange/v2/c3p0/C3P0ProxyConnection;

    .line 69
    iget-object v0, p0, Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;->pingMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/mchange/v2/c3p0/C3P0ProxyConnection;->RAW_CONNECTION:Ljava/lang/Object;

    sget-object v2, Lcom/mysql/jdbc/integration/c3p0/MysqlConnectionTester;->NO_ARGS_ARRAY:[Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/mchange/v2/c3p0/C3P0ProxyConnection;->rawConnectionOperation(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 75
    :try_start_1
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "SELECT 1"

    .line 76
    invoke-interface {p1, v0}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_2

    .line 79
    :try_start_3
    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/sql/Statement;->close()V

    :cond_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const/4 p1, -0x1

    return p1
.end method

.method public activeCheckConnection(Ljava/sql/Connection;Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public statusOnException(Ljava/sql/Connection;Ljava/lang/Throwable;)I
    .locals 2

    .line 96
    instance-of p1, p2, Lcom/mysql/jdbc/CommunicationsException;

    const/4 v0, -0x1

    if-nez p1, :cond_3

    const-string p1, "com.mysql.jdbc.exceptions.jdbc4.CommunicationsException"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    instance-of p1, p2, Ljava/sql/SQLException;

    if-eqz p1, :cond_2

    .line 101
    check-cast p2, Ljava/sql/SQLException;

    invoke-virtual {p2}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "08"

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0
.end method
