.class Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;
.super Ljava/lang/ref/PhantomReference;
.source "NonRegisteringDriver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/NonRegisteringDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectionPhantomReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Lcom/mysql/jdbc/ConnectionImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private io:Lcom/mysql/jdbc/NetworkResources;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/mysql/jdbc/ConnectionImpl;",
            ">;)V"
        }
    .end annotation

    .line 892
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 895
    :try_start_0
    invoke-virtual {p1}, Lcom/mysql/jdbc/ConnectionImpl;->getIO()Lcom/mysql/jdbc/MysqlIO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/jdbc/MysqlIO;->getNetworkResources()Lcom/mysql/jdbc/NetworkResources;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 902
    iget-object v0, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;

    invoke-virtual {v1}, Lcom/mysql/jdbc/NetworkResources;->forceClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iput-object v0, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/mysql/jdbc/NonRegisteringDriver$ConnectionPhantomReference;->io:Lcom/mysql/jdbc/NetworkResources;

    .line 906
    throw v1

    :cond_0
    :goto_0
    return-void
.end method
