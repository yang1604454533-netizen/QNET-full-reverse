package com.tencent.qnet.ui.login;

import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.connect.UserInfo;
import com.tencent.connect.common.Constants;
import com.tencent.qim.R;
import com.tencent.qnet.common.SystemUtil;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.global.QnetApplication;
import com.tencent.qnet.ui.MainActivity;
import com.tencent.qnet.ui.login.activity.WebOALoginActivity;
import com.tencent.qnet.ui.login.manager.LoginManager;
import com.tencent.qnet.ui.login.model.ConnInfo;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import np.C0036;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class LoginActivity extends AppCompatActivity implements View.OnClickListener {
    private Tencent mTencent;
    private ImageView oaLogin;
    private ImageView qqLogin;
    private LoginCallBack loginCallBack = new LoginCallBack();
    private GetUserInfoCallBack getUserInfoCallBack = new GetUserInfoCallBack();

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 11101 || i == 10102) {
            Tencent.onActivityResultData(i, i2, intent, this.loginCallBack);
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        C0036.show();
        super.onCreate(bundle);
        setContentView(R.layout.activity_login);
        this.mTencent = Tencent.createInstance("1108754378", getApplicationContext(), "");
        if (this.mTencent.isSessionValid()) {
            this.mTencent.logout(this);
        }
        this.oaLogin = (ImageView) findViewById(R.id.oalogin);
        this.qqLogin = (ImageView) findViewById(R.id.qqlogin);
        this.qqLogin.setOnClickListener(this);
        this.oaLogin.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.login.LoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.setClass(LoginActivity.this, WebOALoginActivity.class);
                intent.addFlags(268468224);
                LoginActivity.this.startActivity(intent);
            }
        });
        if (LoginManager.IS_LOGIN) {
            Intent intent = new Intent();
            intent.setClass(this, MainActivity.class);
            startActivity(intent);
            finish();
        } else {
            new Thread(new AutoLoginRunnable()).start();
        }
        try {
            ((TextView) findViewById(R.id.txtVersion)).setText(String.format("v%s", SystemUtil.getAppVersionInfo(this).versionName));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.qqlogin) {
            return;
        }
        Log.v(GlobalSettings.LOG_TAG, "qq login onclick");
        if (this.mTencent.isSessionValid()) {
            return;
        }
        this.mTencent.login(this, "all", this.loginCallBack);
    }

    class AutoLoginRunnable implements Runnable {
        AutoLoginRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConnInfo connInfoAutoLogin = LoginManager.autoLogin(LoginActivity.this);
            if (!connInfoAutoLogin.isSuccess()) {
                if (LoginManager.isAutoQQConnectLogin(LoginActivity.this, LoginActivity.this.mTencent)) {
                    LoginActivity.this.startMainActivity();
                }
            } else {
                LoginManager.autoLoginSuccess(LoginActivity.this, connInfoAutoLogin.getResult());
                LoginActivity.this.finish();
            }
        }
    }

    public void startMainActivity() {
        Intent intent = new Intent();
        intent.setClass(this, MainActivity.class);
        startActivity(intent);
        finish();
    }

    class LoginCallBack implements IUiListener {
        LoginCallBack() {
        }

        @Override // com.tencent.tauth.IUiListener
        public void onComplete(Object obj) {
            Log.v(GlobalSettings.LOG_TAG, "LoginCallBack");
            try {
                JSONObject jSONObject = new JSONObject(obj.toString());
                LoginActivity.this.mTencent.setAccessToken(jSONObject.getString(Constants.PARAM_ACCESS_TOKEN), "604800");
                LoginActivity.this.mTencent.setOpenId(jSONObject.getString("openid"));
                SharedPreferences.Editor editorEdit = LoginActivity.this.getSharedPreferences(Constants.LOGIN_INFO, 0).edit();
                editorEdit.putString("qq_connect_openid", jSONObject.getString("openid"));
                editorEdit.putString("qq_connect_access", jSONObject.getString(Constants.PARAM_ACCESS_TOKEN));
                editorEdit.putLong("qq_connect_lastlogintime", System.currentTimeMillis());
                editorEdit.commit();
                new UserInfo(LoginActivity.this, LoginActivity.this.mTencent.getQQToken()).getUserInfo(LoginActivity.this.getUserInfoCallBack);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }

        @Override // com.tencent.tauth.IUiListener
        public void onError(UiError uiError) {
            Log.e(GlobalSettings.LOG_TAG, "Login error.");
        }

        @Override // com.tencent.tauth.IUiListener
        public void onCancel() {
            Log.v(GlobalSettings.LOG_TAG, "Login cancel");
        }
    }

    class GetUserInfoCallBack implements IUiListener {
        GetUserInfoCallBack() {
        }

        @Override // com.tencent.tauth.IUiListener
        public void onComplete(Object obj) {
            Log.v(GlobalSettings.LOG_TAG, "GetUserInfoCallBack");
            try {
                JSONObject jSONObject = new JSONObject(obj.toString());
                if (jSONObject.has("nickname")) {
                    Log.v(GlobalSettings.LOG_TAG, "nick name : " + jSONObject.getString("nickname"));
                    SharedPreferences sharedPreferences = LoginActivity.this.getSharedPreferences(Constants.LOGIN_INFO, 0);
                    SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                    editorEdit.putString("qq_connect_nick", jSONObject.getString("nickname"));
                    editorEdit.commit();
                    ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("nick", sharedPreferences.getString("qq_connect_nick", "")).apply();
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            LoginActivity.this.startMainActivity();
        }

        @Override // com.tencent.tauth.IUiListener
        public void onError(UiError uiError) {
            Log.e(GlobalSettings.LOG_TAG, "user info error.");
        }

        @Override // com.tencent.tauth.IUiListener
        public void onCancel() {
            Log.v(GlobalSettings.LOG_TAG, "user info cancel");
        }
    }
}
