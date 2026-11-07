.class public Lcom/mysql/jdbc/ExportControlled;
.super Ljava/lang/Object;
.source "ExportControlled.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;,
        Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;
    }
.end annotation


# static fields
.field private static final SQL_STATE_BAD_SSL_PARAMS:Ljava/lang/String; = "08000"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeRSAPublicKey(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/security/interfaces/RSAPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "\n"

    .line 473
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "-----END PUBLIC KEY-----"

    .line 474
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 477
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v0, v1}, Lcom/mysql/jdbc/util/Base64Decoder;->decode([BII)[B

    move-result-object p0

    .line 479
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string p0, "RSA"

    .line 480
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 481
    invoke-virtual {p0, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0

    check-cast p0, Ljava/security/interfaces/RSAPublicKey;

    return-object p0

    .line 470
    :cond_0
    new-instance p0, Ljava/sql/SQLException;

    const-string v0, "key parameter is null"

    invoke-direct {p0, v0}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "Unable to decode public key"

    const-string v1, "S1009"

    .line 483
    invoke-static {v0, v1, p0, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method protected static enabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static encryptWithRSAPublicKey([BLjava/security/interfaces/RSAPublicKey;Lcom/mysql/jdbc/ExceptionInterceptor;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    :try_start_0
    const-string v0, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    .line 489
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x1

    .line 490
    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 491
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 493
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1009"

    invoke-static {p1, v0, p0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method private static getSSLSocketFactoryDefaultOrConfigured(Lcom/mysql/jdbc/MysqlIO;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v0}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStoreUrl()Ljava/lang/String;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v1

    .line 296
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getClientCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v2

    .line 297
    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v3}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStoreUrl()Ljava/lang/String;

    move-result-object v3

    .line 298
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStorePassword()Ljava/lang/String;

    move-result-object v4

    .line 299
    iget-object v5, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->getTrustCertificateKeyStoreType()Ljava/lang/String;

    move-result-object v5

    .line 301
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "javax.net.ssl.keyStore"

    .line 302
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "javax.net.ssl.keyStorePassword"

    .line 303
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "javax.net.ssl.keyStoreType"

    .line 304
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 305
    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v2, "JKS"

    .line 309
    :cond_0
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 311
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 313
    :catch_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 318
    :cond_1
    :goto_0
    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v3, "javax.net.ssl.trustStore"

    .line 319
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "javax.net.ssl.trustStorePassword"

    .line 320
    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "javax.net.ssl.trustStoreType"

    .line 321
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 322
    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "JKS"

    .line 326
    :cond_2
    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 328
    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 330
    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    :cond_3
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 342
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v8

    .line 343
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v9
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1e

    .line 350
    invoke-static {v0}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x0

    if-nez v10, :cond_7

    .line 353
    :try_start_3
    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 354
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v10

    .line 355
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    if-nez v1, :cond_4

    .line 356
    new-array v1, v7, [C

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 357
    :goto_2
    invoke-virtual {v12}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 358
    :try_start_4
    invoke-virtual {v10, v12, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 359
    invoke-virtual {v9, v10, v1}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 360
    invoke-virtual {v9}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1
    :try_end_4
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/security/KeyStoreException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v11, v12

    goto/16 :goto_a

    :catch_2
    move-exception v1

    move-object v11, v12

    goto :goto_4

    :catch_3
    move-object v11, v12

    goto :goto_5

    :catch_4
    move-object v11, v12

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v11, v12

    goto/16 :goto_7

    :catch_6
    move-exception v0

    move-object v11, v12

    goto/16 :goto_8

    :catch_7
    move-object v11, v12

    goto/16 :goto_9

    :cond_5
    move-object v1, v11

    move-object v12, v1

    :goto_3
    if-eqz v12, :cond_8

    .line 386
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    goto/16 :goto_b

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :catch_8
    move-exception v1

    .line 378
    :goto_4
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v2, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    .line 380
    invoke-virtual {p0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 382
    throw p0

    .line 375
    :catch_9
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not appear to be a valid URL."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 372
    :catch_a
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load client"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " keystore from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catch_b
    move-exception v0

    .line 369
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create KeyStore instance ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catch_c
    move-exception v0

    .line 366
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported keystore algorithm ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catch_d
    :goto_9
    const-string v0, "Could not recover keys from client keystore.  Check password?"

    const-string v1, "08000"

    .line 363
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_a
    if-eqz v11, :cond_6

    .line 386
    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    .line 384
    :catch_e
    :cond_6
    throw p0

    :cond_7
    move-object v1, v11

    .line 398
    :catch_f
    :cond_8
    :goto_b
    :try_start_8
    invoke-static {v3}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {v5}, Lcom/mysql/jdbc/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 399
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1c
    .catch Ljava/security/KeyStoreException; {:try_start_8 .. :try_end_8} :catch_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_19
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_18
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v4, :cond_9

    .line 400
    :try_start_9
    new-array v2, v7, [C

    goto :goto_c

    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 402
    :goto_c
    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 403
    invoke-virtual {v4, v0, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    goto :goto_d

    :cond_a
    move-object v0, v11

    move-object v4, v0

    .line 406
    :goto_d
    invoke-virtual {v8, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 409
    invoke-virtual {v8}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 410
    iget-object v4, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v4}, Lcom/mysql/jdbc/MySQLConnection;->getVerifyServerCertificate()Z

    move-result v4

    .line 412
    array-length v8, v2

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v8, :cond_c

    aget-object v10, v2, v9

    .line 414
    instance-of v12, v10, Ljavax/net/ssl/X509TrustManager;

    if-eqz v12, :cond_b

    new-instance v12, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;

    check-cast v10, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v12, v10, v4}, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;Z)V

    move-object v10, v12

    :cond_b
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_17
    .catch Ljava/security/KeyStoreException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_15
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_13
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_c
    if-eqz v0, :cond_d

    .line 437
    :try_start_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    .line 445
    :catch_10
    :cond_d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 446
    new-instance v0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;

    invoke-direct {v0}, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;-><init>()V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :try_start_b
    const-string v0, "TLS"

    .line 450
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 451
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljavax/net/ssl/TrustManager;

    invoke-virtual {v0, v1, v2, v11}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 452
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/security/KeyManagementException; {:try_start_b .. :try_end_b} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyManagementException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/KeyManagementException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    const-string v1, "08000"

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 455
    :catch_12
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    const-string v0, "TLS is not a valid SSL protocol."

    const-string v1, "08000"

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catchall_2
    move-exception p0

    move-object v11, v0

    goto/16 :goto_14

    :catch_13
    move-exception v1

    move-object v11, v0

    goto :goto_f

    :catch_14
    move-object v11, v0

    goto :goto_10

    :catch_15
    move-exception v1

    move-object v11, v0

    goto :goto_11

    :catch_16
    move-exception v1

    move-object v11, v0

    goto/16 :goto_12

    :catch_17
    move-object v11, v0

    goto/16 :goto_13

    :catchall_3
    move-exception p0

    goto/16 :goto_14

    :catch_18
    move-exception v1

    .line 430
    :goto_f
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v2, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    .line 432
    invoke-virtual {p0, v1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 433
    throw p0

    .line 427
    :catch_19
    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not load trust"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " keystore from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catch_1a
    move-exception v1

    .line 424
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported keystore algorithm ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catch_1b
    move-exception v1

    .line 421
    :goto_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create KeyStore instance ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 418
    :catch_1c
    :goto_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not appear to be a valid URL."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "08000"

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_14
    if-eqz v11, :cond_f

    .line 437
    :try_start_d
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1d

    .line 435
    :catch_1d
    :cond_f
    throw p0

    .line 345
    :catch_1e
    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p0

    const-string v0, "Default algorithm definitions for TrustManager and/or KeyManager are invalid.  Check java security properties file."

    const-string v1, "08000"

    invoke-static {v0, v1, v7, v7, p0}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;IZLcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static isSSLEstablished(Lcom/mysql/jdbc/MysqlIO;)Z
    .locals 1

    .line 463
    const-class v0, Ljavax/net/ssl/SSLSocket;

    iget-object p0, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method protected static transformSocketToSSLSocket(Lcom/mysql/jdbc/MysqlIO;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;

    invoke-static {p0}, Lcom/mysql/jdbc/ExportControlled;->getSSLSocketFactoryDefaultOrConfigured(Lcom/mysql/jdbc/MysqlIO;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-direct {v0, v1, v2, v3}, Lcom/mysql/jdbc/ExportControlled$StandardSSLSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lcom/mysql/jdbc/SocketFactory;Ljava/net/Socket;)V

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->host:Ljava/lang/String;

    iget v2, p0, Lcom/mysql/jdbc/MysqlIO;->port:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/mysql/jdbc/SocketFactory;->connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 106
    invoke-virtual {p0, v5, v4, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getServerVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mysql/jdbc/Util;->isEnterpriseEdition(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "TLSv1.2"

    const-string v8, "TLSv1.1"

    const-string v9, "TLSv1"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_0
    const-string v7, "TLSv1.1"

    const-string v8, "TLSv1"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    :goto_0
    array-length v8, v7

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 108
    invoke-interface {v2, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 109
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 112
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    new-array v7, v6, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getEnabledSSLCipherSuites()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    iget-object v2, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v4, "\\s*,\\s*"

    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_d

    aget-object v7, v1, v5

    .line 125
    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 126
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    const/16 v1, 0x2d

    .line 133
    invoke-virtual {p0, v5, v5, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    const/16 v7, 0x8

    if-eqz v1, :cond_6

    invoke-virtual {p0, v5, v4, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_6
    const/16 v1, 0x1a

    invoke-virtual {p0, v5, v4, v1}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    const/4 v8, 0x7

    if-eqz v1, :cond_7

    invoke-virtual {p0, v5, v8, v6}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    invoke-virtual {p0, v5, v8, v4}, Lcom/mysql/jdbc/MysqlIO;->versionMeetsMinimum(III)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 139
    :cond_8
    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v1

    if-ge v1, v7, :cond_a

    goto :goto_4

    .line 142
    :cond_9
    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v1

    if-lt v1, v7, :cond_a

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_d

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_d

    aget-object v7, v1, v5

    if-eqz v2, :cond_b

    const-string v8, "_DHE_"

    .line 151
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-gt v8, v9, :cond_c

    const-string v8, "_DH_"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gt v8, v9, :cond_c

    .line 152
    :cond_b
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_d
    if-eqz v3, :cond_e

    .line 160
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    new-array v2, v6, [Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 163
    :cond_e
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    check-cast v1, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 165
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getUseUnbufferedInput()Z

    move-result v1

    const/16 v2, 0x4000

    if-eqz v1, :cond_f

    .line 166
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    goto :goto_6

    .line 168
    :cond_f
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlInput:Ljava/io/InputStream;

    .line 171
    :goto_6
    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlConnection:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    .line 173
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->mysqlOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 175
    iput-object v0, p0, Lcom/mysql/jdbc/MysqlIO;->socketFactory:Lcom/mysql/jdbc/SocketFactory;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    .line 178
    iget-object v1, p0, Lcom/mysql/jdbc/MysqlIO;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getLastPacketSentTimeMs()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getLastPacketReceivedTimeMs()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/mysql/jdbc/MysqlIO;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/mysql/jdbc/SQLError;->createCommunicationsException(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method
