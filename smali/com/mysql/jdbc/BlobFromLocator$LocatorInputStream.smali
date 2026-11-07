.class Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;
.super Ljava/io/InputStream;
.source "BlobFromLocator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/BlobFromLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocatorInputStream"
.end annotation


# instance fields
.field currentPositionInBlob:J

.field length:J

.field pStmt:Ljava/sql/PreparedStatement;

.field final synthetic this$0:Lcom/mysql/jdbc/BlobFromLocator;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/BlobFromLocator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 533
    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 527
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 529
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    .line 534
    invoke-virtual {p1}, Lcom/mysql/jdbc/BlobFromLocator;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 535
    invoke-virtual {p1}, Lcom/mysql/jdbc/BlobFromLocator;->createGetBytesStatement()Ljava/sql/PreparedStatement;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/BlobFromLocator;JJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v0, 0x0

    .line 527
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 529
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    const/4 v0, 0x0

    .line 531
    iput-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    add-long v0, p2, p4

    .line 540
    iput-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    .line 541
    iput-wide p2, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 542
    invoke-virtual {p1}, Lcom/mysql/jdbc/BlobFromLocator;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const-wide/16 p4, 0x1

    cmp-long p4, p2, p4

    if-ltz p4, :cond_1

    cmp-long p2, p2, v2

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const-string p2, "Blob.invalidStreamPos"

    .line 556
    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/mysql/jdbc/BlobFromLocator;->access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_1
    const-string p2, "Blob.invalidStreamPos"

    .line 551
    invoke-static {p2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/mysql/jdbc/BlobFromLocator;->access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_2
    const/4 v0, 0x3

    .line 545
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v0, p2

    const-string p2, "Blob.invalidStreamLength"

    invoke-static {p2, v0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/mysql/jdbc/BlobFromLocator;->access$000(Lcom/mysql/jdbc/BlobFromLocator;)Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object p1

    const-string p3, "S1009"

    invoke-static {p2, p3, p1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 643
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    if-eqz v0, :cond_0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    invoke-interface {v0}, Ljava/sql/PreparedStatement;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 647
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 651
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    const/4 v6, -0x1

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    return v6

    .line 568
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    iget-wide v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const/4 v7, 0x0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object v0

    if-nez v0, :cond_1

    return v6

    :cond_1
    const/4 v1, 0x0

    .line 574
    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 576
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    iget-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    const/4 v6, -0x1

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    return v6

    .line 620
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    iget-wide v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const/4 v7, 0x0

    add-long/2addr v4, v2

    array-length v2, p1

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object v0

    if-nez v0, :cond_1

    return v6

    .line 626
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    iget-wide v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    array-length p1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 630
    array-length p1, v0
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 632
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 587
    iget-wide v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-wide v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->length:J

    const/4 v6, -0x1

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    return v6

    .line 592
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->this$0:Lcom/mysql/jdbc/BlobFromLocator;

    iget-object v1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->pStmt:Ljava/sql/PreparedStatement;

    iget-wide v4, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    const/4 v7, 0x0

    add-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5, p3}, Lcom/mysql/jdbc/BlobFromLocator;->getBytesInternal(Ljava/sql/PreparedStatement;JI)[B

    move-result-object p3

    if-nez p3, :cond_1

    return v6

    :cond_1
    const/4 v0, 0x0

    .line 598
    array-length v1, p3

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    iget-wide p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    array-length v0, p3

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/mysql/jdbc/BlobFromLocator$LocatorInputStream;->currentPositionInBlob:J

    .line 602
    array-length p1, p3
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 604
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
