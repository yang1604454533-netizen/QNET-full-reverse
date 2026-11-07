.class public Lcom/tencent/qnet/common/XmlService;
.super Ljava/lang/Object;
.source "XmlService.java"


# static fields
.field private static final XML_FILE:Ljava/lang/String; = "net_template.xml"

.field private static m_dateFormat:Ljava/text/DateFormat;

.field private static s_default_profile:Lcom/tencent/qnet/net/NetProfile;

.field private static s_sortedParamList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_cache_xml:Ljava/io/File;

.field private m_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qnet/common/XmlService;->m_dateFormat:Ljava/text/DateFormat;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qnet/common/XmlService;->s_sortedParamList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "android.app.AppGlobals"

    .line 35
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInitialApplication"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 36
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/common/XmlService;->m_context:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/qnet/common/XmlService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "net_template.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/qnet/common/XmlService;->m_cache_xml:Ljava/io/File;

    .line 43
    invoke-virtual {p0}, Lcom/tencent/qnet/common/XmlService;->initDefaultProfile()V

    return-void
.end method

.method private getProposalParamsFromCache(Ljava/io/File;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 217
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    const-string v2, "UTF-8"

    .line 218
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/tencent/qnet/common/XmlService;->parseNetProfiles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getProposalParamsFromRes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/tencent/qnet/common/XmlService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f130000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 81
    invoke-direct {p0, v0}, Lcom/tencent/qnet/common/XmlService;->parseNetProfiles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private initDefaultNetProfile(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 164
    :try_start_0
    sget-object v0, Lcom/tencent/qnet/common/XmlService;->s_sortedParamList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 168
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_6

    const/4 v4, 0x2

    if-eq v0, v4, :cond_0

    goto/16 :goto_1

    .line 174
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "template"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    sget-object v0, Lcom/tencent/qnet/common/XmlService;->s_default_profile:Lcom/tencent/qnet/net/NetProfile;

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 178
    :cond_1
    invoke-static {}, Lcom/tencent/qnet/net/NetProfile;->createNew()Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    const-string v2, "name"

    .line 180
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    const-string v2, "desc"

    .line 181
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qnet/net/NetProfile;->Desc:Ljava/lang/String;

    const-string v2, "id"

    .line 182
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    const-string v2, "selected"

    .line 183
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    const-string v2, "preset"

    .line 184
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/tencent/qnet/net/NetProfile;->Preset:Z

    .line 185
    sget-object v2, Lcom/tencent/qnet/common/XmlService;->m_dateFormat:Ljava/text/DateFormat;

    const-string v4, "update_time"

    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    .line 186
    sput-object v0, Lcom/tencent/qnet/common/XmlService;->s_default_profile:Lcom/tencent/qnet/net/NetProfile;

    move-object v2, v0

    goto :goto_1

    .line 187
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "param"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "name"

    .line 188
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "value"

    .line 189
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    sget-object v4, Lcom/tencent/qnet/common/XmlService;->s_sortedParamList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-virtual {v2, v0, v3}, Lcom/tencent/qnet/net/NetProfile;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 193
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "change"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "delta"

    .line 194
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v4, "interval"

    .line 195
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "max"

    .line 196
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v3, :cond_5

    .line 198
    invoke-virtual {v3, v0, v4, v5}, Lcom/tencent/qnet/net/NetProfile$Param;->setChange(III)V

    goto :goto_1

    .line 199
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NetTemplate"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    :cond_5
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method

.method private parseNetProfiles(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation

    .line 113
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    const/4 v5, 0x1

    if-eq v0, v5, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_0

    goto/16 :goto_2

    .line 119
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "template"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/tencent/qnet/common/XmlService;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qnet/net/NetProfile;->createDefault(Landroid/content/Context;)Lcom/tencent/qnet/net/NetProfile;

    move-result-object v0

    const-string v3, "name"

    .line 122
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    const-string v3, "desc"

    .line 123
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/qnet/net/NetProfile;->Desc:Ljava/lang/String;

    const-string v3, "id"

    .line 124
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    const-string v3, "selected"

    .line 125
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    const-string v3, "preset"

    .line 126
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/tencent/qnet/net/NetProfile;->Preset:Z

    .line 127
    sget-object v3, Lcom/tencent/qnet/common/XmlService;->m_dateFormat:Ljava/text/DateFormat;

    const-string v5, "update_time"

    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    .line 128
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v0

    goto :goto_2

    .line 129
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "param"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "name"

    .line 130
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "value"

    .line 131
    invoke-interface {p1, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 133
    sget-object v5, Lcom/tencent/qnet/common/XmlService;->s_sortedParamList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 134
    invoke-virtual {v3, v0, v4}, Lcom/tencent/qnet/net/NetProfile;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    move-object v4, v0

    goto :goto_2

    .line 137
    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "change"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "delta"

    .line 138
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v5, "interval"

    .line 139
    invoke-interface {p1, v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "max"

    .line 140
    invoke-interface {p1, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v4, :cond_5

    .line 142
    invoke-virtual {v4, v0, v5, v6}, Lcom/tencent/qnet/net/NetProfile$Param;->setChange(III)V

    goto :goto_2

    .line 143
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "NetTemplate"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 151
    :cond_5
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    return-object v2
.end method

.method private writeNetProfile(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/qnet/net/NetProfile;)V
    .locals 4

    :try_start_0
    const-string v0, "template"

    const/4 v1, 0x0

    .line 263
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "name"

    .line 264
    iget-object v2, p2, Lcom/tencent/qnet/net/NetProfile;->Name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "selected"

    .line 265
    iget-boolean v2, p2, Lcom/tencent/qnet/net/NetProfile;->Selected:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "preset"

    .line 266
    iget-boolean v2, p2, Lcom/tencent/qnet/net/NetProfile;->Preset:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "desc"

    .line 267
    iget-object v2, p2, Lcom/tencent/qnet/net/NetProfile;->Desc:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "update_time"

    .line 268
    sget-object v2, Lcom/tencent/qnet/common/XmlService;->m_dateFormat:Ljava/text/DateFormat;

    iget-object v3, p2, Lcom/tencent/qnet/net/NetProfile;->UpdateTime:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "id"

    .line 269
    iget-object v2, p2, Lcom/tencent/qnet/net/NetProfile;->ID:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    .line 272
    :goto_0
    sget-object v2, Lcom/tencent/qnet/common/XmlService;->s_sortedParamList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 274
    sget-object v2, Lcom/tencent/qnet/common/XmlService;->s_sortedParamList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    invoke-virtual {p2, v2}, Lcom/tencent/qnet/net/NetProfile;->getParam(Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "0"

    .line 278
    invoke-virtual {p2, v2, v3}, Lcom/tencent/qnet/net/NetProfile;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;

    .line 279
    invoke-virtual {p2, v2}, Lcom/tencent/qnet/net/NetProfile;->getParam(Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;

    move-result-object v3

    .line 281
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/tencent/qnet/common/XmlService;->writeNetProfileParam(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/qnet/net/NetProfile$Param;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "template"

    .line 283
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private writeNetProfileParam(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/qnet/net/NetProfile$Param;)V
    .locals 3

    :try_start_0
    const-string v0, "param"

    const/4 v1, 0x0

    .line 296
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "name"

    .line 297
    iget-object v2, p2, Lcom/tencent/qnet/net/NetProfile$Param;->Name:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "value"

    .line 298
    iget-object v2, p2, Lcom/tencent/qnet/net/NetProfile$Param;->StringValue:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 299
    invoke-virtual {p2}, Lcom/tencent/qnet/net/NetProfile$Param;->getChange()Lcom/tencent/qnet/net/NetProfile$Param$Change;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "change"

    .line 301
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "delta"

    .line 302
    invoke-virtual {p2}, Lcom/tencent/qnet/net/NetProfile$Param;->getChange()Lcom/tencent/qnet/net/NetProfile$Param$Change;

    move-result-object v2

    iget v2, v2, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Delta:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "interval"

    .line 303
    invoke-virtual {p2}, Lcom/tencent/qnet/net/NetProfile$Param;->getChange()Lcom/tencent/qnet/net/NetProfile$Param$Change;

    move-result-object v2

    iget v2, v2, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Interval:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "max"

    .line 304
    invoke-virtual {p2}, Lcom/tencent/qnet/net/NetProfile$Param;->getChange()Lcom/tencent/qnet/net/NetProfile$Param$Change;

    move-result-object p2

    iget p2, p2, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Max:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p2, "change"

    .line 305
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    const-string p2, "param"

    .line 307
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteTemplateXml()V
    .locals 1

    .line 320
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/common/XmlService;->m_cache_xml:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/tencent/qnet/common/XmlService;->m_cache_xml:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 325
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getProposalParams()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;"
        }
    .end annotation

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/common/XmlService;->m_cache_xml:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/tencent/qnet/common/XmlService;->getProposalParamsFromRes()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tencent/qnet/common/XmlService;->m_cache_xml:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/tencent/qnet/common/XmlService;->getProposalParamsFromCache(Ljava/io/File;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "make sure NetTemplate.xml exists action going wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    return-object v0
.end method

.method public initDefaultProfile()V
    .locals 2

    .line 90
    sget-object v0, Lcom/tencent/qnet/common/XmlService;->s_default_profile:Lcom/tencent/qnet/net/NetProfile;

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qnet/common/XmlService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f130001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/tencent/qnet/common/XmlService;->initDefaultNetProfile(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 96
    sget-object v0, Lcom/tencent/qnet/common/XmlService;->s_default_profile:Lcom/tencent/qnet/net/NetProfile;

    sget-object v1, Lcom/tencent/qnet/common/XmlService;->s_sortedParamList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/tencent/qnet/net/NetProfile;->initDefault(Lcom/tencent/qnet/net/NetProfile;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public writeProposalParamsToCache(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/net/NetProfile;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 238
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/tencent/qnet/common/XmlService;->m_cache_xml:Ljava/io/File;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 239
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const-string v3, "UTF-8"

    .line 240
    invoke-interface {v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v3, "utf-8"

    const/4 v4, 0x1

    .line 242
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "NetTemplate"

    const/4 v4, 0x0

    .line 243
    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 247
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/qnet/net/NetProfile;

    .line 248
    invoke-direct {p0, v1, v3}, Lcom/tencent/qnet/common/XmlService;->writeNetProfile(Lorg/xmlpull/v1/XmlSerializer;Lcom/tencent/qnet/net/NetProfile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "NetTemplate"

    .line 250
    invoke-interface {v1, v4, p1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 251
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 253
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 254
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 256
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
