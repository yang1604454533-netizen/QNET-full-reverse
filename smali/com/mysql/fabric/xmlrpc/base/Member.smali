.class public Lcom/mysql/fabric/xmlrpc/base/Member;
.super Ljava/lang/Object;
.source "Member.java"


# instance fields
.field protected name:Ljava/lang/String;

.field protected value:Lcom/mysql/fabric/xmlrpc/base/Value;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/mysql/fabric/xmlrpc/base/Value;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Member;->setName(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/mysql/fabric/xmlrpc/base/Member;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Member;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/mysql/fabric/xmlrpc/base/Value;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Member;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Member;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Member;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<member>"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Member;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Member;->value:Lcom/mysql/fabric/xmlrpc/base/Value;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "</member>"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
