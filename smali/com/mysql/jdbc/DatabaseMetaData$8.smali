.class Lcom/mysql/jdbc/DatabaseMetaData$8;
.super Lcom/mysql/jdbc/IterateBlock;
.source "DatabaseMetaData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mysql/jdbc/DatabaseMetaData;->getProceduresAndOrFunctions([Lcom/mysql/jdbc/Field;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/sql/ResultSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mysql/jdbc/IterateBlock<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mysql/jdbc/DatabaseMetaData;

.field final synthetic val$fields:[Lcom/mysql/jdbc/Field;

.field final synthetic val$procNamePattern:Ljava/lang/String;

.field final synthetic val$procedureRowsToSort:Ljava/util/List;

.field final synthetic val$returnFunctions:Z

.field final synthetic val$returnProcedures:Z


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/DatabaseMetaData;Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;ZZLjava/lang/String;Ljava/util/List;[Lcom/mysql/jdbc/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4087
    iput-object p1, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iput-boolean p3, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    iput-boolean p4, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    iput-object p5, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    iput-object p6, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    iput-object p7, p0, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$fields:[Lcom/mysql/jdbc/Field;

    invoke-direct {p0, p2}, Lcom/mysql/jdbc/IterateBlock;-><init>(Lcom/mysql/jdbc/DatabaseMetaData$IteratorWithCleanup;)V

    return-void
.end method


# virtual methods
.method bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4087
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/DatabaseMetaData$8;->forEach(Ljava/lang/String;)V

    return-void
.end method

.method forEach(Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 4093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT name, type, comment FROM mysql.proc WHERE "

    .line 4095
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4096
    iget-boolean v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-nez v2, :cond_0

    const-string v2, "type = \'PROCEDURE\' AND "

    .line 4097
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4098
    :cond_0
    iget-boolean v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-eqz v2, :cond_1

    const-string v2, "type = \'FUNCTION\' AND "

    .line 4099
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    const-string v2, "name LIKE ? AND db <=> ? ORDER BY name, type"

    .line 4101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v2

    const/4 v0, 0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    .line 4110
    :try_start_0
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v5}, Lcom/mysql/jdbc/MySQLConnection;->lowerCaseTableNames()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4111
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object/from16 v4, p1

    .line 4113
    :goto_1
    invoke-interface {v2, v0, v4}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object v15, v3

    :goto_2
    move-object v2, v0

    goto/16 :goto_a

    :cond_3
    const/16 v5, 0xc

    .line 4115
    invoke-interface {v2, v0, v5}, Ljava/sql/PreparedStatement;->setNull(II)V

    move-object/from16 v4, p1

    :goto_3
    const/4 v5, 0x1

    .line 4120
    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    const/4 v14, 0x1

    invoke-interface {v2, v14, v6}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4123
    :try_start_1
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v15
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v16, 0x0

    .line 4126
    :try_start_2
    iget-boolean v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-eqz v6, :cond_4

    .line 4127
    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const/4 v7, 0x1

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    const/4 v10, 0x0

    const/4 v13, 0x1

    move-object v8, v4

    move-object v9, v15

    move-object v11, v4

    invoke-virtual/range {v6 .. v13}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcProcedureList(ZLjava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I)V

    .line 4130
    :cond_4
    iget-boolean v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-eqz v6, :cond_7

    .line 4131
    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$fields:[Lcom/mysql/jdbc/Field;

    move-object v7, v4

    move-object v8, v15

    move/from16 v9, v16

    move-object v10, v4

    move v12, v5

    invoke-virtual/range {v6 .. v13}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcFunctionList(Ljava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I[Lcom/mysql/jdbc/Field;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v5, v2

    goto :goto_2

    :catch_0
    move-object v15, v3

    const/16 v16, 0x1

    .line 4135
    :catch_1
    :try_start_3
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v5, v5, Lcom/mysql/jdbc/DatabaseMetaData;->conn:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v6, 0x5

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7, v14}, Lcom/mysql/jdbc/MySQLConnection;->versionMeetsMinimum(III)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    .line 4139
    :goto_4
    iget-boolean v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnFunctions:Z

    if-eqz v5, :cond_6

    .line 4140
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 4142
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v6, "SHOW FUNCTION STATUS LIKE ?"

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4143
    :try_start_4
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    invoke-interface {v5, v14, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4144
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 4146
    :try_start_5
    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    iget-object v11, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    iget-object v13, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$fields:[Lcom/mysql/jdbc/Field;

    move-object v7, v4

    move-object v8, v2

    move/from16 v9, v16

    move-object v10, v4

    move v12, v0

    invoke-virtual/range {v6 .. v13}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcFunctionList(Ljava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I[Lcom/mysql/jdbc/Field;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v15, v2

    move-object v2, v5

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v15, v2

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_2

    .line 4150
    :cond_6
    :goto_5
    :try_start_6
    iget-boolean v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$returnProcedures:Z

    if-eqz v5, :cond_7

    .line 4151
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V

    .line 4153
    iget-object v5, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const-string v6, "SHOW PROCEDURE STATUS LIKE ?"

    invoke-virtual {v5, v6}, Lcom/mysql/jdbc/DatabaseMetaData;->prepareMetaDataSafeStatement(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4154
    :try_start_7
    iget-object v2, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procNamePattern:Ljava/lang/String;

    invoke-interface {v5, v14, v2}, Ljava/sql/PreparedStatement;->setString(ILjava/lang/String;)V

    .line 4155
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 4157
    :try_start_8
    iget-object v6, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->this$0:Lcom/mysql/jdbc/DatabaseMetaData;

    const/4 v7, 0x0

    iget-object v12, v1, Lcom/mysql/jdbc/DatabaseMetaData$8;->val$procedureRowsToSort:Ljava/util/List;

    move-object v8, v4

    move-object v9, v2

    move/from16 v10, v16

    move-object v11, v4

    move v13, v0

    invoke-virtual/range {v6 .. v13}, Lcom/mysql/jdbc/DatabaseMetaData;->convertToJdbcProcedureList(ZLjava/lang/String;Ljava/sql/ResultSet;ZLjava/lang/String;Ljava/util/List;I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object v15, v2

    move-object v2, v5

    :cond_7
    :goto_6
    if-eqz v15, :cond_8

    .line 4166
    :try_start_9
    invoke-interface {v15}, Ljava/sql/ResultSet;->close()V
    :try_end_9
    .catch Ljava/sql/SQLException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    move-object v0, v3

    :goto_8
    if-eqz v2, :cond_9

    .line 4174
    :try_start_a
    invoke-interface {v2}, Ljava/sql/PreparedStatement;->close()V
    :try_end_a
    .catch Ljava/sql/SQLException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    :cond_9
    :goto_9
    if-nez v0, :cond_a

    return-void

    .line 4181
    :cond_a
    throw v0

    :goto_a
    if-eqz v15, :cond_b

    .line 4166
    :try_start_b
    invoke-interface {v15}, Ljava/sql/ResultSet;->close()V
    :try_end_b
    .catch Ljava/sql/SQLException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    goto :goto_c

    :cond_b
    :goto_b
    move-object v0, v3

    :goto_c
    if-eqz v5, :cond_c

    .line 4174
    :try_start_c
    invoke-interface {v5}, Ljava/sql/PreparedStatement;->close()V
    :try_end_c
    .catch Ljava/sql/SQLException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_d

    :catch_5
    move-exception v0

    :cond_c
    :goto_d
    if-eqz v0, :cond_d

    .line 4181
    throw v0

    .line 4162
    :cond_d
    throw v2
.end method
