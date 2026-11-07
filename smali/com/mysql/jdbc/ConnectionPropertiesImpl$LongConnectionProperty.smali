.class public Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;
.source "ConnectionPropertiesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongConnectionProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5437e6fa0125837fL


# direct methods
.method constructor <init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 439
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-wide v0, p4

    long-to-int v4, v0

    move-wide/from16 v0, p6

    long-to-int v5, v0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    .line 445
    invoke-direct/range {v0 .. v11}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;-><init>(Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getValueAsLong()J
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->valueAsObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 475
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    .line 477
    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->setValue(JLjava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 479
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The connection property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' only accepts long integer values. The value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' can not be converted to a long integer."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 483
    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->defaultValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 485
    :goto_0
    iget p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->updateCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->updateCount:I

    return-void
.end method

.method setValue(JLcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->setValue(JLjava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method setValue(JLjava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->isRangeBased()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getLowerBound()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getUpperBound()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The connection property \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' only accepts long integer values in the range of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getLowerBound()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->getUpperBound()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", the value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' exceeds this range."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "S1009"

    invoke-static {p1, p2, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 461
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->valueAsObject:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 462
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->wasExplicitlySet:Z

    .line 463
    iget p2, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->updateCount:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$LongConnectionProperty;->updateCount:I

    return-void
.end method
