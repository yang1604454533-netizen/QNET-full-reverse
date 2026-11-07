.class Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qnet/ui/login/LoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoginCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qnet/ui/login/LoginActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qnet/ui/login/LoginActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 172
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Login cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 146
    sget-object v0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v1, "LoginCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-static {p1}, Lcom/tencent/qnet/ui/login/LoginActivity;->access$000(Lcom/tencent/qnet/ui/login/LoginActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "604800"

    invoke-virtual {p1, v1, v2}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-static {p1}, Lcom/tencent/qnet/ui/login/LoginActivity;->access$000(Lcom/tencent/qnet/ui/login/LoginActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    const-string v1, "openid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    const-string v1, "login_info"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/tencent/qnet/ui/login/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 152
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "qq_connect_openid"

    const-string v2, "openid"

    .line 153
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "qq_connect_access"

    const-string v2, "access_token"

    .line 154
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "qq_connect_lastlogintime"

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 156
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    new-instance p1, Lcom/tencent/connect/UserInfo;

    iget-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    iget-object v1, p0, Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-static {v1}, Lcom/tencent/qnet/ui/login/LoginActivity;->access$000(Lcom/tencent/qnet/ui/login/LoginActivity;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/tencent/connect/UserInfo;-><init>(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;)V

    .line 158
    iget-object v0, p0, Lcom/tencent/qnet/ui/login/LoginActivity$LoginCallBack;->this$0:Lcom/tencent/qnet/ui/login/LoginActivity;

    invoke-static {v0}, Lcom/tencent/qnet/ui/login/LoginActivity;->access$100(Lcom/tencent/qnet/ui/login/LoginActivity;)Lcom/tencent/qnet/ui/login/LoginActivity$GetUserInfoCallBack;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/connect/UserInfo;->getUserInfo(Lcom/tencent/tauth/IUiListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 1

    .line 167
    sget-object p1, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Login error."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
