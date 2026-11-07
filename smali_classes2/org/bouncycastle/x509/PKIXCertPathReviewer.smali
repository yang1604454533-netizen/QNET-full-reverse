.class public Lorg/bouncycastle/x509/PKIXCertPathReviewer;
.super Lorg/bouncycastle/x509/CertPathValidatorUtilities;


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DIST_POINTS:Ljava/lang/String;

.field private static final QC_STATEMENT:Ljava/lang/String;

.field private static final RESOURCE_NAME:Ljava/lang/String; = "org.bouncycastle.x509.CertPathReviewerMessages"


# instance fields
.field protected certPath:Ljava/security/cert/CertPath;

.field protected certs:Ljava/util/List;

.field protected errors:[Ljava/util/List;

.field private initialized:Z

.field protected n:I

.field protected notifications:[Ljava/util/List;

.field protected pkixParams:Ljava/security/cert/PKIXParameters;

.field protected policyTree:Ljava/security/cert/PolicyNode;

.field protected subjectPublicKey:Ljava/security/PublicKey;

.field protected trustAnchor:Ljava/security/cert/TrustAnchor;

.field protected validDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    return-void
.end method

.method private IPtoString([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private checkCriticalExtensions()V
    .locals 13

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v6, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    :goto_1
    if-ltz v1, :cond_5

    iget-object v6, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-direct {p0, v6, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processQcStatements(Ljava/security/cert/X509Certificate;I)Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v9, :cond_3

    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v9, v6, v7}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.criticalExtensionError"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {v6, v7, v8, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v6, v0, v3, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_3
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v9, "CertPathReviewer.unknownCriticalExt"

    new-array v10, v4, [Ljava/lang/Object;

    new-instance v11, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v11, v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    aput-object v11, v10, v5

    invoke-direct {v7, v8, v9, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v7, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_3

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.certPathCheckerError"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    aput-object v0, v3, v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-direct {v1, v6, v7, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :cond_5
    return-void
.end method

.method private checkNameConstraints()V
    .locals 9

    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-lez v1, :cond_3

    iget v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-static {v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    invoke-static {v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    new-instance v6, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_6

    :try_start_2
    invoke-virtual {v0, v6}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_6

    :try_start_3
    invoke-virtual {v0, v6}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_6

    :try_start_4
    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_6

    if-eqz v4, :cond_0

    const/4 v6, 0x0

    :goto_1
    :try_start_5
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v7
    :try_end_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_6

    :try_start_6
    invoke-virtual {v0, v7}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_6
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.notPermittedEmail"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v8, v7}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v4, v6, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.subjAltNameExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_2
    move-exception v0

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.excludedDN"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v6, v7, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.notPermittedDN"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v6, v7, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_4
    move-exception v0

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.ncSubjectNameError"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v8, v4}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v2, v5

    invoke-direct {v3, v6, v7, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v3, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_7
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_0
    :try_start_8
    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_6

    if-eqz v3, :cond_2

    :try_start_9
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_2
    array-length v4, v3

    if-eq v5, v4, :cond_2

    aget-object v4, v3, v5

    invoke-virtual {v0, v4}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.ncExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_9
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_6

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :cond_3
    return-void
.end method

.method private checkPathLength()V
    .locals 9

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v0

    const/4 v0, 0x0

    :goto_0
    if-lez v1, :cond_3

    iget v5, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    iget-object v5, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-static {v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_1

    if-gtz v4, :cond_0

    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.pathLengthExtended"

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    :cond_0
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :try_start_0
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v5, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.processLengthConstError"

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-ge v5, v4, :cond_2

    move v4, v5

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.totalPathLength"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-direct {v1, v4, v5, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    return-void
.end method

.method private checkPolicy()V
    .locals 31

    move-object/from16 v1, p0

    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v0

    iget v2, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    const-string v5, "2.5.29.32.0"

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v12, "2.5.29.32.0"

    const/4 v13, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    aget-object v6, v2, v4

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    iget v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/2addr v6, v3

    :goto_1
    iget-object v7, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v7}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_2

    :cond_2
    iget v7, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/2addr v7, v3

    :goto_2
    iget-object v8, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    iget v8, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/2addr v8, v3

    :goto_3
    :try_start_0
    iget-object v9, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    move v11, v7

    move v12, v8

    const/4 v8, 0x0

    move-object v7, v5

    const/4 v5, 0x0

    :goto_4
    if-ltz v9, :cond_2b

    iget v5, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int/2addr v5, v9

    iget-object v13, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_9

    :try_start_1
    sget-object v13, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v15, v13}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v13

    move-object/from16 v21, v13

    check-cast v21, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_9

    if-eqz v21, :cond_17

    if-eqz v7, :cond_17

    :try_start_2
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v13

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    :goto_5
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "2.5.29.32.0"

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_9

    if-nez v3, :cond_4

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v3
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_9

    :try_start_4
    invoke-static {v5, v2, v10, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v5, v2, v10, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyQualifierError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_4
    :goto_6
    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    if-eqz v8, :cond_8

    const-string v3, "2.5.29.32.0"

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_8

    :cond_6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    :goto_8
    move-object v4, v14

    :cond_9
    if-gtz v11, :cond_b

    iget v3, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge v5, v3, :cond_a

    invoke-static {v15}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_9

    :cond_a
    move-object/from16 v23, v4

    move-object/from16 v27, v15

    goto/16 :goto_f

    :cond_b
    :goto_9
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v8

    const-string v10, "2.5.29.32.0"

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_4
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_9

    if-eqz v10, :cond_c

    :try_start_5
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v3
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_9

    add-int/lit8 v8, v5, -0x1

    :try_start_6
    aget-object v8, v2, v8

    const/4 v10, 0x0

    :goto_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_a

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v14}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v23, v4

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_d

    check-cast v13, Ljava/lang/String;

    move-object v4, v13

    goto :goto_c

    :cond_d
    instance-of v4, v13, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_11

    check-cast v13, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_c
    invoke-virtual {v14}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v13

    const/16 v16, 0x0

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v24, v8

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const/16 v16, 0x1

    :cond_e
    move-object/from16 v8, v24

    goto :goto_d

    :cond_f
    move-object/from16 v24, v8

    if-nez v16, :cond_10

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v8, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v13, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v25, v13

    move-object/from16 v26, v14

    move-object/from16 v14, v16

    move-object/from16 v27, v15

    move v15, v5

    move-object/from16 v16, v8

    move-object/from16 v17, v26

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-direct/range {v13 .. v20}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v4, v25

    move-object/from16 v13, v26

    invoke-virtual {v13, v4}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    aget-object v8, v2, v5

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_10
    move-object v13, v14

    move-object/from16 v27, v15

    :goto_e
    move-object v14, v13

    move-object/from16 v4, v23

    move-object/from16 v8, v24

    move-object/from16 v15, v27

    goto/16 :goto_b

    :cond_11
    move-object/from16 v4, v23

    goto/16 :goto_b

    :cond_12
    move-object/from16 v23, v4

    move-object/from16 v24, v8

    move-object/from16 v27, v15

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_a

    :catch_1
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyQualifierError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :goto_f
    add-int/lit8 v3, v5, -0x1

    :goto_10
    if-ltz v3, :cond_15

    aget-object v4, v2, v3

    move-object v8, v7

    const/4 v7, 0x0

    :goto_11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v7, v10, :cond_14

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v13

    if-nez v13, :cond_13

    invoke-static {v8, v2, v10}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v8

    if-nez v8, :cond_13

    goto :goto_12

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_14
    :goto_12
    move-object v7, v8

    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_15
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_16

    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    aget-object v4, v2, v5

    const/4 v8, 0x0

    :goto_13
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_16

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v10, v3}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_16
    move-object v10, v7

    move-object/from16 v8, v23

    goto :goto_14

    :cond_17
    move-object/from16 v27, v15

    move-object v10, v7

    :goto_14
    if-nez v21, :cond_18

    const/4 v10, 0x0

    :cond_18
    if-gtz v6, :cond_1a

    if-eqz v10, :cond_19

    goto :goto_15

    :cond_19
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noValidPolicyTree"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :cond_1a
    :goto_15
    iget v3, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I
    :try_end_6
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_9

    if-eq v5, v3, :cond_2a

    :try_start_7
    sget-object v3, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v4, v27

    invoke-static {v4, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_9

    if-eqz v3, :cond_1d

    :try_start_8
    move-object v7, v3

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v13, 0x0

    :goto_16
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v14

    if-ge v13, v14, :cond_1d

    invoke-virtual {v7, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v16

    check-cast v16, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v15, "2.5.29.32.0"

    move-object/from16 v28, v7

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c

    const-string v7, "2.5.29.32.0"

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v7, v28

    goto :goto_16

    :cond_1b
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.invalidPolicyMapping"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_1c
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.invalidPolicyMapping"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_1d
    if-eqz v3, :cond_22

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x0

    :goto_17
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v15

    if-ge v14, v15, :cond_1f

    invoke-virtual {v3, v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v29, v3

    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v16

    check-cast v16, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v8

    const/4 v8, 0x1

    invoke-virtual {v15, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1e

    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v15, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v3, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_1e
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_18
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v29

    move-object/from16 v8, v30

    goto :goto_17

    :cond_1f
    move-object/from16 v30, v8

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_8
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_9

    if-lez v12, :cond_21

    :try_start_9
    invoke-static {v5, v2, v8, v7, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_9
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_19

    :catch_2
    move-exception v0

    move-object v2, v0

    :try_start_a
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyQualifierError"

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v0, v2, v4, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_3
    move-exception v0

    move-object v2, v0

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyExtError"

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v0, v2, v4, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_21
    if-gtz v12, :cond_20

    invoke-static {v5, v2, v8, v10}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    goto :goto_19

    :cond_22
    move-object/from16 v30, v8

    :cond_23
    invoke-static {v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3
    :try_end_a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_9

    if-nez v3, :cond_26

    if-eqz v6, :cond_24

    add-int/lit8 v6, v6, -0x1

    :cond_24
    if-eqz v12, :cond_25

    add-int/lit8 v12, v12, -0x1

    :cond_25
    if-eqz v11, :cond_26

    add-int/lit8 v11, v11, -0x1

    :cond_26
    :try_start_b
    sget-object v3, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_28

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    :cond_27
    :goto_1a
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    goto :goto_1a

    :pswitch_0
    const/4 v7, 0x0

    invoke-static {v5, v7}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-ge v5, v12, :cond_27

    move v12, v5

    goto :goto_1a

    :pswitch_1
    const/4 v7, 0x0

    invoke-static {v5, v7}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5
    :try_end_b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_b} :catch_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_9

    if-ge v5, v6, :cond_27

    move v6, v5

    goto :goto_1a

    :cond_28
    :try_start_c
    sget-object v3, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v4, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3
    :try_end_c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_c} :catch_4
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_9

    if-ge v3, v11, :cond_29

    goto :goto_1b

    :cond_29
    move v3, v11

    :goto_1b
    move v11, v3

    goto :goto_1c

    :catch_4
    :try_start_d
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.policyInhibitExtError"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_5
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.policyConstExtError"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :catch_6
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyMapExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2a
    move-object/from16 v30, v8

    move-object/from16 v4, v27

    :goto_1c
    move-object v7, v10

    add-int/lit8 v9, v9, -0x1

    move-object v5, v4

    move-object/from16 v8, v30

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_4

    :catch_7
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.policyExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v0, v4, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_2b
    invoke-static {v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v3
    :try_end_d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_9

    if-nez v3, :cond_2c

    if-lez v6, :cond_2c

    add-int/lit8 v6, v6, -0x1

    :cond_2c
    :try_start_e
    sget-object v3, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v5, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    move v4, v6

    :cond_2d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    if-eqz v6, :cond_2e

    const/4 v15, 0x0

    goto :goto_1d

    :cond_2e
    const/4 v15, 0x0

    invoke-static {v5, v15}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5
    :try_end_e
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_9

    if-nez v5, :cond_2d

    const/4 v4, 0x0

    goto :goto_1d

    :cond_2f
    const/4 v15, 0x0

    goto :goto_1e

    :cond_30
    const/4 v15, 0x0

    move v4, v6

    :goto_1e
    if-nez v7, :cond_32

    :try_start_f
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v10, 0x0

    goto/16 :goto_2b

    :cond_31
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.explicitPolicy"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_32
    invoke-static {v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_1f
    array-length v5, v2

    if-ge v3, v5, :cond_35

    aget-object v5, v2, v3

    const/4 v6, 0x0

    :goto_20
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_34

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v9

    :goto_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_33

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_33
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_35
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    goto :goto_22

    :cond_36
    if-eqz v7, :cond_3a

    iget v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_23
    if-ltz v0, :cond_3a

    aget-object v3, v2, v0

    const/4 v5, 0x0

    :goto_24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_38

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_37

    invoke-static {v7, v2, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v7

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_23

    :cond_39
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.explicitPolicy"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2

    :cond_3a
    move-object v10, v7

    goto/16 :goto_2b

    :cond_3b
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v5, 0x0

    :goto_25
    array-length v6, v2

    if-ge v5, v6, :cond_3f

    aget-object v6, v2, v5

    const/4 v8, 0x0

    :goto_26
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3e

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v10, "2.5.29.32.0"

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v9

    :cond_3c
    :goto_27
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    const-string v11, "2.5.29.32.0"

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3c

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_3d
    add-int/lit8 v8, v8, 0x1

    goto :goto_26

    :cond_3e
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_3f
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    invoke-static {v7, v2, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    move-object v7, v5

    goto :goto_28

    :cond_41
    if-eqz v7, :cond_3a

    iget v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_29
    if-ltz v0, :cond_3a

    aget-object v3, v2, v0

    const/4 v5, 0x0

    :goto_2a
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_43

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_42

    invoke-static {v7, v2, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v7

    :cond_42
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_29

    :goto_2b
    if-gtz v4, :cond_45

    if-eqz v10, :cond_44

    goto :goto_2c

    :cond_44
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.invalidPolicy"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_8
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.policyConstExtError"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v3, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v3, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v2
    :try_end_f
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_f .. :try_end_f} :catch_9

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :cond_45
    :goto_2c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSignatures()V
    .locals 20

    move-object/from16 v10, p0

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certPathValidDate"

    const/4 v11, 0x2

    new-array v3, v11, [Ljava/lang/Object;

    new-instance v4, Lorg/bouncycastle/i18n/filter/TrustedInput;

    iget-object v5, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-direct {v4, v5}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x0

    aput-object v4, v3, v12

    new-instance v4, Lorg/bouncycastle/i18n/filter/TrustedInput;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-direct {v4, v5}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x1

    aput-object v4, v3, v13

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    :try_start_0
    iget-object v0, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    iget-object v1, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iget-object v1, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, v13, :cond_0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.conflictingTrustAnchors"

    new-array v5, v11, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v12

    new-instance v1, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v1, v5, v13

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noTrustAnchorFound"

    new-array v4, v11, [Ljava/lang/Object;

    new-instance v5, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v12

    iget-object v0, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v13

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_4

    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2
    :try_end_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    iget-object v3, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v3}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_0
    :try_start_3
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustButInvalidCert"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    :try_end_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v1, 0x0

    :goto_2
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.unknown"

    new-array v5, v11, [Ljava/lang/Object;

    new-instance v6, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v12

    new-instance v6, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v6, v0}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v13

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto :goto_4

    :catch_4
    move-exception v0

    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    :catch_5
    :goto_4
    move-object v15, v1

    const/16 v16, 0x5

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    goto :goto_5

    :cond_3
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_5

    :catch_6
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustDNInvalid"

    new-array v4, v13, [Ljava/lang/Object;

    new-instance v5, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v12

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    const/4 v1, 0x0

    :goto_5
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_5

    aget-boolean v0, v0, v16

    if-nez v0, :cond_5

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.trustKeyUsage"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto :goto_6

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_6
    if-eqz v15, :cond_7

    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    goto :goto_7

    :cond_6
    invoke-virtual {v15}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    :goto_7
    :try_start_5
    invoke-static {v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_8

    :catch_7
    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.trustPubKeyError"

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_8
    iget-object v3, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v13

    move-object v5, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    :goto_9
    if-ltz v9, :cond_15

    iget v0, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v6, v0, v9

    iget-object v0, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x3

    if-eqz v8, :cond_8

    :try_start_6
    iget-object v0, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v8, v0}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_b

    :catch_8
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.signatureNotVerified"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v12

    aput-object v0, v1, v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    invoke-direct {v2, v3, v14, v1}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    invoke-virtual {v10, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_b

    :cond_8
    invoke-static {v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_9

    :try_start_7
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v2, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_9

    goto/16 :goto_b

    :catch_9
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.signatureNotVerified"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v12

    aput-object v0, v1, v13

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    invoke-direct {v2, v3, v14, v1}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_9
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.NoIssuerPublicKey"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_a

    :try_start_8
    invoke-static {v2}, Lorg/bouncycastle/x509/extension/X509ExtensionUtil;->fromExtensionValue([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    aget-object v3, v3, v12

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    if-eqz v2, :cond_a

    const/4 v14, 0x7

    new-array v14, v14, [Ljava/lang/Object;

    new-instance v1, Lorg/bouncycastle/i18n/LocaleString;

    const-string v11, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v13, "missingIssuer"

    invoke-direct {v1, v11, v13}, Lorg/bouncycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v14, v12

    const-string v1, " \""

    const/4 v11, 0x1

    aput-object v1, v14, v11

    const/4 v1, 0x2

    aput-object v3, v14, v1

    const-string v1, "\" "

    const/4 v3, 0x3

    aput-object v1, v14, v3

    const/4 v1, 0x4

    new-instance v3, Lorg/bouncycastle/i18n/LocaleString;

    const-string v11, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v13, "missingSerial"

    invoke-direct {v3, v11, v13}, Lorg/bouncycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v14, v1

    const-string v1, " "

    aput-object v1, v14, v16

    const/4 v1, 0x6

    aput-object v2, v14, v1

    invoke-virtual {v0, v14}, Lorg/bouncycastle/i18n/ErrorBundle;->setExtraArguments([Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    :catch_a
    :cond_a
    invoke-virtual {v10, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :goto_b
    :try_start_9
    iget-object v0, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_9
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_9 .. :try_end_9} :catch_b

    goto :goto_d

    :catch_b
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certificateExpired"

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/Object;

    new-instance v3, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v3, v13}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v3, v11, v12

    invoke-direct {v0, v1, v2, v11}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :catch_c
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certificateNotYetValid"

    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/Object;

    new-instance v3, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v3, v13}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v3, v11, v12

    invoke-direct {v0, v1, v2, v11}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_c
    invoke-virtual {v10, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :goto_d
    iget-object v0, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_a
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_d

    move-object v14, v0

    goto :goto_f

    :cond_b
    :goto_e
    const/4 v14, 0x0

    goto :goto_f

    :catch_d
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.crlDistPtExtError"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_e

    :goto_f
    :try_start_b
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;

    move-result-object v0
    :try_end_b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_b} :catch_e

    goto :goto_10

    :catch_e
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.crlAuthInfoAccError"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :cond_c
    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v10, v14}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;

    move-result-object v11

    invoke-virtual {v10, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v11}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.crlDistPoint"

    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/Object;

    new-instance v14, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    move/from16 v18, v6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v14, v6}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v14, v12, v6

    invoke-direct {v2, v3, v13, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    move/from16 v6, v18

    const/4 v12, 0x0

    goto :goto_11

    :cond_d
    move/from16 v18, v6

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.ocspLocation"

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    new-instance v12, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-direct {v2, v3, v6, v13}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_12

    :cond_e
    :try_start_c
    iget-object v2, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    iget-object v6, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;
    :try_end_c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_10

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v12, v4

    move-object v4, v6

    move/from16 v13, v18

    move-object v6, v8

    move-object v14, v7

    move-object v7, v11

    move-object v11, v8

    move-object v8, v0

    move/from16 v19, v9

    :try_start_d
    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_f

    move/from16 v3, v19

    goto :goto_14

    :catch_f
    move-exception v0

    goto :goto_13

    :catch_10
    move-exception v0

    move-object v12, v4

    move-object v14, v7

    move-object v11, v8

    move/from16 v19, v9

    move/from16 v13, v18

    :goto_13
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v0

    move/from16 v3, v19

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_14

    :cond_f
    move-object v12, v4

    move v13, v6

    move-object v14, v7

    move-object v11, v8

    move v3, v9

    :goto_14
    if-eqz v14, :cond_10

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.certWrongIssuer"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v14}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-direct {v0, v1, v2, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_15

    :cond_10
    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_15
    iget v0, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-eq v13, v0, :cond_14

    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    if-ne v0, v8, :cond_11

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.noCACert"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :cond_11
    :try_start_e
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v12, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.noCACert"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_17

    :cond_12
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.noBasicConstraints"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_e .. :try_end_e} :catch_11

    goto :goto_16

    :catch_11
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.errorProcesingBC"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :cond_13
    :goto_17
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_14

    aget-boolean v0, v0, v16

    if-nez v0, :cond_14

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.noCertSign"

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :cond_14
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    :try_start_f
    iget-object v1, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-static {v1, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v1
    :try_end_f
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f .. :try_end_f} :catch_12

    :try_start_10
    invoke-static {v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_10
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_10 .. :try_end_10} :catch_13

    goto :goto_18

    :catch_12
    move-object v1, v11

    :catch_13
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.pubKeyError"

    invoke-direct {v2, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :goto_18
    add-int/lit8 v9, v3, -0x1

    move-object v7, v0

    move-object v8, v1

    move-object v5, v12

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto/16 :goto_9

    :cond_15
    move-object v11, v8

    iput-object v15, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object v11, v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-void
.end method

.method private getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_2

    const-string v3, "X.509"

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    move-object p1, v2

    :goto_1
    return-object p1

    :cond_2
    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v5, p1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v4, v1

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const/4 p1, 0x2

    aput-object v2, v4, p1

    const/4 p1, 0x3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p1

    const-string p1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v0, "CertPathReviewer.loadCrlDistPointError"

    invoke-direct {v3, p1, v0, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {p1, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw p1
.end method

.method private processQcStatements(Ljava/security/cert/X509Certificate;I)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_5

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    move-result-object v6

    sget-object v8, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcCompliance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.QcEuCompliance"

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v6, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_3

    :cond_0
    sget-object v8, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_qcs_pkixQCSyntax_v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_3

    :cond_1
    sget-object v8, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcSSCD:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.QcSSCD"

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v8, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_LimiteValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getAmount()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getExponent()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    mul-double v10, v10, v12

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->isAlphabetic()Z

    move-result v8

    const/4 v12, 0x3

    if-eqz v8, :cond_3

    new-instance v8, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v13, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.QcLimitValueAlpha"

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v15

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getAlphabetic()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v2

    new-instance v15, Lorg/bouncycastle/i18n/filter/TrustedInput;

    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, v10, v11}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v15, v2}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v15, v12, v7

    aput-object v6, v12, v9

    invoke-direct {v8, v13, v14, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v8, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.QcLimitValueNum"

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getNumeric()I

    move-result v14

    invoke-static {v14}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v12, v15

    new-instance v14, Lorg/bouncycastle/i18n/filter/TrustedInput;

    new-instance v15, Ljava/lang/Double;

    invoke-direct {v15, v10, v11}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v14, v15}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v7

    aput-object v6, v12, v9

    invoke-direct {v8, v2, v13, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {v0, v8, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_3

    :cond_4
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v8, "CertPathReviewer.QcUnknownStatement"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    new-instance v10, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v10, v6}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v10, v9, v7

    invoke-direct {v2, v5, v8, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    xor-int/lit8 v1, v5, 0x1

    return v1

    :catch_0
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.QcStatementExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    .locals 1

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    aget-object p2, v0, p2

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method protected checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move/from16 v5, p7

    new-instance v0, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    :try_start_0
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d

    invoke-virtual {v0, v3}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    const/4 v6, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_1
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/bouncycastle/x509/PKIXCRLUtil;

    invoke-virtual {v10, v0, v2}, Lorg/bouncycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/bouncycastle/x509/PKIXCRLUtil;

    new-instance v12, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v12}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-virtual {v10, v12, v2}, Lorg/bouncycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509CRL;

    invoke-virtual {v13}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v10

    new-instance v13, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v14, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v15, "CertPathReviewer.noCrlInCertstore"

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v6, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v7, v8

    new-instance v0, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v0, v12}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v0, v7, v9

    invoke-static {v10}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x2

    aput-object v0, v7, v6

    invoke-direct {v13, v14, v15, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v13, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v10, "CertPathReviewer.crlExtractionError"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v8

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    aput-object v11, v12, v9

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    aput-object v0, v12, v11

    invoke-direct {v6, v7, v10, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v12, "CertPathReviewer.localInvalidCRL"

    const/4 v13, 0x2

    new-array v14, v13, [Ljava/lang/Object;

    new-instance v13, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v14, v8

    new-instance v13, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v13, v15}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v14, v9

    invoke-direct {v7, v10, v12, v14}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v7, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_2

    :cond_3
    :goto_3
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v11, "CertPathReviewer.localValidCRL"

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    new-instance v12, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v13, v8

    new-instance v12, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v13, v9

    invoke-direct {v7, v10, v11, v13}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v7, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    move-object v7, v0

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    move-object v7, v0

    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v0

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    :try_start_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    new-instance v13, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v14, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v15, "CertPathReviewer.onlineCRLWrongCA"

    const/4 v6, 0x3

    new-array v9, v6, [Ljava/lang/Object;

    new-instance v6, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v9, v8

    new-instance v6, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x1

    aput-object v6, v9, v12

    new-instance v6, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v6, v0}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x2

    aput-object v6, v9, v12

    invoke-direct {v13, v14, v15, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v13, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :cond_5
    :goto_6
    const/4 v13, 0x3

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_7

    :cond_7
    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v9, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v13, "CertPathReviewer.onlineInvalidCRL"

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Object;

    new-instance v14, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-direct {v14, v8}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v8, 0x0

    aput-object v14, v15, v8

    new-instance v8, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v12

    invoke-direct {v8, v12}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x1

    aput-object v8, v15, v12

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v8, v0}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x2

    aput-object v8, v15, v12

    invoke-direct {v6, v9, v13, v15}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_6

    :cond_8
    :goto_7
    :try_start_3
    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v9, "CertPathReviewer.onlineValidCRL"
    :try_end_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v13, 0x3

    :try_start_4
    new-array v11, v13, [Ljava/lang/Object;

    new-instance v14, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x0

    aput-object v14, v11, v15

    new-instance v14, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v12}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x1

    aput-object v14, v11, v15

    new-instance v14, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v14, v0}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    const/4 v15, 0x2

    aput-object v14, v11, v15

    invoke-direct {v6, v8, v9, v11}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v6, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_4
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v7, v12

    const/4 v11, 0x1

    goto :goto_b

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    const/4 v13, 0x3

    :goto_8
    const/4 v11, 0x1

    goto :goto_9

    :catch_3
    move-exception v0

    const/4 v13, 0x3

    :goto_9
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    :goto_a
    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_5

    :cond_9
    move v11, v0

    :cond_a
    :goto_b
    if-eqz v7, :cond_1d

    const/4 v0, 0x7

    if-eqz p4, :cond_c

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v6

    if-eqz v6, :cond_c

    array-length v8, v6

    if-lt v8, v0, :cond_b

    const/4 v8, 0x6

    aget-boolean v6, v6, v8

    if-eqz v6, :cond_b

    goto :goto_c

    :cond_b
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noCrlSigningPermited"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :cond_c
    :goto_c
    if-eqz v4, :cond_1c

    :try_start_5
    const-string v6, "BC"

    invoke-virtual {v7, v4, v6}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c

    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v6

    if-eqz v6, :cond_d

    :try_start_6
    sget-object v6, Lorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v6
    :try_end_6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v6, :cond_d

    sget-object v8, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    aget-object v6, v8, v6

    move-object/from16 v16, v6

    goto :goto_d

    :catch_4
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlReasonExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_d
    const/16 v16, 0x0

    :goto_d
    if-nez v16, :cond_e

    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    aget-object v16, v6, v0

    :cond_e
    move-object/from16 v0, v16

    new-instance v6, Lorg/bouncycastle/i18n/LocaleString;

    const-string v8, "org.bouncycastle.x509.CertPathReviewerMessages"

    invoke-direct {v6, v8, v0}, Lorg/bouncycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v9, "CertPathReviewer.revokedAfterValidation"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v12, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v12, v4}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x0

    aput-object v12, v10, v13

    const/4 v12, 0x1

    aput-object v6, v10, v12

    invoke-direct {v0, v8, v9, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    :cond_f
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    new-array v2, v10, [Ljava/lang/Object;

    new-instance v3, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v4}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v13

    aput-object v6, v2, v12

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.certRevoked"

    invoke-direct {v0, v3, v4, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :cond_10
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.notRevoked"

    invoke-direct {v0, v4, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_e
    invoke-virtual {v1, v0, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v0

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.crlUpdateAvailable"

    const/4 v12, 0x1

    new-array v8, v12, [Ljava/lang/Object;

    new-instance v9, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-direct {v0, v4, v6, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_f

    :cond_11
    const/4 v10, 0x0

    const/4 v12, 0x1

    :goto_f
    :try_start_7
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v7, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_b

    :try_start_8
    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-static {v7, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_a

    if-eqz v4, :cond_16

    new-instance v5, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v5}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    :try_start_9
    invoke-static {v7}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    :try_start_a
    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v7, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v4}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_7

    :try_start_b
    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_UTIL:Lorg/bouncycastle/x509/PKIXCRLUtil;

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_b .. :try_end_b} :catch_6

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    :try_start_c
    sget-object v5, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v4, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_c .. :try_end_c} :catch_5

    if-nez v0, :cond_13

    if-nez v4, :cond_12

    goto :goto_10

    :cond_13
    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_10

    :catch_5
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.distrPtExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_14
    const/4 v12, 0x0

    :goto_10
    if-eqz v12, :cond_15

    goto :goto_11

    :cond_15
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noBaseCRL"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_6
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlExtractionError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :catch_7
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlNbrExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :catch_8
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlIssuerException"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_16
    :goto_11
    if-eqz v0, :cond_1d

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    :try_start_d
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2
    :try_end_d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_d} :catch_9

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_12

    :cond_17
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlOnlyUserCert"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :cond_18
    :goto_12
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_13

    :cond_19
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlOnlyCaCert"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :cond_1a
    :goto_13
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_14

    :cond_1b
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlOnlyAttrCert"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_9
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlBCExtError"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :catch_a
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.deltaCrlExtError"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_b
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.distrPtExtError"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_c
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlVerifyFailed"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3

    :cond_1c
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.crlNoIssuerPublicKey"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :cond_1d
    :goto_14
    if-eqz v11, :cond_1e

    return-void

    :cond_1e
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.noValidCrlFound"

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v2

    :catch_d
    move-exception v0

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.crlIssuerException"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v3, v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    return-void
.end method

.method protected doChecks()V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkSignatures()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkNameConstraints()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPathLength()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPolicy()V

    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkCriticalExtensions()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object not initialized. Call init() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;
    .locals 7

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getCertPathSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    return v0
.end method

.method public getErrors(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getErrors()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    return-object v0
.end method

.method public getNotifications(I)Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNotifications()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    return-object v0
.end method

.method protected getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method protected getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    sget-object v2, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_1
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    return-object v0

    :catch_0
    new-instance p1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string p2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v0, "CertPathReviewer.trustAnchorIssuerError"

    invoke-direct {p1, p2, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {p2, p1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw p2
.end method

.method public init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    iget-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    iget-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/security/cert/PKIXParameters;

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    iget-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-static {p1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/x509/CertPathReviewerException;

    new-instance p2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v0, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v1, "CertPathReviewer.emptyCertPath"

    invoke-direct {p2, v0, v1}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "certPath was null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "object is already initialized!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isValidCertPath()Z
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
