.class public Lcom/mysql/jdbc/PreparedStatement$BatchParams;
.super Ljava/lang/Object;
.source "PreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchParams"
.end annotation


# instance fields
.field public isNull:[Z

.field public isStream:[Z

.field public parameterStreams:[Ljava/io/InputStream;

.field public parameterStrings:[[B

.field public streamLengths:[I

.field final synthetic this$0:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/PreparedStatement;[[B[Ljava/io/InputStream;[Z[I[Z)V
    .locals 2

    .line 116
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 106
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 108
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    .line 110
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    .line 112
    move-object v0, p1

    check-cast v0, [[B

    iput-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    .line 114
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    .line 120
    array-length p1, p2

    new-array p1, p1, [[B

    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    .line 121
    array-length p1, p3

    new-array p1, p1, [Ljava/io/InputStream;

    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    .line 122
    array-length p1, p4

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    .line 123
    array-length p1, p5

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    .line 124
    array-length p1, p6

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    .line 125
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStrings:[[B

    array-length v0, p2

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->parameterStreams:[Ljava/io/InputStream;

    array-length p2, p3

    invoke-static {p3, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isStream:[Z

    array-length p2, p4

    invoke-static {p4, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 128
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->streamLengths:[I

    array-length p2, p5

    invoke-static {p5, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$BatchParams;->isNull:[Z

    array-length p2, p6

    invoke-static {p6, v1, p1, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
