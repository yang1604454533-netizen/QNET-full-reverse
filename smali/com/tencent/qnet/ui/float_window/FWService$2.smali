.class Lcom/tencent/qnet/ui/float_window/FWService$2;
.super Ljava/lang/Object;
.source "FWService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/float_window/FWService;->init_events()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field hints:[J

.field final synthetic this$0:Lcom/tencent/qnet/ui/float_window/FWService;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/float_window/FWService;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    .line 275
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->hints:[J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 279
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->hints:[J

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->hints:[J

    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->hints:[J

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->hints:[J

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->hints:[J

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, p1, v0

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->hints:[J

    aget-wide v4, p1, v3

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long p1, v0, v4

    if-gez p1, :cond_1

    .line 282
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-boolean v0, v0, Lcom/tencent/qnet/ui/float_window/FWService;->m_qnet_activity:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p1, Lcom/tencent/qnet/ui/float_window/FWService;->m_qnet_activity:Z

    const-string p1, "QNET"

    .line 285
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/float_window/FWService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    const v4, 0x7f080071

    invoke-virtual {v1, v4}, Lcom/tencent/qnet/ui/float_window/FWService;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 287
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    iget-boolean v1, v1, Lcom/tencent/qnet/ui/float_window/FWService;->m_qnet_activity:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/AppProxyManager;->getProxyApp()Lcom/tencent/qnet/ui/AppInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    sget-object p1, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/AppProxyManager;->getProxyApp()Lcom/tencent/qnet/ui/AppInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 289
    sget-object p1, Lcom/tencent/qnet/ui/AppProxyManager;->Instance:Lcom/tencent/qnet/ui/AppProxyManager;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/AppProxyManager;->getProxyApp()Lcom/tencent/qnet/ui/AppInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/AppInfo;->getAppLabel()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "%s %s"

    const/4 v4, 0x2

    .line 291
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v5}, Lcom/tencent/qnet/ui/float_window/FWService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100051

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    aput-object p1, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 292
    iget-object v1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/float_window/FWService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 294
    iget-object p1, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/float_window/FWService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 295
    iget-object v0, p0, Lcom/tencent/qnet/ui/float_window/FWService$2;->this$0:Lcom/tencent/qnet/ui/float_window/FWService;

    invoke-virtual {v0, p1}, Lcom/tencent/qnet/ui/float_window/FWService;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
