.class Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;
.super Ljava/lang/Object;
.source "PreparedStatement.java"

# interfaces
.implements Lcom/mysql/jdbc/ParameterBindings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/PreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmulatedPreparedStatementBindings"
.end annotation


# instance fields
.field private bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

.field private parameterIsNull:[Z

.field final synthetic this$0:Lcom/mysql/jdbc/PreparedStatement;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/PreparedStatement;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4878
    iput-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4880
    iget v1, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    .line 4881
    iget-object v1, p1, Lcom/mysql/jdbc/PreparedStatement;->isNull:[Z

    iget-object v2, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    iget v3, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4882
    iget v1, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v1, v1, [[B

    .line 4883
    iget v2, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    new-array v7, v2, [Lcom/mysql/jdbc/Field;

    .line 4885
    :goto_0
    iget v2, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterCount:I

    if-ge v4, v2, :cond_3

    .line 4886
    iget v2, p1, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 4887
    invoke-virtual {p1, v4}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentation(I)[B

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_1

    .line 4889
    :cond_0
    iget v2, p1, Lcom/mysql/jdbc/PreparedStatement;->batchCommandIndex:I

    invoke-virtual {p1, v4, v2}, Lcom/mysql/jdbc/PreparedStatement;->getBytesRepresentationForBatch(II)[B

    move-result-object v2

    aput-object v2, v1, v4

    .line 4894
    :goto_1
    iget-object v2, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v2, v2, v4

    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    iget-object v2, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v2, v2, v4

    const/16 v3, 0x7d4

    if-ne v2, v3, :cond_1

    goto :goto_2

    .line 4898
    :cond_1
    :try_start_0
    iget-object v2, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getEncoding()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-static {v2, v3}, Lcom/mysql/jdbc/CharsetMapping;->getCollationIndexForJavaEncoding(Ljava/lang/String;Ljava/sql/Connection;)I

    move-result v2
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v2

    goto :goto_3

    :catch_0
    move-exception p1

    .line 4903
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "S1009"

    invoke-static {v0, v2, v1}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object v0

    .line 4904
    invoke-virtual {v0, p1}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 4905
    throw v0

    :catch_1
    move-exception p1

    .line 4901
    throw p1

    :cond_2
    :goto_2
    const/16 v2, 0x3f

    const/16 v11, 0x3f

    .line 4909
    :goto_3
    new-instance v2, Lcom/mysql/jdbc/Field;

    const/4 v9, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parameter_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, p1, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v12, v3, v4

    aget-object v3, v1, v4

    array-length v13, v3

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/mysql/jdbc/Field;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 4910
    iget-object v3, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-virtual {v2, v3}, Lcom/mysql/jdbc/Field;->setConnection(Lcom/mysql/jdbc/MySQLConnection;)V

    .line 4911
    aput-object v2, v7, v4

    move v4, v5

    goto :goto_0

    .line 4914
    :cond_3
    new-instance v2, Lcom/mysql/jdbc/ByteArrayRow;

    invoke-virtual {p1}, Lcom/mysql/jdbc/PreparedStatement;->getExceptionInterceptor()Lcom/mysql/jdbc/ExceptionInterceptor;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/mysql/jdbc/ByteArrayRow;-><init>([[BLcom/mysql/jdbc/ExceptionInterceptor;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4916
    new-instance v1, Lcom/mysql/jdbc/ResultSetImpl;

    iget-object v2, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    invoke-interface {v2}, Lcom/mysql/jdbc/MySQLConnection;->getCatalog()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/mysql/jdbc/RowDataStatic;

    invoke-direct {v8, v0}, Lcom/mysql/jdbc/RowDataStatic;-><init>(Ljava/util/List;)V

    iget-object v9, p1, Lcom/mysql/jdbc/PreparedStatement;->connection:Lcom/mysql/jdbc/MySQLConnection;

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/mysql/jdbc/ResultSetImpl;-><init>(Ljava/lang/String;[Lcom/mysql/jdbc/Field;Lcom/mysql/jdbc/RowData;Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/StatementImpl;)V

    iput-object v1, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    .line 4918
    iget-object p1, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {p1}, Lcom/mysql/jdbc/ResultSetImpl;->next()Z

    return-void
.end method


# virtual methods
.method public getArray(I)Ljava/sql/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4922
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getArray(I)Ljava/sql/Array;

    move-result-object p1

    return-object p1
.end method

.method public getAsciiStream(I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4926
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getAsciiStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4930
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBigDecimal(I)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public getBinaryStream(I)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4934
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public getBlob(I)Ljava/sql/Blob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4938
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBlob(I)Ljava/sql/Blob;

    move-result-object p1

    return-object p1
.end method

.method public getBoolean(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4942
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBoolean(I)Z

    move-result p1

    return p1
.end method

.method public getByte(I)B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4946
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getByte(I)B

    move-result p1

    return p1
.end method

.method public getBytes(I)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4950
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getBytes(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4954
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getClob(I)Ljava/sql/Clob;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4958
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getClob(I)Ljava/sql/Clob;

    move-result-object p1

    return-object p1
.end method

.method public getDate(I)Ljava/sql/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4962
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDate(I)Ljava/sql/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDouble(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4966
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4970
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4974
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4978
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4982
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getNClob(I)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4986
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    return-object p1
.end method

.method public getObject(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 4990
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkBounds(II)V

    .line 4992
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    add-int/lit8 v1, p1, -0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4998
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    iget-object v0, v0, Lcom/mysql/jdbc/PreparedStatement;->parameterTypes:[I

    aget v0, v0, v1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 5012
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getObject(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5008
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getFloat(I)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 5002
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getShort(I)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 5004
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5006
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 5000
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getByte(I)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5010
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getRef(I)Ljava/sql/Ref;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5017
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getRef(I)Ljava/sql/Ref;

    move-result-object p1

    return-object p1
.end method

.method public getShort(I)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5021
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5025
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTime(I)Ljava/sql/Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5029
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTime(I)Ljava/sql/Time;

    move-result-object p1

    return-object p1
.end method

.method public getTimestamp(I)Ljava/sql/Timestamp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5033
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getTimestamp(I)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public getURL(I)Ljava/net/URL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5037
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->bindingsAsRs:Lcom/mysql/jdbc/ResultSetImpl;

    invoke-virtual {v0, p1}, Lcom/mysql/jdbc/ResultSetImpl;->getURL(I)Ljava/net/URL;

    move-result-object p1

    return-object p1
.end method

.method public isNull(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 5041
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->this$0:Lcom/mysql/jdbc/PreparedStatement;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/mysql/jdbc/PreparedStatement;->checkBounds(II)V

    .line 5043
    iget-object v0, p0, Lcom/mysql/jdbc/PreparedStatement$EmulatedPreparedStatementBindings;->parameterIsNull:[Z

    add-int/lit8 p1, p1, -0x1

    aget-boolean p1, v0, p1

    return p1
.end method
