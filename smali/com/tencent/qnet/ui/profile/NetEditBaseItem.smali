.class public Lcom/tencent/qnet/ui/profile/NetEditBaseItem;
.super Ljava/lang/Object;
.source "NetEditBaseItem.java"


# static fields
.field public static final TYPE_CON_DROP:I = 0x3

.field public static final TYPE_EDIT:I = 0x1

.field public static final TYPE_PROTOCOL:I = 0x2

.field public static final TYPE_UNKNOWN:I


# instance fields
.field protected m_name:Ljava/lang/String;

.field protected m_type:I

.field protected m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_name:Ljava/lang/String;

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_type:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_name:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_view:Landroid/view/View;

    return-object v0
.end method

.method public isTypeConDrop()Z
    .locals 2

    .line 51
    iget v0, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTypeEdit()Z
    .locals 2

    .line 44
    iget v0, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isTypeProtocol()Z
    .locals 2

    .line 47
    iget v0, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setTypeConDrop()V
    .locals 1

    const/4 v0, 0x3

    .line 35
    iput v0, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_type:I

    return-void
.end method

.method public setTypeProtocol()V
    .locals 1

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_type:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetEditBaseItem;->m_view:Landroid/view/View;

    return-void
.end method
