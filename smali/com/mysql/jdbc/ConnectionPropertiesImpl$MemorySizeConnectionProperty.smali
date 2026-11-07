.class Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;
.source "ConnectionPropertiesImpl.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemorySizeConnectionProperty"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x66043ac986b89270L


# instance fields
.field private valueAsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 497
    invoke-direct/range {p0 .. p8}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getValueAsString()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->valueAsString:Ljava/lang/String;

    return-object v0
.end method

.method initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 502
    iput-object p1, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->valueAsString:Ljava/lang/String;

    const/4 v0, 0x1

    .line 503
    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    if-eqz p1, :cond_5

    const-string v0, "k"

    .line 506
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "K"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "kb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Kb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "kB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "KB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "m"

    .line 511
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "M"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Mb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "mB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "MB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "g"

    .line 516
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "G"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Gb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "gB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 518
    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    const-string v0, "g"

    .line 519
    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 520
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    :goto_0
    const/high16 v0, 0x100000

    .line 513
    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    const-string v0, "m"

    .line 514
    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 515
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    const/16 v0, 0x400

    .line 508
    iput v0, p0, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->multiplier:I

    const-string v0, "k"

    .line 509
    invoke-static {p1, v0}, Lcom/mysql/jdbc/StringUtils;->indexOfIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 510
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 524
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$IntegerConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method

.method setValue(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 528
    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/ConnectionPropertiesImpl$MemorySizeConnectionProperty;->initializeFrom(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)V

    return-void
.end method
