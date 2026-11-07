.class Lcom/mysql/jdbc/StatementImpl$CancelTask;
.super Ljava/util/TimerTask;
.source "StatementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/StatementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CancelTask"
.end annotation


# instance fields
.field caughtWhileCancelling:Ljava/sql/SQLException;

.field origConnId:J

.field origConnProps:Ljava/util/Properties;

.field origConnURL:Ljava/lang/String;

.field final synthetic this$0:Lcom/mysql/jdbc/StatementImpl;

.field toCancel:Lcom/mysql/jdbc/StatementImpl;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/StatementImpl;Lcom/mysql/jdbc/StatementImpl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->this$0:Lcom/mysql/jdbc/StatementImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;

    .line 74
    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 76
    iput-wide v0, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnId:J

    .line 79
    iput-object p2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 80
    new-instance p2, Ljava/util/Properties;

    invoke-direct {p2}, Ljava/util/Properties;-><init>()V

    iput-object p2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 82
    iget-object p2, p1, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getProperties()Ljava/util/Properties;

    move-result-object p2

    .line 84
    invoke-virtual {p2}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 86
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_0
    iget-object p2, p1, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p2}, Lcom/mysql/jdbc/MySQLConnection;->getURL()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    .line 92
    iget-object p1, p1, Lcom/mysql/jdbc/StatementImpl;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {p1}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 98
    new-instance v0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;

    invoke-direct {v0, p0}, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;-><init>(Lcom/mysql/jdbc/StatementImpl$CancelTask;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
