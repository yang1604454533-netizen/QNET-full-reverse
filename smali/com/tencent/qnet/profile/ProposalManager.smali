.class public Lcom/tencent/qnet/profile/ProposalManager;
.super Ljava/lang/Object;
.source "ProposalManager.java"


# static fields
.field private static proposalManager:Lcom/tencent/qnet/profile/ProposalManager;


# instance fields
.field private SelectedIndex:I

.field private bDownLoadProposalComplete:Z

.field private bDownLoadingProposal:Z

.field private bLoadLocalProposal:Z

.field private bSynMode:Z

.field private myProposalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation
.end field

.field private profileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation
.end field

.field private proposalUser:Ljava/lang/String;

.field private xmlParser:Lcom/tencent/qnet/common/XmlService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bLoadLocalProposal:Z

    .line 28
    iput-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bDownLoadProposalComplete:Z

    .line 29
    iput-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bDownLoadingProposal:Z

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bSynMode:Z

    .line 45
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/tencent/qnet/common/XmlService;

    invoke-direct {v0}, Lcom/tencent/qnet/common/XmlService;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    :cond_0
    return-void
.end method

.method private ClearLocalProposalCache()V
    .locals 0

    return-void
.end method

.method public static GetInstance()Lcom/tencent/qnet/profile/ProposalManager;
    .locals 1

    .line 51
    sget-object v0, Lcom/tencent/qnet/profile/ProposalManager;->proposalManager:Lcom/tencent/qnet/profile/ProposalManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/tencent/qnet/profile/ProposalManager;

    invoke-direct {v0}, Lcom/tencent/qnet/profile/ProposalManager;-><init>()V

    sput-object v0, Lcom/tencent/qnet/profile/ProposalManager;->proposalManager:Lcom/tencent/qnet/profile/ProposalManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/tencent/qnet/profile/ProposalManager;->proposalManager:Lcom/tencent/qnet/profile/ProposalManager;

    return-object v0
.end method

