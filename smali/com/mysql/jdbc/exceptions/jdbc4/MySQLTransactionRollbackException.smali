.class public Lcom/mysql/jdbc/exceptions/jdbc4/MySQLTransactionRollbackException;
.super Ljava/sql/SQLTransactionRollbackException;
.source "MySQLTransactionRollbackException.java"

# interfaces
.implements Lcom/mysql/jdbc/exceptions/DeadlockTimeoutRollbackMarker;


# static fields
.field static final serialVersionUID:J = 0x53c0a00ac1c9ae02L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/sql/SQLTransactionRollbackException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Ljava/sql/SQLTransactionRollbackException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLTransactionRollbackException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLTransactionRollbackException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
