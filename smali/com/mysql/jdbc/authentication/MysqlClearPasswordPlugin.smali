.class public Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;
.super Ljava/lang/Object;
.source "MysqlClearPasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# instance fields
.field private connection:Lcom/mysql/jdbc/Connection;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    const-string v0, "mysql_clear_password"

    return-object v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    return-void
.end method

.method public isReusable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nextAuthenticationStep(Lcom/mysql/jdbc/Buffer;Ljava/util/List;)Z
    .locals 5
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

    .line 71
    invoke-interface {p2}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/4 v4, 0x6

    invoke-interface {v1, v2, v3, v4}, Lcom/mysql/jdbc/Connection;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "UTF-8"

    .line 76
    :goto_0
    new-instance v2, Lcom/mysql/jdbc/Buffer;

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v3, ""

    :goto_1
    invoke-static {v3, v1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 83
    invoke-virtual {v2}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v1

    .line 85
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    add-int/2addr v1, v0

    .line 87
    invoke-virtual {v2, v1}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 88
    invoke-virtual {v2, p1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 90
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0

    .line 78
    :catch_0
    new-array p2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, p1

    const-string p1, "MysqlClearPasswordPlugin.1"

    invoke-static {p1, p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "S1000"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method public requiresConfidentiality()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/MysqlClearPasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method
