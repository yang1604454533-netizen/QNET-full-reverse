.class Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$1;->this$0:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 44
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$1;->this$0:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;

    const v2, 0x7f10009b

    invoke-virtual {v1, v2}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/qnet/global/GlobalSettings;->setShowFWInfo(Z)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$1;->this$0:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;

    const v2, 0x7f10009a

    invoke-virtual {v1, v2}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/qnet/global/GlobalSettings;->setShowFWCtrl(Z)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$1;->this$0:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;

    const v1, 0x7f100099

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/tencent/qnet/global/GlobalSettings;->setDumpPcap(Z)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
