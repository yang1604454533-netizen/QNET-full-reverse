.class public final Lcom/mysql/jdbc/integration/jboss/MysqlValidConnectionChecker;
.super Ljava/lang/Object;
.source "MysqlValidConnectionChecker.java"

# interfaces
.implements Lorg/jboss/resource/adapter/jdbc/ValidConnectionChecker;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7ba49f511d3f0049L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValidConnection(Ljava/sql/Connection;)Ljava/sql/SQLException;
    .locals 3

    const/4 v0, 0x0

    .line 55
    :try_start_0
    invoke-interface {p1}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "/* ping */ SELECT 1"

    .line 57
    invoke-interface {p1, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/sql/ResultSet;->close()V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 65
    :try_start_2
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    :try_start_3
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2

    .line 63
    :catch_2
    :cond_1
    throw v0

    :catch_3
    move-exception p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 65
    :try_start_4
    invoke-interface {p1}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :cond_2
    return-object v0
.end method
