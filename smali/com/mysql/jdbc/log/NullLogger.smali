.class public Lcom/mysql/jdbc/log/NullLogger;
.super Ljava/lang/Object;
.source "NullLogger.java"

# interfaces
.implements Lcom/mysql/jdbc/log/Log;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public logDebug(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public logError(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public logFatal(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public logFatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public logInfo(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public logTrace(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public logWarn(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
