package com.tencent.connect.auth;

import android.R;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.mysql.jdbc.MysqlErrorNumbers;
import com.tencent.connect.common.Constants;
import com.tencent.open.SocialConstants;
import com.tencent.open.a.g;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.k;
import com.tencent.open.web.security.JniInterface;
import com.tencent.open.web.security.SecureJsInterface;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class a extends Dialog {
    private String a;
    private b b;
    private IUiListener c;
    private Handler d;
    private FrameLayout e;
    private LinearLayout f;
    private FrameLayout g;
    private ProgressBar h;
    private Button i;
    private String j;
    private com.tencent.open.b.c k;
    private Context l;
    private com.tencent.open.web.security.b m;
    private boolean n;
    private int o;
    private String p;
    private String q;
    private long r;
    private long s;
    private HashMap<String, Runnable> t;

    static /* synthetic */ int m(a aVar) {
        int i = aVar.o;
        aVar.o = i + 1;
        return i;
    }

    public a(Context context, String str, String str2, IUiListener iUiListener, QQToken qQToken) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        this.n = false;
        this.r = 0L;
        this.s = 30000L;
        this.l = context;
        this.a = str2;
        this.b = new b(str, str2, qQToken.getAppId(), iUiListener);
        this.d = new c(this.b, context.getMainLooper());
        this.c = iUiListener;
        this.j = str;
        this.m = new com.tencent.open.web.security.b();
        getWindow().setSoftInputMode(32);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        Window window = getWindow();
        if (window != null) {
            window.setFlags(1024, 1024);
        }
        super.onCreate(bundle);
        if (window != null) {
            View decorView = window.getDecorView();
            if (Build.VERSION.SDK_INT >= 16) {
                decorView.setSystemUiVisibility(MysqlErrorNumbers.ER_WRONG_NAME_FOR_INDEX);
            }
        }
        b();
        e();
        this.t = new HashMap<>();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (!this.n) {
            this.b.onCancel();
        }
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        super.onStop();
    }

    /* JADX INFO: compiled from: ProGuard */
    private class c extends Handler {
        private b b;

        public c(b bVar, Looper looper) {
            super(looper);
            this.b = bVar;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    this.b.a((String) message.obj);
                    break;
                case 2:
                    this.b.onCancel();
                    break;
                case 3:
                    a.b(a.this.l, (String) message.obj);
                    break;
            }
        }
    }

    /* JADX INFO: compiled from: ProGuard */
    private class b implements IUiListener {
        String a;
        String b;
        private String d;
        private IUiListener e;

        public b(String str, String str2, String str3, IUiListener iUiListener) {
            this.d = str;
            this.a = str2;
            this.b = str3;
            this.e = iUiListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            try {
                onComplete(k.d(str));
            } catch (JSONException e) {
                e.printStackTrace();
                onError(new UiError(-4, Constants.MSG_JSON_ERROR, str));
            }
        }

        @Override // com.tencent.tauth.IUiListener
        public void onComplete(Object obj) {
            JSONObject jSONObject = (JSONObject) obj;
            g.a().a(this.d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, jSONObject.optInt("ret", -6), this.a, false);
            if (this.e != null) {
                this.e.onComplete(jSONObject);
                this.e = null;
            }
        }

        @Override // com.tencent.tauth.IUiListener
        public void onError(UiError uiError) {
            String str;
            if (uiError.errorMessage != null) {
                str = uiError.errorMessage + this.a;
            } else {
                str = this.a;
            }
            g.a().a(this.d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, uiError.errorCode, str, false);
            a.this.a(str);
            if (this.e != null) {
                this.e.onError(uiError);
                this.e = null;
            }
        }

        @Override // com.tencent.tauth.IUiListener
        public void onCancel() {
            if (this.e != null) {
                this.e.onCancel();
                this.e = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        StringBuilder sb = new StringBuilder(str);
        if (!TextUtils.isEmpty(this.q) && this.q.length() >= 4) {
            String strSubstring = this.q.substring(this.q.length() - 4);
            sb.append("_u_");
            sb.append(strSubstring);
        }
        return sb.toString();
    }

    /* JADX INFO: renamed from: com.tencent.connect.auth.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ProGuard */
    private class C0005a extends WebViewClient {
        private C0005a() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Uri uri;
            SLog.v("openSDK_LOG.AuthDialog", "-->Redirect URL: " + str);
            if (str.startsWith("auth://browser")) {
                JSONObject jSONObjectC = k.c(str);
                a.this.n = a.this.f();
                if (!a.this.n) {
                    if (jSONObjectC.optString("fail_cb", null) != null) {
                        a.this.a(jSONObjectC.optString("fail_cb"), "");
                    } else if (jSONObjectC.optInt("fall_to_wv") == 1) {
                        a aVar = a.this;
                        StringBuilder sb = new StringBuilder();
                        sb.append(a.this.a);
                        sb.append(a.this.a.indexOf("?") > -1 ? "&" : "?");
                        aVar.a = sb.toString();
                        a.this.a = a.this.a + "browser_error=1";
                        a.this.k.loadUrl(a.this.a);
                    } else {
                        String strOptString = jSONObjectC.optString("redir", null);
                        if (strOptString != null) {
                            a.this.k.loadUrl(strOptString);
                        }
                    }
                }
                return true;
            }
            if (str.startsWith("auth://tauth.qq.com/")) {
                a.this.b.onComplete(k.c(str));
                a.this.dismiss();
                return true;
            }
            if (str.startsWith(Constants.CANCEL_URI)) {
                a.this.b.onCancel();
                a.this.dismiss();
                return true;
            }
            if (str.startsWith(Constants.CLOSE_URI)) {
                a.this.dismiss();
                return true;
            }
            if (str.startsWith(Constants.DOWNLOAD_URI) || str.endsWith(".apk")) {
                try {
                    if (str.startsWith(Constants.DOWNLOAD_URI)) {
                        uri = Uri.parse(Uri.decode(str.substring(Constants.DOWNLOAD_URI.length())));
                    } else {
                        uri = Uri.parse(Uri.decode(str));
                    }
                    Intent intent = new Intent("android.intent.action.VIEW", uri);
                    intent.addFlags(268435456);
                    a.this.l.startActivity(intent);
                } catch (Exception e) {
                    SLog.e("openSDK_LOG.AuthDialog", "-->start download activity exception, e: ", e);
                }
                return true;
            }
            if (str.startsWith("auth://progress")) {
                try {
                    List<String> pathSegments = Uri.parse(str).getPathSegments();
                    if (pathSegments.isEmpty()) {
                        return true;
                    }
                    int iIntValue = Integer.valueOf(pathSegments.get(0)).intValue();
                    if (iIntValue == 0) {
                        a.this.g.setVisibility(8);
                        a.this.k.setVisibility(0);
                    } else if (iIntValue == 1) {
                        a.this.g.setVisibility(0);
                    }
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            }
            if (!str.startsWith("auth://onLoginSubmit")) {
                if (a.this.m.a(a.this.k, str)) {
                    return true;
                }
                SLog.i("openSDK_LOG.AuthDialog", "-->Redirect URL: return false");
                return false;
            }
            try {
                List<String> pathSegments2 = Uri.parse(str).getPathSegments();
                if (!pathSegments2.isEmpty()) {
                    a.this.q = pathSegments2.get(0);
                }
            } catch (Exception unused2) {
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            SLog.i("openSDK_LOG.AuthDialog", "-->onReceivedError, errorCode: " + i + " | description: " + str);
            if (!k.b(a.this.l)) {
                a.this.b.onError(new UiError(9001, "当前网络不可用，请稍后重试！", str2));
                a.this.dismiss();
                return;
            }
            if (!a.this.p.startsWith("https://login.imgcache.qq.com/ptlogin/static/qzsjump.html?")) {
                long jElapsedRealtime = SystemClock.elapsedRealtime() - a.this.r;
                if (a.this.o >= 1 || jElapsedRealtime >= a.this.s) {
                    a.this.k.loadUrl(a.this.a());
                    return;
                } else {
                    a.m(a.this);
                    a.this.d.postDelayed(new Runnable() { // from class: com.tencent.connect.auth.a.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            a.this.k.loadUrl(a.this.p);
                        }
                    }, 500L);
                    return;
                }
            }
            a.this.b.onError(new UiError(i, str, str2));
            a.this.dismiss();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            SLog.v("openSDK_LOG.AuthDialog", "-->onPageStarted, url: " + str);
            super.onPageStarted(webView, str, bitmap);
            a.this.g.setVisibility(0);
            a.this.r = SystemClock.elapsedRealtime();
            if (!TextUtils.isEmpty(a.this.p)) {
                a.this.d.removeCallbacks((Runnable) a.this.t.remove(a.this.p));
            }
            a.this.p = str;
            d dVar = a.this.new d(a.this.p);
            a.this.t.put(str, dVar);
            a.this.d.postDelayed(dVar, 120000L);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            SLog.v("openSDK_LOG.AuthDialog", "-->onPageFinished, url: " + str);
            a.this.g.setVisibility(8);
            if (a.this.k != null) {
                a.this.k.setVisibility(0);
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            a.this.d.removeCallbacks((Runnable) a.this.t.remove(str));
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(8)
        public void onReceivedSslError(WebView webView, final SslErrorHandler sslErrorHandler, SslError sslError) {
            SLog.e("openSDK_LOG.AuthDialog", "-->onReceivedSslError " + sslError.getPrimaryError() + "请求不合法，请检查手机安全设置，如系统时间、代理等");
            String str = "The SSL certificate is invalid,do you countinue?";
            String str2 = "yes";
            String str3 = "no";
            if (Locale.getDefault().getLanguage().equals("zh")) {
                str = "ssl证书无效，是否继续访问？";
                str2 = "是";
                str3 = "否";
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(a.this.l);
            builder.setMessage(str);
            builder.setPositiveButton(str2, new DialogInterface.OnClickListener() { // from class: com.tencent.connect.auth.a.a.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    sslErrorHandler.proceed();
                }
            });
            builder.setNegativeButton(str3, new DialogInterface.OnClickListener() { // from class: com.tencent.connect.auth.a.a.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    sslErrorHandler.cancel();
                    a.this.dismiss();
                }
            });
            builder.create().show();
        }
    }

    /* JADX INFO: compiled from: ProGuard */
    class d implements Runnable {
        String a;

        public d(String str) {
            this.a = "";
            this.a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            SLog.v("openSDK_LOG.AuthDialog", "-->timeoutUrl: " + this.a + " | mRetryUrl: " + a.this.p);
            if (this.a.equals(a.this.p)) {
                a.this.b.onError(new UiError(9002, "请求页面超时，请稍后重试！", a.this.p));
                a.this.dismiss();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a() {
        String str = "https://login.imgcache.qq.com/ptlogin/static/qzsjump.html?" + this.a.substring(this.a.indexOf("?") + 1);
        SLog.i("openSDK_LOG.AuthDialog", "-->generateDownloadUrl, url: https://login.imgcache.qq.com/ptlogin/static/qzsjump.html?");
        return str;
    }

    private void b() {
        d();
        c();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.k = new com.tencent.open.b.c(this.l);
        if (Build.VERSION.SDK_INT >= 11) {
            this.k.setLayerType(1, null);
        }
        this.k.setLayoutParams(layoutParams);
        this.e = new FrameLayout(this.l);
        layoutParams.gravity = 17;
        this.e.setLayoutParams(layoutParams);
        this.e.addView(this.k);
        this.e.addView(this.g);
        String string = k.b(this.a).getString("style");
        if (string != null && "qr".equals(string)) {
            this.e.addView(this.i);
        }
        setContentView(this.e);
    }

    private void c() {
        this.i = new Button(this.l);
        this.i.setBackgroundDrawable(k.a("h5_qr_back.png", this.l));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = com.tencent.connect.avatar.a.a(this.l, 20.0f);
        layoutParams.topMargin = com.tencent.connect.avatar.a.a(this.l, 10.0f);
        this.i.setLayoutParams(layoutParams);
        this.i.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.connect.auth.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                a.this.dismiss();
                if (a.this.n || a.this.b == null) {
                    return;
                }
                a.this.b.onCancel();
            }
        });
    }

    private void d() {
        TextView textView;
        this.h = new ProgressBar(this.l);
        this.h.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.f = new LinearLayout(this.l);
        if (this.j.equals("action_login")) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 16;
            layoutParams.leftMargin = 5;
            textView = new TextView(this.l);
            if (Locale.getDefault().getLanguage().equals("zh")) {
                textView.setText("登录中...");
            } else {
                textView.setText("Logging in...");
            }
            textView.setTextColor(Color.rgb(255, 255, 255));
            textView.setTextSize(18.0f);
            textView.setLayoutParams(layoutParams);
        } else {
            textView = null;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        this.f.setLayoutParams(layoutParams2);
        this.f.addView(this.h);
        if (textView != null) {
            this.f.addView(textView);
        }
        this.g = new FrameLayout(this.l);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams3.gravity = 17;
        this.g.setLayoutParams(layoutParams3);
        this.g.setBackgroundColor(Color.parseColor("#B3000000"));
        this.g.addView(this.f);
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void e() {
        this.k.setVerticalScrollBarEnabled(false);
        this.k.setHorizontalScrollBarEnabled(false);
        this.k.setWebViewClient(new C0005a());
        this.k.setWebChromeClient(new WebChromeClient());
        this.k.clearFormData();
        this.k.clearSslPreferences();
        this.k.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.tencent.connect.auth.a.2
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                return true;
            }
        });
        this.k.setOnTouchListener(new View.OnTouchListener() { // from class: com.tencent.connect.auth.a.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                    case 1:
                        if (!view.hasFocus()) {
                            view.requestFocus();
                        }
                        break;
                }
                return false;
            }
        });
        WebSettings settings = this.k.getSettings();
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        settings.setCacheMode(-1);
        settings.setNeedInitialFocus(false);
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setJavaScriptEnabled(true);
        settings.setDatabaseEnabled(true);
        settings.setDatabasePath(this.l.getDir("databases", 0).getPath());
        settings.setDomStorageEnabled(true);
        SLog.v("openSDK_LOG.AuthDialog", "-->mUrl : " + this.a);
        this.p = this.a;
        this.k.loadUrl(this.a);
        this.k.setVisibility(4);
        this.k.getSettings().setSavePassword(false);
        this.m.a(new SecureJsInterface(), "SecureJsInterface");
        SecureJsInterface.isPWDEdit = false;
        super.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.tencent.connect.auth.a.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                try {
                    if (JniInterface.isJniOk) {
                        JniInterface.clearAllPWD();
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        com.tencent.connect.auth.b bVarA = com.tencent.connect.auth.b.a();
        String strC = bVarA.c();
        com.tencent.connect.auth.b.a aVar = new com.tencent.connect.auth.b.a();
        aVar.a = this.c;
        aVar.b = this;
        aVar.c = strC;
        String strA = bVarA.a(aVar);
        String strSubstring = this.a.substring(0, this.a.indexOf("?"));
        Bundle bundleB = k.b(this.a);
        bundleB.putString("token_key", strC);
        bundleB.putString("serial", strA);
        bundleB.putString("browser", "1");
        this.a = strSubstring + "?" + HttpUtils.encodeUrl(bundleB);
        return k.a(this.l, this.a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str) {
        try {
            JSONObject jSONObjectD = k.d(str);
            int i = jSONObjectD.getInt(SocialConstants.PARAM_TYPE);
            Toast.makeText(context.getApplicationContext(), jSONObjectD.getString("msg"), i).show();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    public void a(String str, String str2) {
        this.k.loadUrl("javascript:" + str + "(" + str2 + ");void(" + System.currentTimeMillis() + ");");
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.t.clear();
        this.d.removeCallbacksAndMessages(null);
        try {
            if ((this.l instanceof Activity) && !((Activity) this.l).isFinishing() && isShowing()) {
                super.dismiss();
                SLog.i("openSDK_LOG.AuthDialog", "-->dismiss dialog");
            }
        } catch (Exception e) {
            SLog.e("openSDK_LOG.AuthDialog", "-->dismiss dialog exception:", e);
        }
        if (this.k != null) {
            this.k.destroy();
            this.k = null;
        }
    }
}
