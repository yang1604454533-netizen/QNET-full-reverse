.class public Lcom/mysql/fabric/jdbc/FabricMySQLDriver;
.super Lcom/mysql/jdbc/NonRegisteringDriver;
.source "FabricMySQLDriver.java"

# interfaces
.implements Ljava/sql/Driver;


# static fields
.field public static final FABRIC_PASSWORD_PROPERTY_KEY:Ljava/lang/String; = "fabricPassword"

.field public static final FABRIC_PROTOCOL_PROPERTY_KEY:Ljava/lang/String; = "fabricProtocol"

.field public static final FABRIC_REPORT_ERRORS_PROPERTY_KEY:Ljava/lang/String; = "fabricReportErrors"

.field public static final FABRIC_SERVER_GROUP_PROPERTY_KEY:Ljava/lang/String; = "fabricServerGroup"

.field public static final FABRIC_SHARD_KEY_PROPERTY_KEY:Ljava/lang/String; = "fabricShardKey"

.field public static final FABRIC_SHARD_TABLE_PROPERTY_KEY:Ljava/lang/String; = "fabricShardTable"

.field public static final FABRIC_URL_PREFIX:Ljava/lang/String; = "jdbc:mysql:fabric://"

.field public static final FABRIC_USERNAME_PROPERTY_KEY:Ljava/lang/String; = "fabricUsername"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    :try_start_0
    new-instance v0, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;

    invoke-direct {v0}, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;-><init>()V

    invoke-static {v0}, Ljava/sql/DriverManager;->registerDriver(Ljava/sql/Driver;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 58
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t register driver"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Lcom/mysql/jdbc/NonRegisteringDriver;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptsURL(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;->parseFabricURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public connect(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/mysql/fabric/jdbc/FabricMySQLDriver;->parseFabricURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    const-string v0, "fabricProtocol"

    const-string v1, "http"

    .line 73
    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/mysql/jdbc/Util;->isJdbc4()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "com.mysql.fabric.jdbc.JDBC4FabricMySQLConnectionProxy"

    .line 76
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/util/Properties;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 78
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1, p2}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/sql/Connection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 80
    new-instance p2, Ljava/sql/SQLException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/sql/SQLException;

    throw p1

    .line 84
    :cond_1
    new-instance p2, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;

    invoke-direct {p2, p1}, Lcom/mysql/fabric/jdbc/FabricMySQLConnectionProxy;-><init>(Ljava/util/Properties;)V

    return-object p2
.end method

.method public getParentLogger()Ljava/util/logging/Logger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/sql/SQLException;

    const-string v1, "no logging"

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parseFabricURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const-string v0, "jdbc:mysql:fabric://"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "fabric:"

    const-string v1, ""

    .line 103
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/NonRegisteringDriver;->parseURL(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p1

    return-object p1
.end method
