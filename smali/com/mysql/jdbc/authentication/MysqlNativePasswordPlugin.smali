.class public Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;
.super Ljava/lang/Object;
.source "MysqlNativePasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# instance fields
.field private connection:Lcom/mysql/jdbc/Connection;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    const-string v0, "mysql_native_password"

    return-object v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    return-void
.end method

.method public isReusable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Buffer;",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/Buffer;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 78
    iget-object v3, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v5}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p1, v5}, Lcom/mysql/jdbc/Security;->scramble411(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    new-instance v4, Lcom/mysql/jdbc/Buffer;

    new-array p1, v0, [B

    invoke-direct {v4, p1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 85
    :goto_1
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 90
    :catch_0
    new-array p1, v1, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {p2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "MysqlNativePasswordPlugin.1"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1000"

    invoke-static {p1, p2, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 88
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "MysqlIO.91"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "MysqlIO.92"

    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1000"

    invoke-static {p1, p2, v2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public requiresConfidentiality()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/MysqlNativePasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method
