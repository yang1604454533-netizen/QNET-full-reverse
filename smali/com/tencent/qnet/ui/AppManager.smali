.class public Lcom/tencent/qnet/ui/AppManager;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AppManager.java"


# static fields
.field public static final REQUEST_CODE:I = 0x821


# instance fields
.field private adapter:Lcom/tencent/qnet/ui/AppManagerAdapter;

.field private appListView:Landroid/support/v7/widget/RecyclerView;

.field private fastScroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

.field private loadingView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qnet/ui/AppManager;)Lcom/tencent/qnet/ui/AppManagerAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/qnet/ui/AppManager;->adapter:Lcom/tencent/qnet/ui/AppManagerAdapter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/tencent/qnet/ui/AppManager;Lcom/tencent/qnet/ui/AppManagerAdapter;)Lcom/tencent/qnet/ui/AppManagerAdapter;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/tencent/qnet/ui/AppManager;->adapter:Lcom/tencent/qnet/ui/AppManagerAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/qnet/ui/AppManager;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/qnet/ui/AppManager;->appListView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/tencent/qnet/ui/AppManager;)Lcom/futuremind/recyclerviewfastscroll/FastScroller;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/qnet/ui/AppManager;->fastScroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    return-object p0
.end method

.method static synthetic access$300(Lcom/tencent/qnet/ui/AppManager;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/tencent/qnet/ui/AppManager;->loadingView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 56
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0033

    .line 57
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/AppManager;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/AppManager;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const p1, 0x7f090074

    .line 63
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/AppManager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qnet/ui/AppManager;->loadingView:Landroid/view/View;

    const p1, 0x7f090070

    .line 64
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/AppManager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iput-object p1, p0, Lcom/tencent/qnet/ui/AppManager;->appListView:Landroid/support/v7/widget/RecyclerView;

    .line 65
    iget-object p1, p0, Lcom/tencent/qnet/ui/AppManager;->appListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 66
    iget-object p1, p0, Lcom/tencent/qnet/ui/AppManager;->appListView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v0}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    const p1, 0x7f09004f

    .line 67
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/AppManager;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    iput-object p1, p0, Lcom/tencent/qnet/ui/AppManager;->fastScroller:Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 69
    new-instance p1, Lcom/tencent/qnet/ui/AppManager$1;

    invoke-direct {p1, p0}, Lcom/tencent/qnet/ui/AppManager$1;-><init>(Lcom/tencent/qnet/ui/AppManager;)V

    invoke-static {p1}, Lio/reactivex/Observable;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 76
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 77
    new-instance v0, Lcom/tencent/qnet/ui/AppManager$2;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/AppManager$2;-><init>(Lcom/tencent/qnet/ui/AppManager;)V

    .line 112
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 139
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 144
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/AppManager;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public queryAppInfo()V
    .locals 6

    .line 116
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/AppManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 120
    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v2, v0}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    sget-object v2, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    iget-object v2, v2, Lcom/tencent/qnet/ui/AppProxyManager;->mlistAppInfo:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 122
    sget-object v2, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    iget-object v2, v2, Lcom/tencent/qnet/ui/AppProxyManager;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 123
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 124
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 126
    invoke-virtual {v2, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 127
    new-instance v5, Lcom/tencent/qnet/ui/AppInfo;

    invoke-direct {v5}, Lcom/tencent/qnet/ui/AppInfo;-><init>()V

    .line 128
    invoke-virtual {v5, v4}, Lcom/tencent/qnet/ui/AppInfo;->setAppLabel(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v5, v3}, Lcom/tencent/qnet/ui/AppInfo;->setPkgName(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v5, v2}, Lcom/tencent/qnet/ui/AppInfo;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v5}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.qnet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 132
    sget-object v2, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    iget-object v2, v2, Lcom/tencent/qnet/ui/AppProxyManager;->mlistAppInfo:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
