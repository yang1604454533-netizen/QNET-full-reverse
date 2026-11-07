.class public Lcom/tencent/qnet/net/StatManager;
.super Ljava/lang/Object;
.source "StatManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/net/StatManager$Info;
    }
.end annotation


# static fields
.field public static Instance:Lcom/tencent/qnet/net/StatManager;


# instance fields
.field public InCount:I

.field public InSize:I

.field public IpInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/tencent/qnet/net/StatManager$Info;",
            ">;"
        }
    .end annotation
.end field

.field public OutCount:I

.field public OutSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/tencent/qnet/net/StatManager;

    invoke-direct {v0}, Lcom/tencent/qnet/net/StatManager;-><init>()V

    sput-object v0, Lcom/tencent/qnet/net/StatManager;->Instance:Lcom/tencent/qnet/net/StatManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/net/StatManager;->IpInfo:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public InPackage(II)V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/tencent/qnet/net/StatManager;->IpInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/net/StatManager$Info;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/tencent/qnet/net/StatManager$Info;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/net/StatManager$Info;-><init>(Lcom/tencent/qnet/net/StatManager;)V

    .line 65
    iget-object v1, p0, Lcom/tencent/qnet/net/StatManager;->IpInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 68
    :cond_0
    iget p1, v0, Lcom/tencent/qnet/net/StatManager$Info;->InCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/tencent/qnet/net/StatManager$Info;->InCount:I

    .line 69
    iget p1, v0, Lcom/tencent/qnet/net/StatManager$Info;->InSize:I

    add-int/2addr p1, p2

    iput p1, v0, Lcom/tencent/qnet/net/StatManager$Info;->InSize:I

    .line 70
    iget p1, p0, Lcom/tencent/qnet/net/StatManager;->InCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/qnet/net/StatManager;->InCount:I

    .line 71
    iget p1, p0, Lcom/tencent/qnet/net/StatManager;->InSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/tencent/qnet/net/StatManager;->InSize:I

    return-void
.end method

.method public OutPackage(II)V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/tencent/qnet/net/StatManager;->IpInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/net/StatManager$Info;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/tencent/qnet/net/StatManager$Info;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/net/StatManager$Info;-><init>(Lcom/tencent/qnet/net/StatManager;)V

    .line 80
    iget-object v1, p0, Lcom/tencent/qnet/net/StatManager;->IpInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 83
    :cond_0
    iget p1, v0, Lcom/tencent/qnet/net/StatManager$Info;->OutCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/tencent/qnet/net/StatManager$Info;->OutCount:I

    .line 84
    iget p1, v0, Lcom/tencent/qnet/net/StatManager$Info;->OutSize:I

    add-int/2addr p1, p2

    iput p1, v0, Lcom/tencent/qnet/net/StatManager$Info;->OutSize:I

    .line 85
    iget p1, p0, Lcom/tencent/qnet/net/StatManager;->OutCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/tencent/qnet/net/StatManager;->OutCount:I

    .line 86
    iget p1, p0, Lcom/tencent/qnet/net/StatManager;->OutSize:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/tencent/qnet/net/StatManager;->OutSize:I

    return-void
.end method

.method public get_main_ip()I
    .locals 6

    .line 40
    iget v0, p0, Lcom/tencent/qnet/net/StatManager;->InSize:I

    iget v0, p0, Lcom/tencent/qnet/net/StatManager;->OutSize:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    :goto_0
    iget-object v3, p0, Lcom/tencent/qnet/net/StatManager;->IpInfo:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 45
    iget-object v3, p0, Lcom/tencent/qnet/net/StatManager;->IpInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 46
    iget-object v4, p0, Lcom/tencent/qnet/net/StatManager;->IpInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qnet/net/StatManager$Info;

    .line 47
    iget v5, v4, Lcom/tencent/qnet/net/StatManager$Info;->OutSize:I

    iget v4, v4, Lcom/tencent/qnet/net/StatManager$Info;->InSize:I

    add-int/2addr v5, v4

    if-le v5, v1, :cond_0

    move v2, v3

    move v1, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/tencent/qnet/net/StatManager;->InCount:I

    .line 32
    iput v0, p0, Lcom/tencent/qnet/net/StatManager;->InSize:I

    .line 33
    iput v0, p0, Lcom/tencent/qnet/net/StatManager;->OutCount:I

    .line 34
    iput v0, p0, Lcom/tencent/qnet/net/StatManager;->OutSize:I

    .line 35
    iget-object v0, p0, Lcom/tencent/qnet/net/StatManager;->IpInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
