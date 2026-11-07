.class public Lcom/tencent/qnet/ui/settings/SettingsActivity;
.super Lcom/tencent/qnet/ui/AppCompatPreferenceActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsActivity"

.field private static sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    new-instance v0, Lcom/tencent/qnet/ui/settings/SettingsActivity$1;

    invoke-direct {v0}, Lcom/tencent/qnet/ui/settings/SettingsActivity$1;-><init>()V

    sput-object v0, Lcom/tencent/qnet/ui/settings/SettingsActivity;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/tencent/qnet/ui/AppCompatPreferenceActivity;-><init>()V

    return-void
.end method

.method private static bindPreferenceSummaryToValue(Landroid/preference/Preference;)V
    .locals 4

    .line 123
    sget-object v0, Lcom/tencent/qnet/ui/settings/SettingsActivity;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 125
    sget-object v0, Lcom/tencent/qnet/ui/settings/SettingsActivity;->sBindPreferenceSummaryToValueListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 127
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Lcom/tencent/qnet/ui/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/settings/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;

    invoke-direct {v0}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;-><init>()V

    const v1, 0x1020002

    invoke-virtual {p1, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/settings/SettingsActivity;->onBackPressed()V

    .line 119
    :cond_0
    invoke-super {p0, p1}, Lcom/tencent/qnet/ui/AppCompatPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
