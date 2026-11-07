.class Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getAboutDataFromDB(ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$versionCode:I


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;ILandroid/app/Activity;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;->this$0:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;

    iput p2, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;->val$versionCode:I

    iput-object p3, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    const-string v0, "%d"

    const/4 v1, 0x1

    .line 92
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;->val$versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qnet/profile/PersonalNetProposal;->QueryVersionUpdate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2$1;

    invoke-direct {v2, p0, v0}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2$1;-><init>(Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed To get updateLog from db !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
