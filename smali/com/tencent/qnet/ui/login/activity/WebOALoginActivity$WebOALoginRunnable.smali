.class Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;
.super Ljava/lang/Object;
.source "WebOALoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebOALoginRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;->this$0:Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable$1;

    invoke-direct {v1, p0}, Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable$1;-><init>(Lcom/tencent/qnet/ui/login/activity/WebOALoginActivity$WebOALoginRunnable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
