.class Lcom/mysql/jdbc/ConnectionImpl$7;
.super Lcom/mysql/jdbc/IterateBlock;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->setAutoCommit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/IterateBlock<",
        "Lcom/mysql/jdbc/Extension;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/ConnectionImpl;

.field final synthetic val$autoCommitFlag:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4780
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$7;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    iput-boolean p3, p0, Lcom/mysql/jdbc/ConnectionImpl$7;->val$autoCommitFlag:Z

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/IterateBlock;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method forEach(Lcom/mysql/jdbc/Extension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4781
    check-cast p1, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;

    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionImpl$7;->val$autoCommitFlag:Z

    invoke-interface {p1, v0}, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;->setAutoCommit(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4782
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl$7;->stopIterating:Z

    :cond_0
    return-void
.end method

.method bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4780
    check-cast p1, Lcom/mysql/jdbc/Extension;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl$7;->forEach(Lcom/mysql/jdbc/Extension;)V

    return-void
.end method
