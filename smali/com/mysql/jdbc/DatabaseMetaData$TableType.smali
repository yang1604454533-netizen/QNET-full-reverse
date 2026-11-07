.class public final enum Lcom/mysql/jdbc/DatabaseMetaData$TableType;
.super Ljava/lang/Enum;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TableType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mysql/jdbc/DatabaseMetaData$TableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

.field public static final enum VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;


# instance fields
.field private name:Ljava/lang/String;

.field private nameAsBytes:[B

.field private synonyms:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 549
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v1, "LOCAL_TEMPORARY"

    const-string v2, "LOCAL TEMPORARY"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v1, "SYSTEM_TABLE"

    const-string v2, "SYSTEM TABLE"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v1, "SYSTEM_VIEW"

    const-string v2, "SYSTEM VIEW"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v1, "TABLE"

    const-string v2, "TABLE"

    const-string v6, "BASE TABLE"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v6}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    .line 550
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v1, "VIEW"

    const-string v2, "VIEW"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    const/4 v0, 0x6

    .line 548
    new-array v0, v0, [Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->LOCAL_TEMPORARY:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->SYSTEM_VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->TABLE:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->VIEW:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 557
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 560
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 561
    iput-object p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->name:Ljava/lang/String;

    .line 562
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->nameAsBytes:[B

    .line 563
    iput-object p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->synonyms:[Ljava/lang/String;

    return-void
.end method

.method static getTableTypeCompliantWith(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .locals 5

    .line 602
    invoke-static {}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->values()[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 603
    invoke-virtual {v3, p0}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->compliesWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 607
    :cond_1
    sget-object p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-object p0
.end method

.method static getTableTypeEqualTo(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .locals 5

    .line 579
    invoke-static {}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->values()[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 580
    invoke-virtual {v3, p0}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 584
    :cond_1
    sget-object p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .locals 1

    .line 548
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-object p0
.end method

.method public static final values()[Lcom/mysql/jdbc/DatabaseMetaData$TableType;
    .locals 1

    .line 548
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    invoke-virtual {v0}, [Lcom/mysql/jdbc/DatabaseMetaData$TableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/jdbc/DatabaseMetaData$TableType;

    return-object v0
.end method


# virtual methods
.method asBytes()[B
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->nameAsBytes:[B

    return-object v0
.end method

.method compliesWith(Ljava/lang/String;)Z
    .locals 6

    .line 588
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->equalsTo(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->synonyms:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->synonyms:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 593
    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method equalsTo(Ljava/lang/String;)Z
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/mysql/jdbc/DatabaseMetaData$TableType;->name:Ljava/lang/String;

    return-object v0
.end method
