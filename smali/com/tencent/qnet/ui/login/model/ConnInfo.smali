.class public Lcom/tencent/qnet/ui/login/model/ConnInfo;
.super Ljava/lang/Object;
.source "ConnInfo.java"


# instance fields
.field private code:I

.field private codeDescription:Ljava/lang/String;

.field private extendData:I

.field private result:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->code:I

    return v0
.end method

.method public getCodeDescription()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->codeDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExtendData()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->extendData:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->result:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->success:Z

    return v0
.end method

.method public setCode(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->code:I

    return-void
.end method

.method public setCodeDescription(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->codeDescription:Ljava/lang/String;

    return-void
.end method

.method public setExtendData(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->extendData:I

    return-void
.end method

.method public setResult(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->result:Ljava/lang/String;

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/tencent/qnet/ui/login/model/ConnInfo;->success:Z

    return-void
.end method
