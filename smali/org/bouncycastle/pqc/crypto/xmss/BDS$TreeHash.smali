.class final Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/BDS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TreeHash"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private finished:Z

.field private height:I

.field private final initialHeight:I

.field private initialized:Z

.field private nextIndex:I

.field private tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

.field final synthetic this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/BDS;I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialHeight:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialized:Z

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->finished:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/pqc/crypto/xmss/BDS;ILorg/bouncycastle/pqc/crypto/xmss/BDS$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;-><init>(Lorg/bouncycastle/pqc/crypto/xmss/BDS;I)V

    return-void
.end method

.method static synthetic access$1000(Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;)I
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->getHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;)I
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->getIndexLeaf()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->setNode(Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;)V

    return-void
.end method

.method static synthetic access$500(Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    return-object p0
.end method

.method static synthetic access$600(Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialize(I)V

    return-void
.end method

.method static synthetic access$700(Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->update(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)V

    return-void
.end method

.method static synthetic access$800(Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;)Z
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->isFinished()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;)Z
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->isInitialized()Z

    move-result p0

    return p0
.end method

.method private getHeight()I
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->finished:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->height:I

    return v0

    :cond_1
    :goto_0
    const v0, 0x7fffffff

    return v0
.end method

.method private getIndexLeaf()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->nextIndex:I

    return v0
.end method

.method private initialize(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialHeight:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->height:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->nextIndex:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialized:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->finished:Z

    return-void
.end method

.method private isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->finished:Z

    return v0
.end method

.method private isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialized:Z

    return v0
.end method

.method private setNode(Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->height:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->height:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialHeight:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->finished:Z

    :cond_0
    return-void
.end method

.method private update(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)V
    .locals 6

    if-eqz p1, :cond_5

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->finished:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialized:Z

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->nextIndex:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withOTSAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getChainAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withChainAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getHashAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withHashAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getKeyAndMask()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->nextIndex:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->withLTreeAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getLayerAddress()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;->getTreeAddress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->nextIndex:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$100(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getWOTSPlusSecretKey(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->getPublicSeed()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->importKeys([B[B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$100(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlus;->getPublicKey(Lorg/bouncycastle/pqc/crypto/xmss/OTSHashAddress;)Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;

    move-result-object p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->lTree(Lorg/bouncycastle/pqc/crypto/xmss/WOTSPlusPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/xmss/LTreeAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v3

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialHeight:I

    if-eq v0, v3, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v1, v3, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->randomizeHash(Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    move-object v5, v1

    move-object v1, p1

    move-object p1, v5

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v3

    if-ne v0, v3, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$000(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Lorg/bouncycastle/pqc/crypto/xmss/XMSS;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v1, v3, p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSS;->randomizeHash(Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;)Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    move-result-object p1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getValue()[B

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;-><init>(I[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;-><init>()V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getLayerAddress()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withLayerAddress(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeAddress()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeAddress(J)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeHeight()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeHeight(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getTreeIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withTreeIndex(I)Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;->getKeyAndMask()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->withKeyAndMask(I)Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress$Builder;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress$Builder;->build()Lorg/bouncycastle/pqc/crypto/xmss/XMSSAddress;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xmss/HashTreeAddress;

    move-object p1, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->this$0:Lorg/bouncycastle/pqc/crypto/xmss/BDS;

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/xmss/BDS;->access$200(Lorg/bouncycastle/pqc/crypto/xmss/BDS;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->tailNode:Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->initialHeight:I

    if-ne v0, v1, :cond_3

    iput-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->finished:Z

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSNode;->getHeight()I

    move-result p1

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->height:I

    iget p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->nextIndex:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/BDS$TreeHash;->nextIndex:I

    :goto_2
    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "finished or not initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "otsHashAddress == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
