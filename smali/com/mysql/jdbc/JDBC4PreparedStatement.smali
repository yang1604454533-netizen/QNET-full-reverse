.class public Lcom/mysql/jdbc/JDBC4PreparedStatement;
.super Lcom/mysql/jdbc/PreparedStatement;
.source "JDBC4PreparedStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/PreparedStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/PreparedStatement$ParseInfo;)V

    return-void
.end method


# virtual methods
.method public setNClob(ILjava/sql/NClob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 68
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V

    return-void
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 53
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V

    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 72
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V

    return-void
.end method
