.class Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;
.super Ljava/lang/Object;
.source "PreparedStatement.java"

# interfaces
.implements Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppendingBatchVisitor"
.end annotation


# instance fields
.field statementComponents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public append([B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public decrement()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    return-object p0
.end method

.method public getStaticSqlStrings()[[B
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [[B

    .line 607
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public increment()Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;
    .locals 0

    return-object p0
.end method

.method public merge([B[B)Lcom/mysql/jdbc/PreparedStatement$BatchVisitor;
    .locals 3

    .line 597
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    .line 598
    new-array v0, v0, [B

    .line 599
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 614
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    iget-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$AppendingBatchVisitor;->statementComponents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 616
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 620
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
