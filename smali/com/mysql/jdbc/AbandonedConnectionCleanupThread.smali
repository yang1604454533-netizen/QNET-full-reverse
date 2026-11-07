.class public Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;
.super Ljava/lang/Object;
.source "AbandonedConnectionCleanupThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

.field static threadRef:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$1;

    invoke-direct {v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread$1;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

    .line 54
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;

    invoke-direct {v1}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkContextClassLoaders()V
    .locals 2

    .line 90
    :try_start_0
    sget-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    invoke-static {}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->uncheckedShutdown()V

    :goto_0
    return-void
.end method

.method public static checkedShutdown()V
    .locals 1

    const/4 v0, 0x1

    .line 113
    invoke-static {v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->shutdown(Z)V

    return-void
.end method

.method private static consistentClassLoaders()Z
    .locals 2

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static shutdown()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    invoke-static {}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->checkedShutdown()V

    return-void
.end method

.method private static shutdown(Z)V
    .locals 0

    if-eqz p0, :cond_0

    .line 130
    invoke-static {}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->consistentClassLoaders()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 135
    :cond_0
    sget-object p0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->cleanupThreadExcecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public static uncheckedShutdown()V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-static {v0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->shutdown(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 63
    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->checkContextClassLoaders()V

    .line 64
    sget-object v0, Lcom/mysql/jdbc/NonRegisteringDriver;->refQueue:Ljava/lang/ref/ReferenceQueue;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Ljava/lang/ref/ReferenceQueue;->remove(J)Ljava/lang/ref/Reference;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 67
    :try_start_1
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;

    invoke-virtual {v1}, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->cleanup()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    sget-object v1, Lcom/mysql/jdbc/NonRegisteringDriver;->connectionPhantomRefs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/mysql/jdbc/NonRegisteringDriver;->connectionPhantomRefs:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_1
    const/4 v0, 0x0

    .line 74
    sput-object v0, Lcom/mysql/jdbc/AbandonedConnectionCleanupThread;->threadRef:Ljava/lang/Thread;

    return-void
.end method
