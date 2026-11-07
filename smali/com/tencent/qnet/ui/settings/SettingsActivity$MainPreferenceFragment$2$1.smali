.class Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;

.field final synthetic val$updateLog:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2$1;->this$1:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;

    iput-object p2, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2$1;->val$updateLog:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2$1;->this$1:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;

    iget-object v0, v0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;->this$0:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;

    iget-object v1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2$1;->this$1:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;

    iget-object v1, v1, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2;->this$0:Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;

    const v2, 0x7f10009c

    invoke-virtual {v1, v2}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/tencent/qnet/ui/settings/SettingsActivity$MainPreferenceFragment$2$1;->val$updateLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
