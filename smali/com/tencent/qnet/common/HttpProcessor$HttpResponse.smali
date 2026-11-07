.class public Lcom/tencent/qnet/common/HttpProcessor$HttpResponse;
.super Ljava/lang/Object;
.source "HttpProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/common/HttpProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HttpResponse"
.end annotation


# instance fields
.field public data:Ljava/lang/String;

.field public state:I

.field final synthetic this$0:Lcom/tencent/qnet/common/HttpProcessor;


# direct methods
.method public constructor <init>(Lcom/tencent/qnet/common/HttpProcessor;ILjava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tencent/qnet/common/HttpProcessor$HttpResponse;->this$0:Lcom/tencent/qnet/common/HttpProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lcom/tencent/qnet/common/HttpProcessor$HttpResponse;->state:I

    .line 41
    iput-object p3, p0, Lcom/tencent/qnet/common/HttpProcessor$HttpResponse;->data:Ljava/lang/String;

    return-void
.end method
