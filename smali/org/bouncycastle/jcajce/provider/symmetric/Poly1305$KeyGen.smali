.class public Lorg/bouncycastle/jcajce/provider/symmetric/Poly1305$KeyGen;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Poly1305;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyGen"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "Poly1305"

    new-instance v1, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/generators/Poly1305KeyGenerator;-><init>()V

    const/16 v2, 0x100

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseKeyGenerator;-><init>(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherKeyGenerator;)V

    return-void
.end method
