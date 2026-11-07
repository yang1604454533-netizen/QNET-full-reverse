.class public Lcom/mysql/jdbc/NamedPipeSocketFactory;
.super Ljava/lang/Object;
.source "NamedPipeSocketFactory.java"

# interfaces
.implements Lcom/mysql/jdbc/SocketFactory;
.implements Lcom/mysql/jdbc/SocketMetadata;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;,
        Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;,
        Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;
    }
.end annotation


# static fields
.field public static final NAMED_PIPE_PROP_NAME:Ljava/lang/String; = "namedPipePath"


# instance fields
.field private namedPipeSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterHandshake()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public beforeHandshake()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    return-object v0
.end method

.method public connect(Ljava/lang/String;ILjava/util/Properties;)Ljava/net/Socket;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p1, "namedPipePath"

    .line 211
    invoke-virtual {p3, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "\\\\.\\pipe\\MySQL"

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_1

    .line 219
    :goto_0
    new-instance p2, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;

    invoke-direct {p2, p0, p1}, Lcom/mysql/jdbc/NamedPipeSocketFactory$NamedPipeSocket;-><init>(Lcom/mysql/jdbc/NamedPipeSocketFactory;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    .line 221
    iget-object p1, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory;->namedPipeSocket:Ljava/net/Socket;

    return-object p1

    .line 216
    :cond_1
    new-instance p1, Ljava/net/SocketException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NamedPipeSocketFactory.2"

    invoke-static {p3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "namedPipePath"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "NamedPipeSocketFactory.3"

    invoke-static {p3}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isLocallyConnected(Lcom/mysql/jdbc/ConnectionImpl;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
