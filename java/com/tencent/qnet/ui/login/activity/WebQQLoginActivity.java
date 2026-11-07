package com.tencent.qnet.ui.login.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tencent.qim.R;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.ui.login.LoginActivity;
import com.tencent.qnet.ui.login.manager.LoginManager;
import com.tencent.qnet.ui.login.model.ConnInfo;
import com.tencent.qnet.ui.login.model.CookieInfo;
import com.tencent.qnet.ui.login.util.ServerConfig;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class WebQQLoginActivity extends AppCompatActivity {
    private String URL;
    private ConnInfo conninfo;
    private boolean mLoginFlag;
    private String mSkey;
    private String mUin;
    private WebView mWebView;
    private Toolbar toolbar;
    public final int REQ_QLOGIN = 256;
    private Handler mHandler = new WebQQLoginHandler(this);

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    @SuppressLint({"SetJavaScriptEnabled"})
    protected void onCreate(Bundle bundle) {
        Method method;
        super.onCreate(bundle);
        setContentView(R.layout.activity_web_qqlogin);
        this.toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(this.toolbar);
        this.toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.login.activity.WebQQLoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WebQQLoginActivity.this.startActivity(new Intent(WebQQLoginActivity.this, (Class<?>) LoginActivity.class));
                WebQQLoginActivity.this.finish();
            }
        });
        this.mWebView = (WebView) findViewById(R.id.webview);
        this.mLoginFlag = false;
        try {
            if (Build.VERSION.SDK_INT >= 16 && (method = this.mWebView.getSettings().getClass().getMethod("setAllowUniversalAccessFromFileURLs", Boolean.TYPE)) != null) {
                method.invoke(this.mWebView.getSettings(), true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        setWebview();
    }

    public void setWebview() {
        this.mWebView.clearCache(true);
        this.mWebView.clearHistory();
        clearCookies(this);
        this.URL = ServerConfig.WEB_POST_URL;
        this.mWebView.setWebViewClient(new WebQQLoginClient());
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setBuiltInZoomControls(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        settings.setCacheMode(2);
        this.mWebView.loadUrl(this.URL);
        Log.v(GlobalSettings.LOG_TAG, "load url " + this.URL);
    }

    private class WebQQLoginClient extends WebViewClient {
        private WebQQLoginClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!str.contains("https://ssl.ptlogin2.qq.com/j_newreg_url") && !str.contains("https://ssl.ptlogin2.qq.com/ptui_forgetpwd") && !str.contains("http://id.qq.com/index.html#account") && !str.contains("http://support.qq.com/write.shtml?guest")) {
                if (!WebQQLoginActivity.this.mLoginFlag && (str.equals("https://wetest.qq.com/") || str.equals(ServerConfig.REGISTER_FINISH_URL))) {
                    CookieSyncManager.createInstance(WebQQLoginActivity.this);
                    String cookie = CookieManager.getInstance().getCookie(str);
                    CookieInfo cookieInfo = new CookieInfo();
                    if (cookie != null) {
                        LoginManager.parseCookie(cookie, cookieInfo);
                    }
                    LoginManager.setCookie(cookieInfo, ServerConfig.QQLOGIN);
                    WebQQLoginActivity.this.mHandler.post(WebQQLoginActivity.this.new WebQQLoginRunnable());
                    return true;
                }
                webView.loadUrl(str);
                return false;
            }
            WebQQLoginActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
        }
    }

    public static void clearCookies(Context context) {
        if (Build.VERSION.SDK_INT >= 22) {
            CookieManager.getInstance().removeAllCookies(null);
            CookieManager.getInstance().flush();
            return;
        }
        CookieSyncManager cookieSyncManagerCreateInstance = CookieSyncManager.createInstance(context);
        cookieSyncManagerCreateInstance.startSync();
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.removeAllCookie();
        cookieManager.removeSessionCookie();
        cookieSyncManagerCreateInstance.stopSync();
        cookieSyncManagerCreateInstance.sync();
    }

    static class WebQQLoginHandler extends Handler {
        private final WeakReference<WebQQLoginActivity> mActivity;
        private final WebQQLoginActivity mContext;

        public WebQQLoginHandler(WebQQLoginActivity webQQLoginActivity) {
            this.mActivity = new WeakReference<>(webQQLoginActivity);
            this.mContext = webQQLoginActivity;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    this.mContext.mLoginFlag = true;
                    this.mContext.finish();
                    LoginManager.autoLoginSuccess(this.mContext, this.mContext.conninfo.getResult());
                    break;
                case 1:
                    Log.e(GlobalSettings.LOG_TAG, "WebQQLogin Fail : " + this.mContext.conninfo.getResult());
                    break;
                default:
                    Log.e(GlobalSettings.LOG_TAG, "LoginWebQQResult is error : " + message.what);
                    break;
            }
        }
    }

    class WebQQLoginRunnable implements Runnable {
        WebQQLoginRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            new Thread(new Runnable() { // from class: com.tencent.qnet.ui.login.activity.WebQQLoginActivity.WebQQLoginRunnable.1
                @Override // java.lang.Runnable
                public void run() {
                    Message messageObtainMessage = WebQQLoginActivity.this.mHandler.obtainMessage();
                    WebQQLoginActivity.this.conninfo = LoginManager.autoLogin(WebQQLoginActivity.this);
                    messageObtainMessage.what = !WebQQLoginActivity.this.conninfo.isSuccess() ? 1 : 0;
                    WebQQLoginActivity.this.mHandler.sendMessage(messageObtainMessage);
                }
            }).start();
        }
    }

    @Override // android.support.v7.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            startActivity(new Intent(this, (Class<?>) LoginActivity.class));
            finish();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (this.mWebView != null) {
            ViewGroup viewGroup = (ViewGroup) this.mWebView.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.mWebView);
            }
            this.mWebView.removeAllViews();
            this.mWebView.destroy();
        }
        super.onDestroy();
    }
}
