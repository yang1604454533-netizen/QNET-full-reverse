.class Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;
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
    name = "BooleanConnectionProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x23405d0d56cc7becL


# direct methods
.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10

    .line 62
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getAllowableValues()[Ljava/lang/String;
    .locals 4

    const-string v0, "true"

    const-string v1, "false"

    const-string v2, "yes"

    const-string v3, "no"

    .line 70
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getValueAsBoolean()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->valueAsObject:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasValueConstraints()Z
    .locals 1

    const/4 v0, 0x1

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

    if-eqz p1, :cond_2

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->validateStringValues(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    const-string p2, "TRUE"

    .line 93
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "YES"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 94
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->wasExplicitlySet:Z

    goto :goto_2

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->defaultValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 98
    :goto_2
    iget p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->updateCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->updateCount:I

    return-void
.end method

.method isRangeBased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method setValue(Z)V
    .locals 1

    .line 110
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->valueAsObject:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->wasExplicitlySet:Z

    .line 112
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->updateCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$BooleanConnectionProperty;->updateCount:I

    return-void
.end method
