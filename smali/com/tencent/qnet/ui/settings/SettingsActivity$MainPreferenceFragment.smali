.class public Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/settings/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainPreferenceFragment"
.end annotation


# instance fields
.field m_switchChangeListner:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$1;-><init>(Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;)V

    iput-object v0, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->m_switchChangeListner:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private getAboutDataFromDB(ILandroid/app/Activity;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;-><init>(Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;ILandroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130002

    .line 58
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->addPreferencesFromResource(I)V

    const p1, 0x7f10009f

    .line 62
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qnet/common/SystemUtil;->getAppVersionInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "v%s"

    const/4 v2, 0x1

    .line 64
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const p1, 0x7f10009a

    .line 66
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 67
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/global/GlobalSettings;->showFWCtrl()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 68
    iget-object v1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->m_switchChangeListner:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const p1, 0x7f10009b

    .line 70
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 71
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/global/GlobalSettings;->showFWInfo()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 72
    iget-object v1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->m_switchChangeListner:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 74
    iget p1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p0}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getAboutDataFromDB(ILandroid/app/Activity;)V

    const p1, 0x7f100099

    .line 76
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    .line 77
    invoke-static {}, Lcom/tencent/qnet/global/GlobalSettings;->getInstance()Lcom/tencent/qnet/global/GlobalSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/global/GlobalSettings;->dumpPcap()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 78
    iget-object v0, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->m_switchChangeListner:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const v0, 0x7f1000a1

    .line 79
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/qnet/global/QnetApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
