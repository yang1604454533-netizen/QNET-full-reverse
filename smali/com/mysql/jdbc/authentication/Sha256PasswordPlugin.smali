.class public Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;
.super Ljava/lang/Object;
.source "Sha256PasswordPlugin.java"

# interfaces
.implements Lcom/mysql/jdbc/AuthenticationPlugin;


# static fields
.field public static PLUGIN_NAME:Ljava/lang/String; = "sha256_password"


# instance fields
.field private connection:Lcom/mysql/jdbc/Connection;

.field private password:Ljava/lang/String;

.field private publicKeyRequested:Z

.field private publicKeyString:Ljava/lang/String;

.field private seed:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    .line 56
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    return-void
.end method

.method private static encryptPassword(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Connection;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 148
    :try_start_0
    invoke-interface {p2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mysql/jdbc/StringUtils;->getBytesNullTerminated(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    new-array p0, v0, [B

    aput-byte v1, p0, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 154
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length v1, p0

    invoke-static {p0, v0, p1, v1}, Lcom/mysql/jdbc/Security;->xorString([B[B[BI)V

    .line 155
    check-cast p2, Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/mysql/jdbc/ExportControlled;->decodeRSAPublicKey(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object p0

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/mysql/jdbc/ExportControlled;->encryptWithRSAPublicKey([BLjava/security/interfaces/RSAPublicKey;Lcom/mysql/jdbc/ExceptionInterceptor;)[B

    move-result-object p0

    return-object p0

    .line 150
    :catch_0
    new-array p0, v0, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v1

    const-string p1, "Sha256PasswordPlugin.3"

    invoke-static {p1, p0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "S1000"

    invoke-static {p0, p2, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method private static readRSAKey(Lcom/mysql/jdbc/Connection;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/16 v0, 0x800

    .line 162
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 167
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 169
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 175
    invoke-static {v0, v1, v3}, Lcom/mysql/jdbc/StringUtils;->toAsciiString([BII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "Sha256PasswordPlugin.1"

    .line 193
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    const-string v1, "S1000"

    invoke-static {v0, v1, p1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    .line 196
    throw p0

    :catchall_0
    move-exception p1

    move-object v2, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v4

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v0

    .line 181
    :goto_1
    :try_start_3
    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getParanoid()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    const-string p1, "Sha256PasswordPlugin.0"

    .line 182
    new-array v0, v4, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v0, v1

    invoke-static {p1, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1009"

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string v3, "Sha256PasswordPlugin.0"

    .line 185
    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "S1009"

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-static {p1, v1, v0, v3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    if-eqz v2, :cond_2

    .line 191
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    const-string v0, "Sha256PasswordPlugin.1"

    .line 193
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    const-string v1, "S1000"

    invoke-static {v0, v1, p1, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    .line 196
    throw p0

    .line 189
    :cond_2
    :goto_3
    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    return-void
.end method

.method public getProtocolPluginName()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->PLUGIN_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    .line 61
    iget-object p1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {p1}, Lcom/mysql/jdbc/Connection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 63
    iget-object p2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-static {p2, p1}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->readRSAKey(Lcom/mysql/jdbc/Connection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    :cond_0
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

    .line 90
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 92
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    check-cast v0, Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/jdbc/MysqlIO;->isSSLEstablished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :try_start_0
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v3}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mysql/jdbc/StringUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 107
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    .line 108
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->writeByte(B)V

    add-int/2addr v0, v2

    .line 109
    invoke-virtual {p1, v0}, Lcom/mysql/jdbc/Buffer;->setBufLength(I)V

    .line 110
    invoke-virtual {p1, v1}, Lcom/mysql/jdbc/Buffer;->setPosition(I)V

    .line 111
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 103
    :catch_0
    new-array p1, v2, [Ljava/lang/Object;

    iget-object p2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {p2}, Lcom/mysql/jdbc/Connection;->getPasswordCharacterEncoding()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Sha256PasswordPlugin.3"

    invoke-static {p2, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "S1000"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getServerRSAPublicKeyFile()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 116
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    iget-object v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    iget-object v4, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyString:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Connection;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 117
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {v0}, Lcom/mysql/jdbc/Connection;->getAllowPublicKeyRetrieval()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 126
    iget-boolean v0, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->getBufLength()I

    move-result v0

    const/16 v3, 0x14

    if-le v0, v3, :cond_3

    .line 131
    new-instance v0, Lcom/mysql/jdbc/Buffer;

    iget-object v3, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    iget-object v5, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, v4, v5, p1}, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->encryptPassword(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/Connection;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 132
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iput-boolean v1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    goto :goto_1

    .line 136
    :cond_3
    invoke-virtual {p1}, Lcom/mysql/jdbc/Buffer;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->seed:Ljava/lang/String;

    .line 137
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    new-array v0, v2, [B

    aput-byte v2, v0, v1

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 138
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iput-boolean v2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->publicKeyRequested:Z

    goto :goto_1

    :cond_4
    const-string p1, "Sha256PasswordPlugin.2"

    .line 121
    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->connection:Lcom/mysql/jdbc/Connection;

    invoke-interface {p2}, Lcom/mysql/jdbc/Connection;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p2

    const-string v0, "08001"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 94
    :cond_5
    :goto_0
    new-instance p1, Lcom/mysql/jdbc/Buffer;

    new-array v0, v2, [B

    aput-byte v1, v0, v1

    invoke-direct {p1, v0}, Lcom/mysql/jdbc/Buffer;-><init>([B)V

    .line 95
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return v2
.end method

.method public requiresConfidentiality()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAuthenticationParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p2, p0, Lcom/mysql/jdbc/authentication/Sha256PasswordPlugin;->password:Ljava/lang/String;

    return-void
.end method
