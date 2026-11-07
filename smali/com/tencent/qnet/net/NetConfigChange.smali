.class public Lcom/tencent/qnet/net/NetConfigChange;
.super Ljava/lang/Object;
.source "NetConfigChange.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static Instance:Lcom/tencent/qnet/net/NetConfigChange;


# instance fields
.field private m_config:Lcom/tencent/qnet/net/NetworkConfig;

.field private m_profile:Lcom/tencent/qnet/net/NetProfile;

.field private m_running:Z

.field private m_thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/tencent/qnet/net/NetConfigChange;

    invoke-direct {v0}, Lcom/tencent/qnet/net/NetConfigChange;-><init>()V

    sput-object v0, Lcom/tencent/qnet/net/NetConfigChange;->Instance:Lcom/tencent/qnet/net/NetConfigChange;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_config:Lcom/tencent/qnet/net/NetworkConfig;

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_running:Z

    .line 19
    iput-object v0, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    .line 25
    invoke-static {}, Lcom/tencent/qnet/net/NetworkConfig;->Instnace()Lcom/tencent/qnet/net/NetworkConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_config:Lcom/tencent/qnet/net/NetworkConfig;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 54
    :goto_0
    :try_start_0
    iget-boolean v0, v1, Lcom/tencent/qnet/net/NetConfigChange;->m_running:Z

    if-eqz v0, :cond_6

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    invoke-static {}, Lcom/tencent/qnet/net/NetProfile;->getSortedList()Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 61
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 63
    iget-object v8, v1, Lcom/tencent/qnet/net/NetConfigChange;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    invoke-virtual {v8, v7}, Lcom/tencent/qnet/net/NetProfile;->getParam(Ljava/lang/String;)Lcom/tencent/qnet/net/NetProfile$Param;

    move-result-object v7

    .line 64
    invoke-virtual {v7}, Lcom/tencent/qnet/net/NetProfile$Param;->getChange()Lcom/tencent/qnet/net/NetProfile$Param$Change;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 67
    iget-object v9, v1, Lcom/tencent/qnet/net/NetConfigChange;->m_config:Lcom/tencent/qnet/net/NetworkConfig;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    iget-object v10, v7, Lcom/tencent/qnet/net/NetProfile$Param;->Name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 68
    iget-object v10, v1, Lcom/tencent/qnet/net/NetConfigChange;->m_config:Lcom/tencent/qnet/net/NetworkConfig;

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v10

    .line 69
    iget v11, v8, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Max:I

    invoke-virtual {v7}, Lcom/tencent/qnet/net/NetProfile$Param;->getIntValue()I

    move-result v12

    if-gt v11, v12, :cond_0

    goto :goto_3

    .line 73
    :cond_0
    invoke-virtual {v7}, Lcom/tencent/qnet/net/NetProfile$Param;->getIntValue()I

    move-result v11

    move v13, v11

    move-wide v11, v2

    :goto_2
    const/4 v14, 0x0

    sub-long v14, v4, v11

    move-object/from16 v16, v0

    .line 74
    iget v0, v8, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Interval:I

    move-wide/from16 v17, v2

    int-to-long v2, v0

    cmp-long v0, v14, v2

    if-lez v0, :cond_2

    .line 75
    iget v0, v8, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Interval:I

    int-to-long v2, v0

    add-long/2addr v11, v2

    .line 76
    iget v0, v8, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Delta:I

    add-int/2addr v13, v0

    .line 77
    iget v0, v8, Lcom/tencent/qnet/net/NetProfile$Param$Change;->Max:I

    if-le v13, v0, :cond_1

    .line 79
    invoke-virtual {v7}, Lcom/tencent/qnet/net/NetProfile$Param;->getIntValue()I

    move-result v13

    :cond_1
    move-object/from16 v0, v16

    move-wide/from16 v2, v17

    goto :goto_2

    :cond_2
    if-eq v13, v10, :cond_4

    .line 83
    iget-object v0, v1, Lcom/tencent/qnet/net/NetConfigChange;->m_config:Lcom/tencent/qnet/net/NetworkConfig;

    invoke-virtual {v9, v0, v13}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    goto :goto_4

    :cond_3
    :goto_3
    move-object/from16 v16, v0

    move-wide/from16 v17, v2

    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v16

    move-wide/from16 v2, v17

    goto :goto_1

    :cond_5
    move-wide/from16 v17, v2

    const-wide/16 v2, 0x1

    .line 88
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v2, v17

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    sget-object v2, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exce : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public setCurrentProfile(Lcom/tencent/qnet/net/NetProfile;)V
    .locals 0

    .line 30
    invoke-virtual {p1}, Lcom/tencent/qnet/net/NetProfile;->clone()Lcom/tencent/qnet/net/NetProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_profile:Lcom/tencent/qnet/net/NetProfile;

    return-void
.end method

.method public start()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_thread:Ljava/lang/Thread;

    .line 37
    iget-object v0, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_running:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_running:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/tencent/qnet/net/NetConfigChange;->m_thread:Ljava/lang/Thread;

    return-void
.end method
