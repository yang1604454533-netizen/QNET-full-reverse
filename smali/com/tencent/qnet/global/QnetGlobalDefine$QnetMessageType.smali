.class public final enum Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;
.super Ljava/lang/Enum;
.source "QnetGlobalDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/global/QnetGlobalDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QnetMessageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

.field public static final enum MS_HTTP_REQUEST_ERR:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

.field public static final enum MS_NET_PROPOSAL_LOADED:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

.field public static final enum MS_NET_PROPOSAL_LOAD_FAILED:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

.field public static final enum MS_VERSION_UPDATE:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

.field public static final enum MS_VERSION_VERIFY_TIMEOUT:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    const-string v1, "MS_VERSION_UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_VERSION_UPDATE:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    .line 6
    new-instance v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    const-string v1, "MS_VERSION_VERIFY_TIMEOUT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_VERSION_VERIFY_TIMEOUT:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    .line 7
    new-instance v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    const-string v1, "MS_HTTP_REQUEST_ERR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_HTTP_REQUEST_ERR:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    .line 8
    new-instance v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    const-string v1, "MS_NET_PROPOSAL_LOADED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_NET_PROPOSAL_LOADED:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    .line 9
    new-instance v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    const-string v1, "MS_NET_PROPOSAL_LOAD_FAILED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_NET_PROPOSAL_LOAD_FAILED:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    const/4 v0, 0x5

    .line 4
    new-array v0, v0, [Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_VERSION_UPDATE:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_VERSION_VERIFY_TIMEOUT:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_HTTP_REQUEST_ERR:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_NET_PROPOSAL_LOADED:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->MS_NET_PROPOSAL_LOAD_FAILED:Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->$VALUES:[Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;
    .locals 1

    .line 4
    const-class v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;
    .locals 1

    .line 4
    sget-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->$VALUES:[Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    invoke-virtual {v0}, [Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qnet/global/QnetGlobalDefine$QnetMessageType;

    return-object v0
.end method
