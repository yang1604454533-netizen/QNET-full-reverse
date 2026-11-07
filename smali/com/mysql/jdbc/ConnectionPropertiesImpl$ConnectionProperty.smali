.class abstract Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;
.super Ljava/lang/Object;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ConnectionProperty"
.end annotation


# static fields
.field static final serialVersionUID:J = -0x5c37432de3e4f49fL


# instance fields
.field allowableValues:[Ljava/lang/String;

.field categoryName:Ljava/lang/String;

.field defaultValue:Ljava/lang/Object;

.field description:Ljava/lang/String;

.field lowerBound:I

.field order:I

.field propertyName:Ljava/lang/String;

.field required:Z

.field sinceVersion:Ljava/lang/String;

.field updateCount:I

.field upperBound:I

.field valueAsObject:Ljava/lang/Object;

.field wasExplicitlySet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    .line 144
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->wasExplicitlySet:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    .line 144
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->wasExplicitlySet:Z

    .line 152
    iput-object p6, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->propertyName:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->defaultValue:Ljava/lang/Object;

    .line 155
    iput-object p2, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 156
    iput-object p3, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->allowableValues:[Ljava/lang/String;

    .line 157
    iput p4, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->lowerBound:I

    .line 158
    iput p5, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->upperBound:I

    .line 159
    iput-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    .line 160
    iput-object p7, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->sinceVersion:Ljava/lang/String;

    .line 161
    iput-object p8, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->categoryName:Ljava/lang/String;

    .line 162
    iput p9, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->order:I

    return-void
.end method


# virtual methods
.method getAllowableValues()[Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->allowableValues:[Ljava/lang/String;

    return-object v0
.end method

.method getAsDriverPropertyInfo()Ljava/sql/DriverPropertyInfo;
    .locals 3

    .line 261
    new-instance v0, Ljava/sql/DriverPropertyInfo;

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->propertyName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/sql/DriverPropertyInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getAllowableValues()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljava/sql/DriverPropertyInfo;->choices:[Ljava/lang/String;

    .line 263
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iput-object v2, v0, Ljava/sql/DriverPropertyInfo;->value:Ljava/lang/String;

    .line 264
    iget-boolean v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->required:Z

    iput-boolean v1, v0, Ljava/sql/DriverPropertyInfo;->required:Z

    .line 265
    iget-object v1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->description:Ljava/lang/String;

    iput-object v1, v0, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method getCategoryName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method getDefaultValue()Ljava/lang/Object;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method getLowerBound()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->lowerBound:I

    return v0
.end method

.method getOrder()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->order:I

    return v0
.end method

.method getPropertyName()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->propertyName:Ljava/lang/String;

    return-object v0
.end method

.method getUpdateCount()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    return v0
.end method

.method getUpperBound()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->upperBound:I

    return v0
.end method

.method getValueAsObject()Ljava/lang/Object;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    return-object v0
.end method

.method abstract hasValueConstraints()Z
.end method

.method abstract initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation
.end method

.method initializeFrom(Ljava/util/Properties;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 214
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {p0, v0, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method initializeFrom(Ljavax/naming/Reference;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 223
    invoke-virtual {p1}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    :cond_0
    return-void
.end method

.method isExplicitlySet()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->wasExplicitlySet:Z

    return v0
.end method

.method abstract isRangeBased()Z
.end method

.method setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->categoryName:Ljava/lang/String;

    return-void
.end method

.method setOrder(I)V
    .locals 0

    .line 246
    iput p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->order:I

    return-void
.end method

.method setValueAsObject(Ljava/lang/Object;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->valueAsObject:Ljava/lang/Object;

    .line 251
    iget p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->updateCount:I

    return-void
.end method

.method storeTo(Ljavax/naming/Reference;)V
    .locals 3

    .line 255
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    new-instance v0, Ljavax/naming/StringRefAddr;

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getValueAsObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/naming/StringRefAddr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljavax/naming/Reference;->add(Ljavax/naming/RefAddr;)V

    :cond_0
    return-void
.end method

.method validateStringValues(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getAllowableValues()[Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_6

    .line 277
    array-length v1, v0

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 281
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 282
    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The connection property \'"

    .line 289
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$ConnectionProperty;->getPropertyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' only accepts values of the form: "

    .line 291
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    array-length v3, v0

    if-eqz v3, :cond_5

    const-string v3, "\'"

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    aget-object v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    .line 296
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v3, 0x1

    .line 298
    :goto_1
    array-length v4, v0

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_4

    const-string v4, ", "

    .line 299
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    .line 300
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    .line 302
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string v3, " or \'"

    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    array-length v3, v0

    sub-int/2addr v3, v1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    .line 307
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, ". The value \'"

    .line 310
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not in this set."

    .line 312
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1009"

    invoke-static {p1, v0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_2
    return-void
.end method
