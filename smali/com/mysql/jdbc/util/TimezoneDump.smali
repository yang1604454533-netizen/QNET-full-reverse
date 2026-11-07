.class public Lcom/mysql/jdbc/util/TimezoneDump;
.super Ljava/lang/Object;
.source "TimezoneDump.java"


# static fields
.field private static final DEFAULT_URL:Ljava/lang/String; = "jdbc:mysql:///test"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "jdbc:mysql:///test"

    .line 55
    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 56
    aget-object v0, p0, v1

    :cond_0
    const-string p0, "com.mysql.jdbc.Driver"

    .line 59
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    const/4 p0, 0x0

    .line 64
    :try_start_0
    invoke-static {v0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object v0

    invoke-interface {v0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v0

    const-string v1, "SHOW VARIABLES LIKE \'timezone\'"

    invoke-interface {v0, v1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :goto_0
    :try_start_1
    invoke-interface {v0}, Ljava/sql/ResultSet;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 67
    invoke-interface {v0, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MySQL timezone name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {v1, p0}, Lcom/mysql/jdbc/TimeUtil;->getCanonicalTimezone(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/String;

    move-result-object v1

    .line 71
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Java timezone name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 75
    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/sql/ResultSet;->close()V

    .line 74
    :cond_3
    throw p0
.end method
