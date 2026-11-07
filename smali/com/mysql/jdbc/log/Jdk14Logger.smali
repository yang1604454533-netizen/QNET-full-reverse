.class public Lcom/mysql/jdbc/log/Jdk14Logger;
.super Ljava/lang/Object;
.source "Jdk14Logger.java"

# interfaces
.implements Lcom/mysql/jdbc/log/Log;


# static fields
.field private static final DEBUG:Ljava/util/logging/Level;

.field private static final ERROR:Ljava/util/logging/Level;

.field private static final FATAL:Ljava/util/logging/Level;

.field private static final INFO:Ljava/util/logging/Level;

.field private static final TRACE:Ljava/util/logging/Level;

.field private static final WARN:Ljava/util/logging/Level;


# instance fields
.field protected jdkLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->DEBUG:Ljava/util/logging/Level;

    .line 37
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->ERROR:Ljava/util/logging/Level;

    .line 39
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->FATAL:Ljava/util/logging/Level;

    .line 41
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->INFO:Ljava/util/logging/Level;

    .line 43
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->TRACE:Ljava/util/logging/Level;

    .line 45
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sput-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->WARN:Ljava/util/logging/Level;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    .line 58
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    return-void
.end method

.method private static final findCallerStackDepth([Ljava/lang/StackTraceElement;)I
    .locals 5

    .line 236
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 239
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mysql.jdbc"

    .line 241
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.mysql.jdbc.compliance"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v2

    :cond_2
    return v1
.end method

.method private logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9

    .line 254
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "N/A"

    const-string v1, "N/A"

    .line 261
    instance-of v2, p2, Lcom/mysql/jdbc/profiler/ProfilerEvent;

    if-eqz v2, :cond_0

    .line 262
    invoke-static {p2}, Lcom/mysql/jdbc/log/LogUtils;->expandProfilerEventIfNecessary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v6, p2

    move-object v5, v0

    move-object v4, v1

    goto :goto_1

    .line 264
    :cond_0
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 265
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 267
    invoke-static {v2}, Lcom/mysql/jdbc/log/Jdk14Logger;->findCallerStackDepth([Ljava/lang/StackTraceElement;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 270
    aget-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 271
    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 276
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    if-nez p3, :cond_2

    .line 280
    iget-object p2, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    invoke-virtual {p2, p1, v4, v5, v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 282
    :cond_2
    iget-object v2, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    move-object v3, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/mysql/jdbc/log/Jdk14Logger;->jdkLogger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    return v0
.end method

.method public logDebug(Ljava/lang/Object;)V
    .locals 2

    .line 110
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->DEBUG:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 122
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->DEBUG:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logError(Ljava/lang/Object;)V
    .locals 2

    .line 132
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->ERROR:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 144
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->ERROR:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logFatal(Ljava/lang/Object;)V
    .locals 2

    .line 154
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->FATAL:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logFatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 166
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->FATAL:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logInfo(Ljava/lang/Object;)V
    .locals 2

    .line 176
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->INFO:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 188
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logTrace(Ljava/lang/Object;)V
    .locals 2

    .line 198
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->TRACE:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 210
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->TRACE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logWarn(Ljava/lang/Object;)V
    .locals 2

    .line 220
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->WARN:Ljava/util/logging/Level;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 232
    sget-object v0, Lcom/mysql/jdbc/log/Jdk14Logger;->WARN:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/mysql/jdbc/log/Jdk14Logger;->logInternal(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method
