.class public Lcom/tencent/qnet/net/NetProfile;
.super Ljava/lang/Object;
.source "NetProfile.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/net/NetProfile$Param;
    }
.end annotation


# static fields
.field private static s_default_profile:Lcom/tencent/qnet/net/NetProfile;

.field private static s_sortedParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Desc:Ljava/lang/String;

.field public ID:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public Preset:Z

.field public Selected:Z

.field public UpdateTime:Ljava/util/Date;

.field private m_params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/tencent/qnet/net/NetProfile$Param;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qnet/net/NetProfile;->s_sortedParamList:Ljava/util/List;

    const/4 v0, 0x0

    .line 101
    sput-object v0, Lcom/tencent/qnet/net/NetProfile;->s_default_profile:Lcom/tencent/qnet/net/NetProfile;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/tencent/qnet/net/NetProfile;
    .locals 2

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 124
    sget-object v0, Lcom/tencent/qnet/net/NetProfile;->s_default_profile:Lcom/tencent/qnet/net/NetProfile;

    invoke-virtual {v0}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    .line 125
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    const v1, 0x7f100038

    .line 126
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    const v1, 0x7f1000b7

    .line 127
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tencent/qnet/net/NetProfile;->Desc:Ljava/lang/String;

    .line 128
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    iput-object p0, v0, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    return-object v0
.end method

.method public static createNew()Lcom/tencent/qnet/net/NetProfile;
    .locals 2

    .line 115
    new-instance v0, Lcom/tencent/qnet/net/NetProfile;

    invoke-direct {v0}, Lcom/tencent/qnet/net/NetProfile;-><init>()V

    .line 116
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public static getSortedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/tencent/qnet/net/NetProfile;->s_sortedParamList:Ljava/util/List;

    return-object v0
.end method

.method public static initDefault(Lcom/tencent/qnet/net/NetProfile;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qnet/net/NetProfile;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    sput-object p0, Lcom/tencent/qnet/net/NetProfile;->s_default_profile:Lcom/tencent/qnet/net/NetProfile;

    .line 110
    sput-object p1, Lcom/tencent/qnet/net/NetProfile;->s_sortedParamList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;
    .locals 1

    .line 137
    new-instance v0, Lcom/tencent/qnet/net/NetProfile$Param;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/net/NetProfile$Param;-><init>(Lcom/tencent/qnet/net/NetProfile;)V

    .line 138
    iput-object p1, v0, Lcom/tencent/qnet/net/NetProfile$Param;->Name:Ljava/lang/String;

    .line 139
    iput-object p2, v0, Lcom/tencent/qnet/net/NetProfile$Param;->StringValue:Ljava/lang/String;

    .line 140
    iget-object p1, p0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    iget-object p2, v0, Lcom/tencent/qnet/net/NetProfile$Param;->Name:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public clone()Lcom/tencent/qnet/net/NetProfile;
    .locals 5

    .line 190
    new-instance v0, Lcom/tencent/qnet/net/NetProfile;

    invoke-direct {v0}, Lcom/tencent/qnet/net/NetProfile;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    .line 192
    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile;->Desc:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile;->Desc:Ljava/lang/String;

    .line 194
    iget-boolean v1, p0, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    iput-boolean v1, v0, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    .line 195
    iget-boolean v1, p0, Lcom/tencent/qnet/net/NetProfile;->Preset:Z

    iput-boolean v1, v0, Lcom/tencent/qnet/net/NetProfile;->Preset:Z

    .line 196
    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, v0, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    .line 198
    iget-object v1, p0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 199
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    iget-object v3, v0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/qnet/net/NetProfile$Param;

    invoke-virtual {v4}, Lcom/tencent/qnet/net/NetProfile$Param;->clone()Lcom/tencent/qnet/net/NetProfile$Param;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    return-object v0
.end method

.method public getParam(Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/net/NetProfile$Param;

    return-object p1
.end method

.method public getParamIntValue(Ljava/lang/String;)I
    .locals 0

    .line 148
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/net/NetProfile;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 151
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public getParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/net/NetProfile$Param;

    iget-object p1, p1, Lcom/tencent/qnet/net/NetProfile$Param;->StringValue:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public setParamIntValue(Ljava/lang/String;I)V
    .locals 0

    .line 174
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qnet/net/NetProfile;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setParamValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/tencent/qnet/net/NetProfile;->m_params:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/net/NetProfile$Param;

    iput-object p2, p1, Lcom/tencent/qnet/net/NetProfile$Param;->StringValue:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qnet/net/NetProfile;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;

    :goto_0
    return-void
.end method
