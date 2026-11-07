.class public Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;
.super Ljava/lang/Object;
.source "MysqlOldPasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# instance fields
.field private connection:Lcom/mysql/jdbc/Connection;

.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    const-string v0, "mysql_old_password"

    return-object v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

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

    .line 69
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 73
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->password:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0x8

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v4}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/mysql/jdbc/Util;->newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 81
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 82
    invoke-virtual {v3}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result p1

    .line 84
    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    add-int/2addr p1, v1

    .line 86
    invoke-virtual {v3, p1}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 87
    invoke-virtual {v3, v2}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    new-instance v3, Lcom/mysql/jdbc/Buffer;

    new-array p1, v2, [B

    invoke-direct {v3, p1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 89
    :goto_1
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public requiresConfidentiality()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/MysqlOldPasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method
