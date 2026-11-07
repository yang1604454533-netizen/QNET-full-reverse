.class public final enum Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;
.super Ljava/lang/Enum;
.source "DatabaseMetaDataUsingInfoSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "JDBC4FunctionConstant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_IN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_INOUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_OUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_RESULT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_RETURN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_COLUMN_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_NO_NULLS:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_NULLABLE:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

.field public static final enum FUNCTION_NULLABLE_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 38
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_IN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_IN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_INOUT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_INOUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_OUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_OUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_RETURN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RETURN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_COLUMN_RESULT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RESULT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    .line 40
    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_NO_NULLS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NO_NULLS:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_NULLABLE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    new-instance v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const-string v1, "FUNCTION_NULLABLE_UNKNOWN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    const/16 v0, 0x9

    .line 36
    new-array v0, v0, [Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_IN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_INOUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_OUT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RETURN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_COLUMN_RESULT:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NO_NULLS:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v9

    sget-object v1, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->FUNCTION_NULLABLE_UNKNOWN:Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    aput-object v1, v0, v10

    sput-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;
    .locals 1

    .line 36
    const-class v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    return-object p0
.end method

.method public static final values()[Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;
    .locals 1

    .line 36
    sget-object v0, Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->$VALUES:[Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    invoke-virtual {v0}, [Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mysql/jdbc/DatabaseMetaDataUsingInfoSchema$JDBC4FunctionConstant;

    return-object v0
.end method
