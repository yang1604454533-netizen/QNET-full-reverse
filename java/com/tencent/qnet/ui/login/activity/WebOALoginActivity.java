package com.tencent.qnet.ui.login.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
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
import android.webkit.SslErrorHandler;
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
public class WebOALoginActivity extends AppCompatActivity {
    private String URL;
    private ConnInfo conninfo;
    private int finish = 0;
    private Handler mHandler = new WebQQLoginHandler(this);
    private boolean mLoginFlag;
    private WebView mWebView;
    private Toolbar toolbar;

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    @SuppressLint({"SetJavaScriptEnabled"})
    protected void onCreate(Bundle bundle) {
        Method method;
        super.onCreate(bundle);
        setContentView(R.layout.activity_web_oalogin);
        this.toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(this.toolbar);
        this.toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.login.activity.WebOALoginActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WebOALoginActivity.this.startActivity(new Intent(WebOALoginActivity.this, (Class<?>) LoginActivity.class));
                WebOALoginActivity.this.finish();
            }
        });
        this.mWebView = (WebView) findViewById(R.id.webview);
        this.mLoginFlag = false;
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
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
        clearCookies(this);
        this.URL = ServerConfig.WEB_OA_POST_URL;
        this.mWebView.setWebViewClient(new WebLoginClient());
        WebSettings settings = this.mWebView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setBuiltInZoomControls(true);
        settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        settings.setCacheMode(2);
        this.mWebView.loadUrl(this.URL);
    }

    public static void clearCookies(Context context) {
        if (Build.VERSION.SDK_INT >= 22) {
            CookieManager.getInstance().removeAllCookies(null);
            CookieManager.getInstance().removeSessionCookies(null);
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

    private class WebLoginClient extends WebViewClient {
        private WebLoginClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (WebOALoginActivity.this.mLoginFlag || !str.equals("https://wetest.qq.com/")) {
                return false;
            }
            String cookie = CookieManager.getInstance().getCookie("https://wetest.qq.com/");
            CookieSyncManager.getInstance().sync();
            CookieInfo cookieInfo = new CookieInfo();
            if (cookie != null) {
                LoginManager.parseCookie(cookie, cookieInfo);
            }
            LoginManager.setCookie(cookieInfo, ServerConfig.OALOGIN);
            WebOALoginActivity.this.mHandler.post(WebOALoginActivity.this.new WebOALoginRunnable());
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            sslErrorHandler.proceed();
        }
    }

    static class WebQQLoginHandler extends Handler {
        private final WeakReference<WebOALoginActivity> mActivity;
        private final WebOALoginActivity mContext;

        public WebQQLoginHandler(WebOALoginActivity webOALoginActivity) {
            this.mActivity = new WeakReference<>(webOALoginActivity);
            this.mContext = webOALoginActivity;
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
                    Log.e(GlobalSettings.LOG_TAG, "WebOALogin Fail : " + this.mContext.conninfo.getResult());
                    break;
                default:
                    Log.e(GlobalSettings.LOG_TAG, "LoginWebOAResult is error : " + message.what);
                    break;
            }
        }
    }

    class WebOALoginRunnable implements Runnable {
        WebOALoginRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            new Thread(new Runnable() { // from class: com.tencent.qnet.ui.login.activity.WebOALoginActivity.WebOALoginRunnable.1
                @Override // java.lang.Runnable
                public void run() {
                    Message messageObtainMessage = WebOALoginActivity.this.mHandler.obtainMessage();
                    WebOALoginActivity.this.conninfo = LoginManager.autoLogin(WebOALoginActivity.this);
                    messageObtainMessage.what = !WebOALoginActivity.this.conninfo.isSuccess() ? 1 : 0;
                    WebOALoginActivity.this.mHandler.sendMessage(messageObtainMessage);
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
