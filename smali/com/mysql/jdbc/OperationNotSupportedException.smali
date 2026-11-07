.class Lcom/mysql/jdbc/OperationNotSupportedException;
.super Ljava/sql/SQLException;
.source "OperationNotSupportedException.java"


# static fields
.field static final serialVersionUID:J = 0x6973ff620de2f76L


# direct methods
.method constructor <init>()V
    .locals 2

    const-string v0, "RowDataDynamic.10"

    .line 33
    invoke-static {v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S1009"

    invoke-direct {p0, v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
