.class Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringConnectionProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4b62cb99fc52a270L


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    .line 542
    invoke-direct/range {v0 .. v7}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 554
    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getValueAsString()Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->valueAsObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method hasValueConstraints()Z
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->allowableValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->allowableValues:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 575
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->validateStringValues(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    .line 577
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 578
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->wasExplicitlySet:Z

    goto :goto_0

    .line 580
    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->defaultValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 582
    :goto_0
    iget p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->updateCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->updateCount:I

    return-void
.end method

.method isRangeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method setValue(Ljava/lang/String;)V
    .locals 1

    .line 594
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->valueAsObject:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 595
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->wasExplicitlySet:Z

    .line 596
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->updateCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$StringConnectionProperty;->updateCount:I

    return-void
.end method
