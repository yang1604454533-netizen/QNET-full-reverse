.class public Lcom/mysql/jdbc/log/StandardLogger;
.super Ljava/lang/Object;
.source "StandardLogger.java"

# interfaces
.implements Lcom/mysql/jdbc/log/Log;


# static fields
.field private static final DEBUG:I = 0x4

.field private static final ERROR:I = 0x1

.field private static final FATAL:I = 0x0

.field private static final INFO:I = 0x3

.field private static final TRACE:I = 0x5

.field private static final WARN:I = 0x2

.field private static bufferedLog:Ljava/lang/StringBuffer;


# instance fields
.field private logLocationInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/mysql/jdbc/log/StandardLogger;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/mysql/jdbc/log/StandardLogger;->logLocationInfo:Z

    .line 66
    iput-boolean p2, p0, Lcom/mysql/jdbc/log/StandardLogger;->logLocationInfo:Z

    return-void
.end method

.method public static dropBuffer()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static getBuffer()Ljava/lang/Appendable;
    .locals 1

    .line 78
    sget-object v0, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public static startLoggingToBuffer()V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public logDebug(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x4

    .line 142
    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logError(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    .line 164
    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logFatal(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logFatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logInfo(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x3

    .line 208
    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "TRACE: "

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "DEBUG: "

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "INFO: "

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "WARN: "

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v1, "ERROR: "

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v1, "FATAL: "

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :goto_0
    instance-of v1, p2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    if-eqz v1, :cond_0

    .line 293
    invoke-static {p2}, Lcom/mysql/jdbc/log/LogUtils;->expandProfilerEventIfNecessary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 296
    :cond_0
    iget-boolean v1, p0, Lcom/mysql/jdbc/log/StandardLogger;->logLocationInfo:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    .line 297
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 298
    invoke-static {p1}, Lcom/mysql/jdbc/log/LogUtils;->findCallingClassAndMethod(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    .line 299
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p2, :cond_2

    .line 303
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    const-string p1, "\n"

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 309
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "EXCEPTION STACK TRACE:"

    .line 310
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 311
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    .line 312
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {p3}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 318
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    sget-object p2, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    if-eqz p2, :cond_4

    .line 321
    sget-object p2, Lcom/mysql/jdbc/log/StandardLogger;->bufferedLog:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logTrace(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 218
    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    .line 230
    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logWarn(Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 240
    invoke-virtual {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x2

    .line 252
    invoke-virtual {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/StandardLogger;->logInternal(ILjava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
