.class public Lcom/tencent/qnet/net/StatManager$Info;
.super Ljava/lang/Object;
.source "StatManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/net/StatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation


# instance fields
.field public InCount:I

.field public InSize:I

.field public OutCount:I

.field public OutSize:I

.field final synthetic this$0:Lcom/tencent/qnet/net/StatManager;


# direct methods
.method public constructor <init>(Lcom/tencent/qnet/net/StatManager;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/tencent/qnet/net/StatManager$Info;->this$0:Lcom/tencent/qnet/net/StatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
