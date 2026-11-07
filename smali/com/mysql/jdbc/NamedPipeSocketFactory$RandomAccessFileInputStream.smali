.class Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;
.super Ljava/io/InputStream;
.source "NamedPipeSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/NamedPipeSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RandomAccessFileInputStream"
.end annotation


# instance fields
.field raFile:Ljava/io/RandomAccessFile;

.field final synthetic this$0:Lcom/mysql/jdbc/NamedPipeSocketFactory;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/NamedPipeSocketFactory;Ljava/io/RandomAccessFile;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;->this$0:Lcom/mysql/jdbc/NamedPipeSocketFactory;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 96
    iput-object p2, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/mysql/jdbc/NamedPipeSocketFactory$RandomAccessFileInputStream;->raFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    return p1
.end method
