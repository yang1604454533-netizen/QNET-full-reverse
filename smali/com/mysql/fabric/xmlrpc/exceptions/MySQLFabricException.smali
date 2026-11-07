.class public Lcom/mysql/fabric/xmlrpc/exceptions/MySQLFabricException;
.super Ljava/sql/SQLException;
.source "MySQLFabricException.java"


# static fields
.field static final serialVersionUID:J = -0x79cd53928391008dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/sql/SQLException;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/mysql/fabric/xmlrpc/base/Fault;)V
    .locals 3

    .line 40
    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Fault;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Struct;->getMember()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Member;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Fault;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Struct;->getMember()Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Member;->getValue()Lcom/mysql/fabric/xmlrpc/base/Value;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
