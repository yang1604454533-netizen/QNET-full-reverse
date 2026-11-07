.class Lcom/tencent/qnet/ui/AppManager$1;
.super Ljava/lang/Object;
.source "AppManager.java"

# interfaces
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qnet/ui/AppManager;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Ljava/util/List<",
        "Lcom/tencent/qnet/ui/AppInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/AppManager;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/AppManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/tencent/qnet/ui/AppManager$1;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public subscribe(Lio/reactivex/ObservableEmitter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Ljava/util/List<",
            "Lcom/tencent/qnet/ui/AppInfo;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppManager$1;->this$0:Lcom/tencent/qnet/ui/AppManager;

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/AppManager;->queryAppInfo()V

    .line 73
    iget-object v0, p0, Lcom/tencent/qnet/ui/AppManager$1;->this$0:Lcom/tencent/qnet/ui/AppManager;

    new-instance v1, Lcom/tencent/qnet/ui/AppManagerAdapter;

    invoke-direct {v1}, Lcom/tencent/qnet/ui/AppManagerAdapter;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/qnet/ui/AppManager;->access$002(Lcom/tencent/qnet/ui/AppManager;Lcom/tencent/qnet/ui/AppManagerAdapter;)Lcom/tencent/qnet/ui/AppManagerAdapter;

    .line 74
    invoke-interface {p1}, Lio/reactivex/ObservableEmitter;->onComplete()V

    return-void
.end method
