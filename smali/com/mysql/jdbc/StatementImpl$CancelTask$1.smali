.class Lcom/mysql/jdbc/StatementImpl$CancelTask$1;
.super Ljava/lang/Thread;
.source "StatementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/StatementImpl$CancelTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/StatementImpl$CancelTask;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v1, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->this$0:Lcom/mysql/jdbc/StatementImpl;

    iget-object v1, v1, Lcom/mysql/jdbc/StatementImpl;->physicalConnection:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/MySQLConnection;

    if-eqz v1, :cond_2

    .line 109
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getQueryTimeoutKillsConnection()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v2, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    iput-boolean v3, v2, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 111
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v2, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    iput-boolean v3, v2, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 112
    new-instance v2, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;

    const-string v4, "Statement.ConnectionKilledDueToTimeout"

    invoke-static {v4}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/mysql/jdbc/exceptions/MySQLStatementCancelledException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v1, v4, v4, v3, v2}, Lcom/mysql/jdbc/MySQLConnection;->realClose(ZZZLjava/lang/Throwable;)V

    goto/16 :goto_3

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v2, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->this$0:Lcom/mysql/jdbc/StatementImpl;

    iget-object v2, v2, Lcom/mysql/jdbc/StatementImpl;->cancelTimeoutMutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 116
    :try_start_1
    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getURL()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->duplicate()Lcom/mysql/jdbc/Connection;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 119
    :try_start_2
    invoke-interface {v4}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KILL QUERY "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lcom/mysql/jdbc/MySQLConnection;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v1, v4

    move-object v4, v5

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v0

    goto :goto_2

    .line 123
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v1, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v4, v4, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    invoke-static {v1, v4}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;Ljava/util/Properties;)Ljava/sql/Connection;

    move-result-object v1

    check-cast v1, Lcom/mysql/jdbc/Connection;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 124
    :try_start_5
    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 125
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KILL QUERY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-wide v6, v6, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_1
    move-exception v3

    move-object v5, v0

    goto :goto_1

    :catch_0
    move-object v4, v0

    goto :goto_0

    :catch_1
    move-object v1, v0

    move-object v4, v1

    .line 130
    :catch_2
    :goto_0
    :try_start_7
    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    iput-boolean v3, v5, Lcom/mysql/jdbc/StatementImpl;->wasCancelled:Z

    .line 131
    iget-object v5, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iget-object v5, v5, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    iput-boolean v3, v5, Lcom/mysql/jdbc/StatementImpl;->wasCancelledByTimeout:Z

    .line 132
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v3

    move-object v5, v4

    :goto_1
    move-object v4, v1

    move-object v1, v3

    goto :goto_2

    :catchall_3
    move-exception v1

    move-object v4, v0

    move-object v5, v4

    :goto_2
    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catch_3
    move-exception v1

    goto/16 :goto_8

    :catchall_4
    move-exception v1

    goto :goto_2

    :cond_2
    :goto_3
    move-object v1, v0

    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_3

    .line 144
    :try_start_a
    invoke-interface {v4}, Ljava/sql/Statement;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    .line 152
    :try_start_b
    invoke-interface {v1}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_4
    :goto_6
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v0, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 159
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v0, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 160
    iget-object v1, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v0, v1, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    goto :goto_a

    :catchall_5
    move-exception v1

    move-object v4, v0

    move-object v5, v4

    goto :goto_b

    :catch_6
    move-object v4, v0

    move-object v5, v4

    :catch_7
    if-eqz v5, :cond_5

    .line 144
    :try_start_c
    invoke-interface {v5}, Ljava/sql/Statement;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_7
    if-eqz v4, :cond_4

    .line 152
    :try_start_d
    invoke-interface {v4}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_d
    .catch Ljava/sql/SQLException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_6

    :catch_9
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_a
    move-exception v1

    move-object v4, v0

    move-object v5, v4

    .line 136
    :goto_8
    :try_start_e
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v1, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->caughtWhileCancelling:Ljava/sql/SQLException;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    if-eqz v5, :cond_6

    .line 144
    :try_start_f
    invoke-interface {v5}, Ljava/sql/Statement;->close()V
    :try_end_f
    .catch Ljava/sql/SQLException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_9

    :catch_b
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_9
    if-eqz v4, :cond_4

    .line 152
    :try_start_10
    invoke-interface {v4}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_10
    .catch Ljava/sql/SQLException; {:try_start_10 .. :try_end_10} :catch_c

    goto :goto_6

    :catch_c
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_a
    return-void

    :catchall_6
    move-exception v1

    :goto_b
    if-eqz v5, :cond_7

    .line 144
    :try_start_11
    invoke-interface {v5}, Ljava/sql/Statement;->close()V
    :try_end_11
    .catch Ljava/sql/SQLException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_c

    :catch_d
    move-exception v0

    .line 146
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_c
    if-eqz v4, :cond_8

    .line 152
    :try_start_12
    invoke-interface {v4}, Lcom/mysql/jdbc/Connection;->close()V
    :try_end_12
    .catch Ljava/sql/SQLException; {:try_start_12 .. :try_end_12} :catch_e

    goto :goto_d

    :catch_e
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/sql/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_8
    :goto_d
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v0, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->toCancel:Lcom/mysql/jdbc/StatementImpl;

    .line 159
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v0, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnProps:Ljava/util/Properties;

    .line 160
    iget-object v2, p0, Lcom/mysql/jdbc/StatementImpl$CancelTask$1;->this$1:Lcom/mysql/jdbc/StatementImpl$CancelTask;

    iput-object v0, v2, Lcom/mysql/jdbc/StatementImpl$CancelTask;->origConnURL:Ljava/lang/String;

    .line 142
    throw v1
.end method
