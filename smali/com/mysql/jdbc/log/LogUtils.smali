.class public Lcom/mysql/jdbc/log/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final CALLER_INFORMATION_NOT_AVAILABLE:Ljava/lang/String; = "Caller information not available"

.field private static final LINE_SEPARATOR:Ljava/lang/String;

.field private static final LINE_SEPARATOR_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 33
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandProfilerEventIfNecessary(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 39
    instance-of v0, p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    check-cast p0, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    .line 44
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getEventCreationPointAsString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "Profiler Event: ["

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getEventType()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v2, "UNKNOWN"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v2, "SLOW QUERY"

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v2, "FETCH"

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v2, "EXECUTE"

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v2, "QUERY"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v2, "PREPARE"

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v2, "CONSTRUCT"

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    const-string v2, "WARN"

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v2, "] "

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " duration: "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getEventDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getDurationUnits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connection-id: "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getConnectionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", statement-id: "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getStatementId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultset-id: "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getResultSetId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p0}, Lcom/mysql/jdbc/profiler/ProfilerEvent;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, ", message: "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-object v0

    :cond_2
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .line 119
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Caller information not available"

    const-string v1, "com.mysql.jdbc"

    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v3, "com.mysql.jdbc.compliance"

    .line 127
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 130
    sget v1, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    sub-int/2addr v3, v1

    goto :goto_0

    .line 132
    :cond_0
    sget-object v3, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    :goto_0
    if-eq v3, v2, :cond_2

    .line 136
    sget-object v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR:Ljava/lang/String;

    sget v1, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    add-int/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 139
    sget v1, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 141
    :cond_1
    sget v0, Lcom/mysql/jdbc/log/LogUtils;->LINE_SEPARATOR_LENGTH:I

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    const-string p0, "\tat "

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "at "

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "at "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method
