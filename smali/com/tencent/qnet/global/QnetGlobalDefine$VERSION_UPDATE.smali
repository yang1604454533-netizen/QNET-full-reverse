.class public final enum Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;
.super Ljava/lang/Enum;
.source "QnetGlobalDefine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/global/QnetGlobalDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VERSION_UPDATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

.field public static final enum LATEST_VERSION:Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

.field public static final enum VERSION_NEED_UPDATE:Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

.field public static final enum VERSION_UPDATE_COMPLETE:Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    const-string v1, "VERSION_NEED_UPDATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;->VERSION_NEED_UPDATE:Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    .line 14
    new-instance v0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    const-string v1, "VERSION_UPDATE_COMPLETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;->VERSION_UPDATE_COMPLETE:Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    .line 15
    new-instance v0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    const-string v1, "LATEST_VERSION"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;->LATEST_VERSION:Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;->VERSION_NEED_UPDATE:Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;->VERSION_UPDATE_COMPLETE:Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;->LATEST_VERSION:Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;->$VALUES:[Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;
    .locals 1

    .line 12
    const-class v0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    return-object p0
.end method

.method public static values()[Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;
    .locals 1

    .line 12
    sget-object v0, Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;->$VALUES:[Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    invoke-virtual {v0}, [Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qnet/global/QnetGlobalDefine$VERSION_UPDATE;

    return-object v0
.end method
