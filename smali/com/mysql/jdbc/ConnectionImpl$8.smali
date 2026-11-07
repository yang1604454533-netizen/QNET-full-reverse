.class Lcom/mysql/jdbc/ConnectionImpl$8;
.super Lcom/mysql/jdbc/IterateBlock;
.source "ConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/ConnectionImpl;->setCatalog(Ljava/lang/String;)V
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

.field final synthetic val$catalog:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/ConnectionImpl;Ljava/util/Iterator;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4862
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionImpl$8;->this$0:Lcom/mysql/jdbc/ConnectionImpl;

    iput-object p3, p0, Lcom/mysql/jdbc/ConnectionImpl$8;->val$catalog:Ljava/lang/String;

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

    .line 4863
    check-cast p1, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionImpl$8;->val$catalog:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/mysql/jdbc/ConnectionLifecycleInterceptor;->setCatalog(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4864
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionImpl$8;->stopIterating:Z

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

    .line 4862
    check-cast p1, Lcom/mysql/jdbc/Extension;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/ConnectionImpl$8;->forEach(Lcom/mysql/jdbc/Extension;)V

    return-void
.end method
