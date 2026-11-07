.class public Lcom/mysql/jdbc/ConnectionFeatureNotAvailableException;
.super Lcom/mysql/jdbc/CommunicationsException;
.source "ConnectionFeatureNotAvailableException.java"


# static fields
.field static final serialVersionUID:J = -0x464a9a64d13abb0fL


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;JLjava/lang/Exception;)V
    .locals 7

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v6, p4

    .line 40
    invoke-direct/range {v0 .. v6}, Lcom/mysql/jdbc/CommunicationsException;-><init>(Lcom/mysql/jdbc/MySQLConnection;JJLjava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    const-string v0, "Feature not available in this distribution of Connector/J"

    return-object v0
.end method

.method public getSQLState()Ljava/lang/String;
    .locals 1

    const-string v0, "01S00"

    return-object v0
.end method
