.class Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;
.super Ljava/lang/Object;
.source "WebQQLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebQQLoginRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 217
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable$1;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable$1;-><init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginRunnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 229
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
