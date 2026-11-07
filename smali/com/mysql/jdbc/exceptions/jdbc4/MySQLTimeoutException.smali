.class public Lcom/mysql/jdbc/exceptions/jdbc4/MySQLTimeoutException;
.super Ljava/sql/SQLTimeoutException;
.source "MySQLTimeoutException.java"


# static fields
.field static final serialVersionUID:J = -0xaf54c55ac7d8c83L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Statement cancelled due to timeout or client request"

    .line 45
    invoke-direct {p0, v0}, Ljava/sql/SQLTimeoutException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Ljava/sql/SQLTimeoutException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 49
    invoke-super {p0}, Ljava/sql/SQLTimeoutException;->getErrorCode()I

    move-result v0

    return v0
.end method
