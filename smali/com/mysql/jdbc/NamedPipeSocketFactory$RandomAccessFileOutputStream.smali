.class Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;
.super Ljava/io/OutputStream;
.source "NamedPipeSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/NamedPipeSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RandomAccessFileOutputStream"
.end annotation


# instance fields
.field raFile:Ljava/io/RandomAccessFile;

.field final synthetic this$0:Lcom/mysql/jdbc/NamedPipeSocketFactory;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/NamedPipeSocketFactory;Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;->this$0:Lcom/mysql/jdbc/NamedPipeSocketFactory;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;->raFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileOutputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
