.class Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;
.super Landroid/os/Handler;
.source "WebQQLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WebQQLoginHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 192
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;->mContext:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 206
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoginWebQQResult is error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 203
    :pswitch_0
    sget-object p1, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebQQLogin Fail : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;->mContext:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-static {v1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->access$300(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Lcom/tencent/qnet/ui/login/model/ConnInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qnet/ui/login/model/ConnInfo;->getResult()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :pswitch_1
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;->mContext:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->access$102(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;Z)Z

    .line 199
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;->mContext:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-virtual {p1}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->finish()V

    .line 200
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;->mContext:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    iget-object v0, p0, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity$WebQQLoginHandler;->mContext:Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;

    invoke-static {v0}, Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;->access$300(Lcom/tencent/qnet/ui/login/activity/WebQQLoginActivity;)Lcom/tencent/qnet/ui/login/model/ConnInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qnet/ui/login/model/ConnInfo;->getResult()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/qnet/ui/login/manager/LoginManager;->autoLoginSuccess(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
