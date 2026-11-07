.class public Lcom/tencent/qnet/ui/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;


# static fields
.field private static final START_VPN_SERVICE_REQUEST_CODE:I = 0x7e1

.field private static mainActivity:Lcom/tencent/qnet/ui/MainActivity;


# instance fields
.field private mButtonTest:Landroid/widget/Button;

.field private mIsRunning:Z

.field private m_currentEditID:Ljava/lang/String;

.field private m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

.field private m_menu:Landroid/view/Menu;

.field m_profileListView:Landroid/widget/ListView;

.field public m_profile_sync_handler:Landroid/os/Handler;

.field private profileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 82
    sput-object p0, Lcom/tencent/qnet/ui/MainActivity;->mainActivity:Lcom/tencent/qnet/ui/MainActivity;

    return-void
.end method

.method private UpdateNetworkConfig3()V
    .locals 6

    .line 563
    :try_start_0
    invoke-static {}, Lcom/tencent/qnet/net/NetworkConfig;->Instnace()Lcom/tencent/qnet/net/NetworkConfig;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v1

    .line 569
    invoke-static {}, Lcom/tencent/qnet/net/NetProfile;->getSortedList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 570
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 572
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 574
    const-class v5, Lcom/tencent/qnet/net/NetworkConfig;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 577
    invoke-virtual {v1, v4}, Lcom/tencent/qnet/net/NetProfile;->getParamIntValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v0, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 581
    :cond_1
    sget-object v0, Lcom/tencent/qnet/net/NetConfigChange;->Instance:Lcom/tencent/qnet/net/NetConfigChange;

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/net/NetConfigChange;->setCurrentProfile(Lcom/tencent/qnet/net/NetProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 585
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private UpdateVPNStatusChanged(Z)V
    .locals 0

    .line 234
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/MainActivity;->setButtonTextStatus(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qnet/ui/MainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->refreshNetProfilesList()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qnet/ui/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/MainActivity;->showNormalDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qnet/ui/MainActivity;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->onButtonTestClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/qnet/ui/MainActivity;)Lcom/tencent/qnet/ui/profile/NetProfileItem;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tencent/qnet/ui/MainActivity;Lcom/tencent/qnet/ui/profile/NetProfileItem;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/tencent/qnet/ui/MainActivity;->onNetProfileChanged(Lcom/tencent/qnet/ui/profile/NetProfileItem;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/qnet/ui/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/MainActivity;->showCheckVersionDialog(Ljava/lang/String;)V

    return-void
.end method

.method private static checkOps(Landroid/content/Context;)Z
    .locals 8
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x13
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "appops"

    .line 429
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 433
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x3

    .line 434
    new-array v4, v3, [Ljava/lang/Class;

    .line 435
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 436
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 437
    const-class v5, Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const-string v5, "checkOp"

    .line 438
    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-nez v2, :cond_1

    return v0

    .line 442
    :cond_1
    new-array v3, v3, [Ljava/lang/Object;

    const/16 v4, 0x18

    .line 443
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 444
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v7

    .line 446
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    :catch_0
    return v0
.end method

.method private checkVersion()V
    .locals 1

    return-void

    .line 748
    new-instance v0, Lcom/tencent/qnet/ui/MainActivity$11;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/MainActivity$11;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    .line 783
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/MainActivity$11;->start()V

    return-void
.end method

.method private check_overlays_privilege()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 471
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 472
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 475
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "\u9700\u8981\u53d6\u5f97\u6743\u9650\u4ee5\u4f7f\u7528\u60ac\u6d6e\u7a97"

    const/4 v2, 0x0

    .line 476
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 477
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v2

    .line 482
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 483
    invoke-static {p0}, Lcom/tencent/qnet/ui/MainActivity;->checkOps(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v1
.end method

.method public static getMainActivity()Lcom/tencent/qnet/ui/MainActivity;
    .locals 1

    .line 78
    sget-object v0, Lcom/tencent/qnet/ui/MainActivity;->mainActivity:Lcom/tencent/qnet/ui/MainActivity;

    return-object v0
.end method

.method private initAppManager()V
    .locals 2

    .line 385
    new-instance v0, Lcom/tencent/qnet/ui/AppProxyManager;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/AppProxyManager;-><init>(Landroid/content/Context;)V

    .line 386
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->updateTestProgramUI()V

    const v0, 0x7f09006b

    .line 387
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/tencent/qnet/ui/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/MainActivity$5;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initButtonTest()V
    .locals 2

    const v0, 0x7f090028

    .line 374
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->mButtonTest:Landroid/widget/Button;

    .line 375
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->mButtonTest:Landroid/widget/Button;

    new-instance v1, Lcom/tencent/qnet/ui/MainActivity$4;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/MainActivity$4;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    sget-boolean v0, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    invoke-direct {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->setButtonTextStatus(Z)V

    return-void
.end method

.method private initGlobalSettings()V
    .locals 2

    .line 836
    :try_start_0
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qnet/common/SystemUtil;->getAppVersionInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/qnet/global/GlobalSettings;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 838
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private initLogin()V
    .locals 0

    .line 742
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->reportLogin()V

    .line 743
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->checkVersion()V

    return-void
.end method

.method private initNetTemplateUI()V
    .locals 2

    const v0, 0x7f090083

    .line 605
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_profileListView:Landroid/widget/ListView;

    .line 606
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_profileListView:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/tencent/qnet/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 608
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->refreshNetProfilesList()V

    .line 610
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_profileListView:Landroid/widget/ListView;

    new-instance v1, Lcom/tencent/qnet/ui/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/MainActivity$9;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f090024

    .line 630
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 631
    new-instance v1, Lcom/tencent/qnet/ui/MainActivity$10;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/MainActivity$10;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initReleaseMode()V
    .locals 5

    .line 310
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/global/QnetApplication;

    .line 311
    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->ReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0900e3

    .line 313
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%s[test]"

    const/4 v2, 0x1

    .line 314
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, -0x10000

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private initService()V
    .locals 0

    .line 322
    invoke-static {p0}, Lcom/tencent/qnet/core/LocalVpnService;->addOnStatusChangedListener(Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;)V

    return-void
.end method

.method private initSyncHandler()V
    .locals 1

    .line 327
    new-instance v0, Lcom/tencent/qnet/ui/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/MainActivity$2;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    iput-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_profile_sync_handler:Landroid/os/Handler;

    return-void
.end method

.method private initToolbar()V
    .locals 2

    const v0, 0x7f0900e2

    .line 410
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 411
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 412
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    return-void
.end method

.method private initUI()V
    .locals 0

    .line 297
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initReleaseMode()V

    .line 299
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initSyncHandler()V

    .line 300
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initToolbar()V

    .line 301
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initAppManager()V

    .line 302
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initButtonTest()V

    .line 303
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initNetTemplateUI()V

    .line 305
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initService()V

    return-void
.end method

.method private onButtonTestClicked()V
    .locals 4

    .line 493
    sget-object v0, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/AppProxyManager;->getProxyApp()Lcom/tencent/qnet/ui/AppInfo;

    move-result-object v0

    const v1, 0x7f100039

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 496
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100064

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 497
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qnet/ui/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/tencent/qnet/ui/MainActivity$6;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 503
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    if-nez v0, :cond_1

    .line 509
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 510
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 511
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qnet/ui/MainActivity$7;

    invoke-direct {v2, p0}, Lcom/tencent/qnet/ui/MainActivity$7;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    .line 522
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->check_overlays_privilege()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 525
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/qnet/ui/MainActivity;->mIsRunning:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qnet/ui/MainActivity;->mIsRunning:Z

    .line 526
    sget-boolean v0, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    iget-boolean v1, p0, Lcom/tencent/qnet/ui/MainActivity;->mIsRunning:Z

    if-eq v0, v1, :cond_5

    .line 527
    iget-boolean v0, p0, Lcom/tencent/qnet/ui/MainActivity;->mIsRunning:Z

    if-eqz v0, :cond_4

    .line 528
    invoke-static {p0}, Lcom/tencent/qnet/core/LocalVpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 530
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->startVPNService()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x7e1

    .line 532
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qnet/ui/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 535
    sput-boolean v0, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    :cond_5
    :goto_0
    return-void
.end method

.method private onEditActivityReturn(Landroid/content/Intent;)V
    .locals 1

    .line 251
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentEditID:Ljava/lang/String;

    .line 252
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->refreshNetProfilesList()V

    return-void
.end method

.method private onNetConfigChanged(Z)V
    .locals 5

    .line 257
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->UpdateNetworkConfig3()V

    .line 258
    sget-boolean v0, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[%s] %s"

    const/4 v2, 0x2

    .line 260
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {v3}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    :cond_0
    invoke-static {}, Lcom/tencent/qnet/ui/float_window/FWService;->getInstance()Lcom/tencent/qnet/ui/float_window/FWService;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 267
    invoke-static {}, Lcom/tencent/qnet/ui/float_window/FWService;->getInstance()Lcom/tencent/qnet/ui/float_window/FWService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/float_window/FWService;->onProfileChanged()V

    :cond_1
    return-void
.end method

.method private onNetProfileChanged(Lcom/tencent/qnet/ui/profile/NetProfileItem;Z)V
    .locals 4

    .line 692
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    iput-boolean v2, v0, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    .line 695
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    iget-object v3, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {v3}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Lcom/tencent/qnet/profile/ProposalManager;->EditProposal(Lcom/tencent/qnet/net/NetProfile;ZZ)V

    .line 696
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/tencent/qnet/ui/MainActivity;->setProfileSelected(Landroid/view/View;Z)V

    .line 698
    :cond_0
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    .line 699
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object p1

    iput-boolean v1, p1, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    .line 700
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v1}, Lcom/tencent/qnet/profile/ProposalManager;->EditProposal(Lcom/tencent/qnet/net/NetProfile;ZZ)V

    .line 701
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/tencent/qnet/ui/MainActivity;->setProfileSelected(Landroid/view/View;Z)V

    .line 703
    invoke-direct {p0, p2}, Lcom/tencent/qnet/ui/MainActivity;->onNetConfigChanged(Z)V

    return-void
.end method

.method private refreshNetProfilesList()V
    .locals 2

    .line 647
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->profileList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->profileList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 650
    :cond_0
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager;->LoadLocalProposal()V

    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposal()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->profileList:Ljava/util/List;

    .line 651
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->profileList:Ljava/util/List;

    invoke-static {v0}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->CovertToProfileItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 652
    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_profileListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;

    if-eqz v1, :cond_1

    .line 654
    invoke-virtual {v1, v0}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->setItems(Ljava/util/List;)V

    goto :goto_0

    .line 657
    :cond_1
    new-instance v1, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;

    invoke-direct {v1, p0, v0}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_profileListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 662
    invoke-static {}, Lcom/tencent/qnet/ui/float_window/FWService;->getInstance()Lcom/tencent/qnet/ui/float_window/FWService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 663
    invoke-static {}, Lcom/tencent/qnet/ui/float_window/FWService;->getInstance()Lcom/tencent/qnet/ui/float_window/FWService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/float_window/FWService;->onProfileChanged()V

    :cond_2
    return-void
.end method

.method private reportLogin()V
    .locals 1

    .line 804
    new-instance v0, Lcom/tencent/qnet/ui/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/MainActivity$13;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    .line 831
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/MainActivity$13;->start()V

    return-void
.end method

.method private setButtonTextStatus(Z)V
    .locals 2

    .line 417
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/MainActivity;->mIsRunning:Z

    if-eqz p1, :cond_0

    .line 419
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->mButtonTest:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->mButtonTest:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setProfileSelected(Landroid/view/View;Z)V
    .locals 5

    if-eqz p1, :cond_3

    const v0, 0x7f0900cf

    .line 711
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900cd

    .line 712
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0900b1

    .line 713
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 714
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    if-eqz p2, :cond_0

    move v3, v2

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1060009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_1

    move v0, v2

    goto :goto_1

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x1060000

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_2

    goto :goto_2

    .line 718
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x106000d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method private showCheckVersionDialog(Ljava/lang/String;)V
    .locals 2

    .line 787
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 789
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 790
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 791
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 792
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000b8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/tencent/qnet/ui/MainActivity$12;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/MainActivity$12;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 800
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private showNormalDialog(Ljava/lang/String;)V
    .locals 3

    .line 348
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 350
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_0

    .line 352
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/tencent/qnet/global/QnetGlobalDefine$QNET_HTTP_RESP_TYPE;->HTTP_RESP_TIMEOUT:Lcom/tencent/qnet/global/QnetGlobalDefine$QNET_HTTP_RESP_TYPE;

    invoke-virtual {v2}, Lcom/tencent/qnet/global/QnetGlobalDefine$QNET_HTTP_RESP_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f100092

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const v0, 0x7f100091

    if-eqz p1, :cond_1

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/tencent/qnet/global/QnetGlobalDefine$QNET_HTTP_RESP_TYPE;->HTTP_RESP_UNDEFINED:Lcom/tencent/qnet/global/QnetGlobalDefine$QNET_HTTP_RESP_TYPE;

    invoke-virtual {v2}, Lcom/tencent/qnet/global/QnetGlobalDefine$QNET_HTTP_RESP_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 355
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 358
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 360
    :goto_0
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 361
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1000b8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/tencent/qnet/ui/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/MainActivity$3;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    invoke-virtual {v1, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 370
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startVPNService()V
    .locals 2

    .line 542
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->UpdateNetworkConfig3()V

    .line 543
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/qnet/core/LocalVpnService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 546
    new-instance v0, Lcom/tencent/qnet/ui/MainActivity$8;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/MainActivity$8;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    .line 556
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/MainActivity$8;->start()V

    return-void
.end method

.method private updateTestProgramUI()V
    .locals 7

    const v0, 0x7f090060

    .line 272
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0900d9

    .line 273
    invoke-virtual {p0, v1}, Lcom/tencent/qnet/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 274
    sget-object v2, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    invoke-virtual {v2}, Lcom/tencent/qnet/ui/AppProxyManager;->getProxyApp()Lcom/tencent/qnet/ui/AppInfo;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v5, "%s >"

    .line 276
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/tencent/qnet/ui/AppInfo;->getAppLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {v2}, Lcom/tencent/qnet/ui/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 280
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 281
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v2}, Lcom/tencent/qnet/ui/AppInfo;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1080093

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 290
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "%s >"

    .line 291
    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f100055

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentSelectConfigView()Landroid/view/View;
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrentSelectedProfile()Lcom/tencent/qnet/ui/profile/NetProfileItem;
    .locals 1

    .line 595
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 97
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7e1

    const/4 v1, -0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0x821

    if-eq p1, v0, :cond_1

    const/16 v0, 0x927

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v1, :cond_4

    .line 120
    invoke-direct {p0, p3}, Lcom/tencent/qnet/ui/MainActivity;->onEditActivityReturn(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_4

    const-string p1, "ProxyProgram"

    .line 101
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->updateTestProgramUI()V

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    .line 109
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->startVPNService()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 112
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/MainActivity;->setButtonTextStatus(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 88
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/MainActivity;->setContentView(I)V

    .line 89
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initGlobalSettings()V

    .line 90
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initLogin()V

    .line 91
    invoke-direct {p0}, Lcom/tencent/qnet/ui/MainActivity;->initUI()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0d0000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 146
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_menu:Landroid/view/Menu;

    const v0, 0x7f090079

    .line 147
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string v0, "%s(%s)"

    const/4 v1, 0x2

    .line 148
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f10005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qnet/global/GlobalSettings;->getUserName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return v3
.end method

.method protected onDestroy()V
    .locals 0

    .line 245
    invoke-static {p0}, Lcom/tencent/qnet/core/LocalVpnService;->removeOnStatusChangedListener(Lcom/tencent/qnet/core/LocalVpnService$onStatusChangedListener;)V

    .line 246
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLogReceived(Ljava/lang/String;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 158
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f09007a

    if-ne v0, v2, :cond_1

    .line 162
    sget-boolean p1, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 164
    sput-boolean p1, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->finishAndRemoveTask()V

    return v1

    :cond_1
    const v2, 0x7f09007b

    if-ne v0, v2, :cond_2

    .line 172
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tencent/qnet/ui/settings/SettingsActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_2
    const v2, 0x7f090079

    if-ne v0, v2, :cond_4

    .line 177
    sget-boolean v0, Lcom/tencent/qnet/core/LocalVpnService;->IsRunning:Z

    if-ne v1, v0, :cond_3

    .line 178
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 179
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qnet/ui/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/tencent/qnet/ui/MainActivity$1;-><init>(Lcom/tencent/qnet/ui/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 191
    :cond_3
    invoke-static {p0}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->logOut(Landroid/content/Context;)V

    .line 192
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/profile/ProposalManager;->Clear()V

    .line 193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    const-class v1, Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->finish()V

    .line 200
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 239
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 215
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->UpdateVPNStatusChanged(Z)V

    .line 216
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/MainActivity;->onLogReceived(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 217
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 218
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    invoke-virtual {p2}, Lcom/tencent/qnet/ui/AppProxyManager;->getProxyApp()Lcom/tencent/qnet/ui/AppInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 221
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 223
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 228
    :cond_0
    invoke-static {}, Lcom/tencent/qnet/ui/float_window/FWService;->getInstance()Lcom/tencent/qnet/ui/float_window/FWService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/float_window/FWService;->stopSelf()V

    :goto_0
    return-void
.end method

.method public profileChangedByFW(Ljava/lang/String;Z)V
    .locals 5

    .line 723
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_profileListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;

    .line 724
    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetProfileAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 725
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 727
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/ui/profile/NetProfileItem;

    .line 728
    invoke-virtual {v3}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 730
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    if-eqz p1, :cond_0

    .line 731
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object p1

    iput-boolean v1, p1, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    .line 732
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/tencent/qnet/ui/MainActivity;->setProfileSelected(Landroid/view/View;Z)V

    .line 734
    :cond_0
    invoke-direct {p0, v3, p2}, Lcom/tencent/qnet/ui/MainActivity;->onNetProfileChanged(Lcom/tencent/qnet/ui/profile/NetProfileItem;Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public updateProfileSelected(Lcom/tencent/qnet/ui/profile/NetProfileItem;)V
    .locals 2

    .line 670
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/qnet/ui/MainActivity;->setProfileSelected(Landroid/view/View;Z)V

    .line 676
    :cond_0
    iput-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    .line 677
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qnet/ui/MainActivity;->setProfileSelected(Landroid/view/View;Z)V

    .line 679
    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentEditID:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentEditID:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/qnet/ui/MainActivity;->m_currentSelectedProfile:Lcom/tencent/qnet/ui/profile/NetProfileItem;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getProfile()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 681
    invoke-direct {p0, v0}, Lcom/tencent/qnet/ui/MainActivity;->onNetConfigChanged(Z)V

    goto :goto_0

    .line 686
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qnet/ui/profile/NetProfileItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/tencent/qnet/ui/MainActivity;->setProfileSelected(Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method
