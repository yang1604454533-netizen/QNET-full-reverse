.class public Lcom/tencent/qnet/ui/profile/NetProfileItem;
.super Ljava/lang/Object;
.source "NetProfileItem.java"


# instance fields
.field m_profile:Lcom/tencent/qnet/net/NetProfile;

.field m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/tencent/qnet/net/NetProfile;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetProfileItem;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    return-void
.end method


# virtual methods
.method public getProfile()Lcom/tencent/qnet/net/NetProfile;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetProfileItem;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetProfileItem;->m_view:Landroid/view/View;

    return-object v0
.end method

.method public setProfile(Lcom/tencent/qnet/net/NetProfile;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetProfileItem;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/tencent/qnet/ui/profile/NetProfileItem;->m_view:Landroid/view/View;

    return-void
.end method
