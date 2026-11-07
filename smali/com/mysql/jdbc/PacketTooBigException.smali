.class public Lcom/mysql/jdbc/PacketTooBigException;
.super Ljava/sql/SQLException;
.source "PacketTooBigException.java"


# static fields
.field static final serialVersionUID:J = 0x64985232a2c4a58eL


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PacketTooBigException.0"

    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "PacketTooBigException.1"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "PacketTooBigException.2"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PacketTooBigException.3"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "PacketTooBigException.4"

    invoke-static {p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1000"

    invoke-direct {p0, p1, p2}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
