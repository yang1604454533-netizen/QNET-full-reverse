.class public Lcom/tencent/qnet/core/CommandUtil;
.super Ljava/lang/Object;
.source "CommandUtil.java"


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field private static m_results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/qnet/core/CommandUtil;->m_results:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetPingTime(Ljava/lang/String;)I
    .locals 5

    const-string v0, "/system/bin/ping -c 5 %s"

    const/4 v1, 0x1

    .line 117
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {p0}, Lcom/tencent/qnet/core/CommandUtil;->execute(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 119
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "time="

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const-string v3, "time="

    .line 127
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    const-string v3, " ms"

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 129
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    if-ne v3, v4, :cond_0

    .line 131
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 134
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 135
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 145
    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 146
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 147
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static execute(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/tencent/qnet/core/CommandUtil;->execute([Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static execute([Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/tencent/qnet/core/CommandUtil;->m_results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 50
    array-length v1, p0

    if-nez v1, :cond_0

    goto/16 :goto_1b

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute command start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qnet/core/CommandUtil;->debug(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 61
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "sh"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 62
    :try_start_1
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 63
    :try_start_2
    array-length v5, p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    aget-object v7, p0, v6

    if-nez v7, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->write([B)V

    const-string v7, "\n"

    .line 68
    invoke-virtual {v4, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "exit\n"

    .line 71
    invoke-virtual {v4, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 74
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 76
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 77
    :try_start_4
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 78
    :try_start_5
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 80
    :goto_2
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    sget-object v7, Lcom/tencent/qnet/core/CommandUtil;->m_results:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " command line item : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qnet/core/CommandUtil;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 84
    :cond_3
    :goto_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 85
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 95
    :cond_4
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 98
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 101
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    if-eqz v3, :cond_5

    .line 108
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :cond_5
    move v4, p0

    goto/16 :goto_15

    :catchall_0
    move-exception p0

    goto/16 :goto_16

    :catch_1
    move-exception v0

    move-object v9, v4

    move v4, p0

    move-object p0, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v9, v4

    move v4, p0

    move-object p0, v0

    goto :goto_6

    :catchall_1
    move-exception p0

    move-object v6, v0

    goto/16 :goto_16

    :catch_3
    move-exception v6

    move-object v9, v4

    move v4, p0

    move-object p0, v6

    move-object v6, v0

    :goto_5
    move-object v0, v9

    goto/16 :goto_a

    :catch_4
    move-exception v6

    move-object v9, v4

    move v4, p0

    move-object p0, v6

    move-object v6, v0

    :goto_6
    move-object v0, v9

    goto/16 :goto_11

    :catch_5
    move-exception v5

    move-object v6, v0

    move-object v0, v4

    move v4, p0

    move-object p0, v5

    move-object v5, v6

    goto/16 :goto_a

    :catch_6
    move-exception v5

    move-object v6, v0

    move-object v0, v4

    move v4, p0

    move-object p0, v5

    move-object v5, v6

    goto/16 :goto_11

    :catch_7
    move-exception v2

    move-object v5, v0

    move-object v6, v5

    move-object v0, v4

    move v4, p0

    move-object p0, v2

    move-object v2, v6

    goto :goto_a

    :catch_8
    move-exception v2

    move-object v5, v0

    move-object v6, v5

    move-object v0, v4

    move v4, p0

    move-object p0, v2

    move-object v2, v6

    goto/16 :goto_11

    :catchall_2
    move-exception p0

    move-object v6, v0

    goto/16 :goto_17

    :catch_9
    move-exception p0

    move-object v2, v0

    move-object v5, v2

    move-object v6, v5

    move-object v0, v4

    goto :goto_9

    :catch_a
    move-exception p0

    move-object v2, v0

    move-object v5, v2

    move-object v6, v5

    move-object v0, v4

    goto :goto_10

    :catchall_3
    move-exception p0

    move-object v4, v0

    goto :goto_7

    :catch_b
    move-exception p0

    move-object v2, v0

    move-object v5, v2

    goto :goto_8

    :catch_c
    move-exception p0

    move-object v2, v0

    move-object v5, v2

    goto :goto_f

    :catchall_4
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    :goto_7
    move-object v6, v4

    goto/16 :goto_17

    :catch_d
    move-exception p0

    move-object v2, v0

    move-object v3, v2

    move-object v5, v3

    :goto_8
    move-object v6, v5

    :goto_9
    const/4 v4, -0x1

    .line 91
    :goto_a
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v0, :cond_6

    .line 95
    :try_start_9
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_b

    :catch_e
    move-exception p0

    goto :goto_c

    :cond_6
    :goto_b
    if-eqz v5, :cond_7

    .line 98
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_7
    if-eqz v6, :cond_8

    .line 101
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    goto :goto_d

    .line 104
    :goto_c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_d
    if-eqz v3, :cond_c

    .line 108
    :goto_e
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    goto :goto_15

    :catch_f
    move-exception p0

    move-object v2, v0

    move-object v3, v2

    move-object v5, v3

    :goto_f
    move-object v6, v5

    :goto_10
    const/4 v4, -0x1

    .line 89
    :goto_11
    :try_start_a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    if-eqz v0, :cond_9

    .line 95
    :try_start_b
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_12

    :catch_10
    move-exception p0

    goto :goto_13

    :cond_9
    :goto_12
    if-eqz v5, :cond_a

    .line 98
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_a
    if-eqz v6, :cond_b

    .line 101
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_10

    goto :goto_14

    .line 104
    :goto_13
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_14
    if-eqz v3, :cond_c

    goto :goto_e

    .line 111
    :cond_c
    :goto_15
    sget-object p0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v0, "execute command end,errorMsg:%s,and status %d: "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v3, v2

    invoke-static {p0, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tencent/qnet/core/CommandUtil;->debug(Ljava/lang/String;)V

    .line 112
    sget-object p0, Lcom/tencent/qnet/core/CommandUtil;->m_results:Ljava/util/List;

    return-object p0

    :catchall_5
    move-exception p0

    move-object v4, v0

    :goto_16
    move-object v0, v5

    :goto_17
    if-eqz v4, :cond_d

    .line 95
    :try_start_c
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    goto :goto_18

    :catch_11
    move-exception v0

    goto :goto_19

    :cond_d
    :goto_18
    if-eqz v0, :cond_e

    .line 98
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_e
    if-eqz v6, :cond_f

    .line 101
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_1a

    .line 104
    :goto_19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_1a
    if-eqz v3, :cond_10

    .line 108
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 110
    :cond_10
    throw p0

    :cond_11
    :goto_1b
    return-object v0
.end method
