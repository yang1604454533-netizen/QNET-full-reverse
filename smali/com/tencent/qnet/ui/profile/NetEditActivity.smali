.class public Lcom/tencent/qnet/ui/profile/NetEditActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "NetEditActivity.java"


# static fields
.field public static final ACTIVITY_CODE:I = 0x927


# instance fields
.field m_listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/profile/NetEditBaseItem;",
            ">;"
        }
    .end annotation
.end field

.field m_new:Z

.field m_profile:Lcom/tencent/qnet/net/NetProfile;

.field m_select:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_listItems:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_new:Z

    .line 37
    iput-boolean v0, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_select:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qnet/ui/profile/NetEditActivity;Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->saveProfile(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$101(Lcom/tencent/qnet/ui/profile/NetEditActivity;)V
    .locals 0

    .line 31
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method private initNetProfileUI()V
    .locals 12

    .line 122
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ID"

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Select"

    const/4 v3, 0x0

    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_select:Z

    const v0, 0x7f090026

    .line 126
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f090025

    .line 127
    invoke-virtual {p0, v2}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v4, 0x7f090084

    .line 128
    invoke-virtual {p0, v4}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f09006a

    .line 129
    invoke-virtual {p0, v5}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f090072

    .line 130
    invoke-virtual {p0, v6}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    const v7, 0x7f0900ed

    .line 131
    invoke-virtual {p0, v7}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 133
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 136
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v9

    invoke-virtual {v9, v1}, Lcom/tencent/qnet/profile/ProposalManager;->GetProposalById(Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    .line 137
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    iget-boolean v1, v1, Lcom/tencent/qnet/net/NetProfile;->Preset:Z

    .line 140
    iget-object v8, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    iget-object v8, v8, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v7, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    iget-object v7, v7, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_0
    xor-int/lit8 v4, v1, 0x1

    .line 147
    invoke-static {v5, v4}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->setEnabledAll(Landroid/view/View;Z)V

    xor-int/lit8 v4, v1, 0x1

    .line 148
    invoke-static {v6, v4}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->setEnabledAll(Landroid/view/View;Z)V

    goto :goto_0

    .line 152
    :cond_1
    iput-boolean v9, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_new:Z

    .line 153
    invoke-static {p0}, Lcom/tencent/qnet/net/NetProfile;->createDefault(Landroid/content/Context;)Lcom/tencent/qnet/net/NetProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    .line 155
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    iget-object v1, v1, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f1000b3

    .line 156
    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 161
    :goto_0
    invoke-static {}, Lcom/tencent/qnet/net/NetProfile;->getSortedList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 162
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 164
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 165
    iget-object v8, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    invoke-virtual {v8, v7}, Lcom/tencent/qnet/net/NetProfile;->getParam(Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tencent/qnet/net/NetProfile$Param;->getIntValue()I

    move-result v8

    .line 167
    iget-object v10, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_listItems:Ljava/util/List;

    new-instance v11, Lcom/tencent/qnet/ui/profile/NetEditTextItem;

    invoke-direct {v11, v7, v8}, Lcom/tencent/qnet/ui/profile/NetEditTextItem;-><init>(Ljava/lang/String;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 170
    :cond_2
    new-instance v4, Lcom/tencent/qnet/ui/profile/NetEditAdapter;

    iget-object v5, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_listItems:Ljava/util/List;

    invoke-direct {v4, p0, v5}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    if-nez v1, :cond_3

    const/4 v3, 0x1

    .line 171
    :cond_3
    invoke-virtual {v4, v3}, Lcom/tencent/qnet/ui/profile/NetEditAdapter;->setEnabled(Z)V

    .line 172
    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 174
    new-instance v1, Lcom/tencent/qnet/ui/profile/NetEditActivity$3;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity$3;-><init>(Lcom/tencent/qnet/ui/profile/NetEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    new-instance v0, Lcom/tencent/qnet/ui/profile/NetEditActivity$4;

    invoke-direct {v0, p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity$4;-><init>(Lcom/tencent/qnet/ui/profile/NetEditActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isProfileChanged(Lcom/tencent/qnet/net/NetProfile;Lcom/tencent/qnet/net/NetProfile;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    iget-object v1, p1, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    iget-object v2, p2, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 82
    :cond_1
    invoke-static {}, Lcom/tencent/qnet/net/NetProfile;->getSortedList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 84
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 86
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 88
    invoke-virtual {p1, v4}, Lcom/tencent/qnet/net/NetProfile;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-virtual {p2, v4}, Lcom/tencent/qnet/net/NetProfile;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method private saveProfile(Landroid/content/Context;)V
    .locals 3

    .line 216
    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    invoke-direct {p0, v0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->updateProfileFromUI(Lcom/tencent/qnet/net/NetProfile;)V

    .line 220
    iget-boolean v0, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_new:Z

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/profile/ProposalManager;->AddProposal(Lcom/tencent/qnet/net/NetProfile;)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-static {}, Lcom/tencent/qnet/profile/ProposalManager;->GetInstance()Lcom/tencent/qnet/profile/ProposalManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    invoke-virtual {v0, v1}, Lcom/tencent/qnet/profile/ProposalManager;->EditProposal(Lcom/tencent/qnet/net/NetProfile;)V

    .line 225
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ID"

    .line 226
    iget-object v2, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    iget-object v2, v2, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 227
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 228
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private static setEnabledAll(Landroid/view/View;Z)V
    .locals 2

    .line 235
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 237
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 238
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 239
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->setEnabledAll(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateProfileFromUI(Lcom/tencent/qnet/net/NetProfile;)V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->getResources()Landroid/content/res/Resources;

    const v0, 0x7f0900ed

    .line 247
    invoke-virtual {p0, v0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 248
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 251
    :goto_0
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_listItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_listItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qnet/ui/profile/NetEditTextItem;

    .line 254
    invoke-virtual {v1}, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->getName()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {v1}, Lcom/tencent/qnet/ui/profile/NetEditTextItem;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-virtual {p1, v2}, Lcom/tencent/qnet/net/NetProfile;->getParam(Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;

    move-result-object v2

    .line 257
    iput-object v1, v2, Lcom/tencent/qnet/net/NetProfile$Param;->StringValue:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .line 42
    invoke-static {p0}, Lcom/tencent/qnet/net/NetProfile;->createDefault(Landroid/content/Context;)Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->updateProfileFromUI(Lcom/tencent/qnet/net/NetProfile;)V

    .line 45
    iget-object v1, p0, Lcom/tencent/qnet/ui/profile/NetEditActivity;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    invoke-direct {p0, v1, v0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->isProfileChanged(Lcom/tencent/qnet/net/NetProfile;Lcom/tencent/qnet/net/NetProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qnet/ui/profile/NetEditActivity$2;

    invoke-direct {v2, p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity$2;-><init>(Lcom/tencent/qnet/ui/profile/NetEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tencent/qnet/ui/profile/NetEditActivity$1;

    invoke-direct {v2, p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity$1;-><init>(Lcom/tencent/qnet/ui/profile/NetEditActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->access$101(Lcom/tencent/qnet/ui/profile/NetEditActivity;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 101
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 102
    invoke-virtual {p0, p1}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->setContentView(I)V

    .line 103
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 106
    invoke-direct {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->initNetProfileUI()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 111
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 117
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qnet/ui/profile/NetEditActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
