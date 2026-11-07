.class public Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;
.super Ljava/lang/Object;
.source "ExportControlled.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ExportControlled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "X509TrustManagerWrapper"
.end annotation


# instance fields
.field private certFactory:Ljava/security/cert/CertificateFactory;

.field private origTm:Ljavax/net/ssl/X509TrustManager;

.field private validator:Ljava/security/cert/CertPathValidator;

.field private validatorParams:Ljava/security/cert/PKIXParameters;

.field private verifyServerCert:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    .line 228
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;

    .line 229
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    .line 230
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/X509TrustManager;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    const/4 v1, 0x0

    .line 227
    iput-boolean v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    .line 228
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;

    .line 229
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    .line 230
    iput-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    .line 233
    iput-object p1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    .line 234
    iput-boolean p2, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    if-eqz p2, :cond_1

    .line 238
    :try_start_0
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 239
    invoke-interface {p1}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 240
    new-instance v5, Ljava/security/cert/TrustAnchor;

    invoke-direct {v5, v4, v0}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :cond_0
    new-instance p1, Ljava/security/cert/PKIXParameters;

    invoke-direct {p1, p2}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    iput-object p1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    .line 243
    iget-object p1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {p1, v1}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    const-string p1, "PKIX"

    .line 244
    invoke-static {p1}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    const-string p1, "X.509"

    .line 245
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 247
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 260
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 261
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->checkValidity()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    if-eqz v1, :cond_1

    .line 266
    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 267
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 270
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->certFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validator:Ljava/security/cert/CertPathValidator;

    iget-object v2, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->validatorParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1, v0, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v0

    .line 274
    check-cast v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual {v0}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 279
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 277
    new-instance p2, Ljava/security/cert/CertificateException;

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 283
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->verifyServerCert:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ExportControlled$X509TrustManagerWrapper;->origTm:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0
.end method
