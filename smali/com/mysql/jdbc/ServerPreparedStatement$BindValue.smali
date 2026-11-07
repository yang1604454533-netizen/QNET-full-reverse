.class public Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;
.super Ljava/lang/Object;
.source "ServerPreparedStatement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/ServerPreparedStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindValue"
.end annotation


# instance fields
.field public bindLength:J

.field public boundBeforeExecutionNum:J

.field public bufferType:I

.field public doubleBinding:D

.field public floatBinding:F

.field public isLongData:Z

.field public isNull:Z

.field public isSet:Z

.field public longBinding:J

.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    return-void
.end method

.method constructor <init>(Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;)V
    .locals 2

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 97
    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->boundBeforeExecutionNum:J

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 121
    iget-object v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    iput-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 122
    iget-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    .line 123
    iget-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    .line 124
    iget-boolean v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 125
    iget v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    .line 126
    iget-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    .line 127
    iget-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    .line 128
    iget v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    .line 129
    iget-wide v0, p1, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    return-void
.end method


# virtual methods
.method getBoundLength()J
    .locals 7

    .line 191
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v0, :cond_1

    .line 196
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bindLength:J

    return-wide v0

    .line 199
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    const/16 v3, 0xf

    if-eq v0, v3, :cond_2

    const/16 v3, 0xf6

    if-eq v0, v3, :cond_2

    const-wide/16 v3, 0x8

    const-wide/16 v5, 0x4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    return-wide v1

    :pswitch_0
    const-wide/16 v0, 0x9

    return-wide v0

    :pswitch_1
    const-wide/16 v0, 0x7

    return-wide v0

    :pswitch_2
    return-wide v3

    :pswitch_3
    const-wide/16 v0, 0xb

    return-wide v0

    :pswitch_4
    return-wide v3

    :pswitch_5
    return-wide v5

    :pswitch_6
    return-wide v5

    :pswitch_7
    const-wide/16 v0, 0x2

    return-wide v0

    :pswitch_8
    const-wide/16 v0, 0x1

    return-wide v0

    .line 225
    :cond_2
    :pswitch_9
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v0, [B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfd
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 133
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    .line 134
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isSet:Z

    const/4 v1, 0x0

    .line 135
    iput-object v1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    .line 136
    iput-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    const-wide/16 v0, 0x0

    .line 138
    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    const/4 v0, 0x0

    .line 139
    iput v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    const-wide/16 v0, 0x0

    .line 140
    iput-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isLongData:Z

    if-eqz v0, :cond_0

    const-string p1, "\' STREAM DATA \'"

    return-object p1

    .line 153
    :cond_0
    iget-boolean v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->isNull:Z

    if-eqz v0, :cond_1

    const-string p1, "NULL"

    return-object p1

    .line 157
    :cond_1
    iget v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->bufferType:I

    const/16 v1, 0xf

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    .line 180
    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    const-string p1, "byte data"

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 186
    :cond_3
    iget-object p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :pswitch_0
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->doubleBinding:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :pswitch_1
    iget p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->floatBinding:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 162
    :pswitch_2
    iget-wide v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->longBinding:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :pswitch_3
    if-eqz p1, :cond_5

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 177
    :cond_5
    iget-object p1, p0, Lcom/mysql/jdbc/ServerPreparedStatement$BindValue;->value:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xa
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xfd
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
