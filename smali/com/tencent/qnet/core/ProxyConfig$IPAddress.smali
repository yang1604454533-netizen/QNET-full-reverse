.class public Lcom/tencent/qnet/core/ProxyConfig$IPAddress;
.super Ljava/lang/Object;
.source "ProxyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/core/ProxyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IPAddress"
.end annotation


# instance fields
.field public final Address:Ljava/lang/String;

.field public final PrefixLength:I

.field final synthetic this$0:Lcom/tencent/qnet/core/ProxyConfig;


# direct methods
.method public constructor <init>(Lcom/tencent/qnet/core/ProxyConfig;Ljava/lang/String;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->this$0:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "/"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 67
    aget-object p2, p1, p2

    .line 69
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 70
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    .line 72
    :goto_0
    iput-object p2, p0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->Address:Ljava/lang/String;

    .line 73
    iput p1, p0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->PrefixLength:I

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qnet/core/ProxyConfig;Ljava/lang/String;I)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->this$0:Lcom/tencent/qnet/core/ProxyConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->Address:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->PrefixLength:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "%s/%d"

    const/4 v1, 0x2

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->Address:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/tencent/qnet/core/ProxyConfig$IPAddress;->PrefixLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
