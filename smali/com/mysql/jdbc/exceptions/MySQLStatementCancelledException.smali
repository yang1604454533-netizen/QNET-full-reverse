.class public Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;
.super Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;
.source "MySQLStatementCancelledException.java"


# static fields
.field static final serialVersionUID:J = -0x799b6d5d83089b42L


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Statement cancelled due to client request"

    .line 43
    invoke-direct {p0, v0}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/exceptions/MySQLNonTransientException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