.method private GetProposalFromCache()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation

    .line 342
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    invoke-virtual {v0}, Lcom/tencent/qnet/common/XmlService;->getProposalParams()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Exception When Get Local Proposal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private GetSortedListFromMap(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 225
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 226
    new-instance p1, Lcom/tencent/qnet/profile/ProposalManager$3;

    invoke-direct {p1, p0}, Lcom/tencent/qnet/profile/ProposalManager$3;-><init>(Lcom/tencent/qnet/profile/ProposalManager;)V

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 232
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 233
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 234
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic access$002(Lcom/tencent/qnet/profile/ProposalManager;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/tencent/qnet/profile/ProposalManager;->bDownLoadingProposal:Z

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/qnet/profile/ProposalManager;)Ljava/util/Map;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$202(Lcom/tencent/qnet/profile/ProposalManager;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$302(Lcom/tencent/qnet/profile/ProposalManager;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/tencent/qnet/profile/ProposalManager;->bDownLoadProposalComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qnet/profile/ProposalManager;)Lcom/tencent/qnet/common/XmlService;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    return-object p0
.end method


# virtual methods
.method public AddProposal(Lcom/tencent/qnet/net/NetProfile;)V
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p1, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p1, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    .line 397
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposal()Ljava/util/List;

    move-result-object v0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    invoke-virtual {v1, v0}, Lcom/tencent/qnet/common/XmlService;->writeProposalParamsToCache(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed To Add Remote Proposal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bSynMode:Z

    if-eqz v0, :cond_2

    .line 413
    invoke-virtual {p1}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object p1

    .line 414
    new-instance v0, Lcom/tencent/qnet/profile/ProposalManager$5;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qnet/profile/ProposalManager$5;-><init>(Lcom/tencent/qnet/profile/ProposalManager;Lcom/tencent/qnet/net/NetProfile;)V

    .line 421
    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager$5;->start()V

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public Clear()V
    .locals 3

    const/4 v0, 0x0

    .line 487
    iput-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bLoadLocalProposal:Z

    const-string v0, ""

    .line 488
    iput-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 490
    iput-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    .line 491
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    if-eqz v1, :cond_0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    invoke-virtual {v1}, Lcom/tencent/qnet/common/XmlService;->deleteTemplateXml()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 495
    :catch_0
    sget-object v1, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Faild To Delete Cache Files"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    .line 499
    invoke-direct {p0}, Lcom/tencent/qnet/profile/ProposalManager;->ClearLocalProposalCache()V

    .line 500
    sput-object v0, Lcom/tencent/qnet/profile/ProposalManager;->proposalManager:Lcom/tencent/qnet/profile/ProposalManager;

    return-void
.end method

.method public DeleteProposal(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_5

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 444
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposal()Ljava/util/List;

    move-result-object v0

    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    invoke-virtual {v1, v0}, Lcom/tencent/qnet/common/XmlService;->writeProposalParamsToCache(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 448
    :catch_0
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed To Add Remove Proposal"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bSynMode:Z

    if-eqz v0, :cond_3

    .line 452
    new-instance v0, Lcom/tencent/qnet/profile/ProposalManager$6;

    invoke-direct {v0, p0, p1}, Lcom/tencent/qnet/profile/ProposalManager$6;-><init>(Lcom/tencent/qnet/profile/ProposalManager;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager$6;->start()V

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public DownLoadMyProposals()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bSynMode:Z

    if-eqz v0, :cond_1

    .line 157
    new-instance v0, Lcom/tencent/qnet/profile/ProposalManager$2;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/profile/ProposalManager$2;-><init>(Lcom/tencent/qnet/profile/ProposalManager;)V

    .line 215
    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager$2;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 217
    iput-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bDownLoadProposalComplete:Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public EditProposal(Lcom/tencent/qnet/net/NetProfile;)V
    .locals 1

    const/4 v0, 0x1

    .line 354
    invoke-virtual {p0, p1, v0, v0}, Lcom/tencent/qnet/profile/ProposalManager;->EditProposal(Lcom/tencent/qnet/net/NetProfile;ZZ)V

    return-void
.end method

.method public EditProposal(Lcom/tencent/qnet/net/NetProfile;ZZ)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 361
    :cond_0
    iget-object v0, p1, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 364
    new-instance p2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p2, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object p2, p1, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    .line 365
    :cond_1
    iget-object p2, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposal()Ljava/util/List;

    move-result-object p2

    .line 371
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->xmlParser:Lcom/tencent/qnet/common/XmlService;

    invoke-virtual {v0, p2}, Lcom/tencent/qnet/common/XmlService;->writeProposalParamsToCache(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    sget-object p2, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Exception When Update Local Proposal"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz p3, :cond_3

    .line 376
    invoke-virtual {p1}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object p1

    .line 378
    new-instance p2, Lcom/tencent/qnet/profile/ProposalManager$4;

    invoke-direct {p2, p0, p1}, Lcom/tencent/qnet/profile/ProposalManager$4;-><init>(Lcom/tencent/qnet/profile/ProposalManager;Lcom/tencent/qnet/net/NetProfile;)V

    .line 385
    invoke-virtual {p2}, Lcom/tencent/qnet/profile/ProposalManager$4;->start()V

    :cond_3
    return-void
.end method

.method public GetProposal()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 248
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 252
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 256
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qnet/net/NetProfile;

    invoke-virtual {v2}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v2

    .line 257
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    sget-object v2, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Exception When Get Remote Proposal"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/tencent/qnet/profile/ProposalManager;->GetSortedListFromMap(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 266
    :cond_2
    invoke-direct {p0}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposalFromCache()Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public GetProposalById(Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tencent/qnet/net/NetProfile;

    invoke-virtual {p1}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public GetProposalUser()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    return-object v0
.end method

.method public GetSelectedProfileID()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->SelectedIndex:I

    return v0
.end method

.method public IsProposalLoaded()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bLoadLocalProposal:Z

    return v0
.end method

.method public LoadLocalProposal()V
    .locals 6

    .line 300
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    .line 304
    :cond_0
    invoke-direct {p0}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposalFromCache()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 306
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 307
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qnet/net/NetProfile;

    .line 308
    iget-object v3, v2, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {v2}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v4

    .line 310
    iget-object v5, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 311
    iget-object v2, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 313
    :cond_1
    iget-object v5, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tencent/qnet/net/NetProfile;

    .line 314
    iget-object v5, v5, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    iget-object v2, v2, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    invoke-virtual {v5, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bLoadLocalProposal:Z

    :cond_4
    return-void
.end method

.method public OnSelectedProfileChanged(IZ)V
    .locals 5

    .line 83
    iget v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->SelectedIndex:I

    if-ne p1, v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    if-eqz v0, :cond_4

    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->SelectedIndex:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->SelectedIndex:I

    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 90
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    iget v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->SelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/net/NetProfile;

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, v0, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    .line 92
    iget-object v1, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/net/NetProfile;

    const/4 v2, 0x1

    .line 93
    iput-boolean v2, v1, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    .line 94
    iget-object v2, v1, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    .line 96
    iget-object v3, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 97
    iget-object v3, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    iget-object v4, v0, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->myProposalMap:Ljava/util/Map;

    iget-object v3, v1, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_2
    invoke-static {}, Lcom/tencent/qnet/ui/MainActivity;->getMainActivity()Lcom/tencent/qnet/ui/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 109
    new-instance v1, Lcom/tencent/qnet/profile/ProposalManager$1;

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/tencent/qnet/profile/ProposalManager$1;-><init>(Lcom/tencent/qnet/profile/ProposalManager;Lcom/tencent/qnet/ui/MainActivity;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/ui/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 117
    :cond_3
    iput p1, p0, Lcom/tencent/qnet/profile/ProposalManager;->SelectedIndex:I

    :cond_4
    return-void
.end method

.method public SetProposalUser(Ljava/lang/String;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/tencent/qnet/profile/ProposalManager;->proposalUser:Ljava/lang/String;

    return-void
.end method

.method public getProfileList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposal()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 69
    iget-object v3, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/net/NetProfile;

    iget-object v3, v3, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v3, p0, Lcom/tencent/qnet/profile/ProposalManager;->profileList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/net/NetProfile;

    iget-boolean v3, v3, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 71
    iput v2, p0, Lcom/tencent/qnet/profile/ProposalManager;->SelectedIndex:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    return-object v1
.end method

.method public isbDownLoadProposalComplete()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bDownLoadProposalComplete:Z

    return v0
.end method

.method public isbDownLoadingProposal()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bDownLoadingProposal:Z

    return v0
.end method

.method public isbSynMode()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/tencent/qnet/profile/ProposalManager;->bSynMode:Z

    return v0
.end method
