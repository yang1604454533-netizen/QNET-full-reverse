.class public Lcom/mysql/jdbc/log/Slf4JLogger;
.super Ljava/lang/Object;
.source "Slf4JLogger.java"

# interfaces
.implements Lcom/mysql/jdbc/log/Log;


# instance fields
.field private log:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public isDebugEnabled()Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isFatalEnabled()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public logDebug(Ljava/lang/Object;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public logDebug(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logError(Ljava/lang/Object;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public logError(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logFatal(Ljava/lang/Object;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public logFatal(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logInfo(Ljava/lang/Object;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public logInfo(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logTrace(Ljava/lang/Object;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;)V

    return-void
.end method

.method public logTrace(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public logWarn(Ljava/lang/Object;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public logWarn(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mysql/jdbc/log/Slf4JLogger;->log:Lorg/slf4j/Logger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
