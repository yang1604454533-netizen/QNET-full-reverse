package com.tencent.open;

import android.R;
import android.annotation.SuppressLint;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.g;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.k;
import com.tencent.tauth.AuthActivity;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class TDialog extends b {
    static final FrameLayout.LayoutParams c = new FrameLayout.LayoutParams(-1, -1);
    static Toast d = null;
    private static WeakReference<ProgressDialog> f;
    private WeakReference<Context> e;
    private String g;
    private OnTimeListener h;
    private IUiListener i;
    private FrameLayout j;
    private com.tencent.open.b.b k;
    private Handler l;
    private boolean m;
    private QQToken n;

    /* JADX INFO: compiled from: ProGuard */
    private class THandler extends Handler {
        private OnTimeListener b;

        public THandler(OnTimeListener onTimeListener, Looper looper) {
            super(looper);
            this.b = onTimeListener;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            SLog.d("openSDK_LOG.TDialog", "--handleMessage--msg.WHAT = " + message.what);
            switch (message.what) {
                case 1:
                    this.b.a((String) message.obj);
                    break;
                case 2:
                    this.b.onCancel();
                    break;
                case 3:
                    if (TDialog.this.e != null && TDialog.this.e.get() != null) {
                        TDialog.c((Context) TDialog.this.e.get(), (String) message.obj);
                        break;
                    }
                    break;
                case 5:
                    if (TDialog.this.e != null && TDialog.this.e.get() != null) {
                        TDialog.d((Context) TDialog.this.e.get(), (String) message.obj);
                        break;
                    }
                    break;
            }
        }
    }

    /* JADX INFO: compiled from: ProGuard */
    private static class OnTimeListener implements IUiListener {
        String a;
        String b;
        private WeakReference<Context> c;
        private String d;
        private IUiListener e;

        public OnTimeListener(Context context, String str, String str2, String str3, IUiListener iUiListener) {
            this.c = new WeakReference<>(context);
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
            String str2 = str;
            g.a().a(this.d + "_H5", SystemClock.elapsedRealtime(), 0L, 0L, uiError.errorCode, str2, false);
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

    public TDialog(Context context, String str, String str2, IUiListener iUiListener, QQToken qQToken) {
        super(context, R.style.Theme.Translucent.NoTitleBar);
        this.m = false;
        this.n = null;
        this.e = new WeakReference<>(context);
        this.g = str2;
        this.h = new OnTimeListener(context, str, str2, qQToken.getAppId(), iUiListener);
        this.l = new THandler(this.h, context.getMainLooper());
        this.i = iUiListener;
        this.n = qQToken;
    }

    @Override // com.tencent.open.b, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        super.onCreate(bundle);
        a();
        b();
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.h != null) {
            this.h.onCancel();
        }
        super.onBackPressed();
    }

    private void a() {
        new TextView(this.e.get()).setText("test");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.k = new com.tencent.open.b.b(this.e.get());
        this.k.setLayoutParams(layoutParams);
        this.j = new FrameLayout(this.e.get());
        layoutParams.gravity = 17;
        this.j.setLayoutParams(layoutParams);
        this.j.addView(this.k);
        setContentView(this.j);
    }

    @Override // com.tencent.open.b
    protected void a(String str) {
        SLog.d("openSDK_LOG.TDialog", "--onConsoleMessage--");
        try {
            this.a.a(this.k, str);
        } catch (Exception unused) {
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void b() {
        this.k.setVerticalScrollBarEnabled(false);
        this.k.setHorizontalScrollBarEnabled(false);
        this.k.setWebViewClient(new FbWebViewClient());
        this.k.setWebChromeClient(this.b);
        this.k.clearFormData();
        WebSettings settings = this.k.getSettings();
        if (settings == null) {
            return;
        }
        settings.setSavePassword(false);
        settings.setSaveFormData(false);
        settings.setCacheMode(-1);
        settings.setNeedInitialFocus(false);
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setRenderPriority(WebSettings.RenderPriority.HIGH);
        settings.setJavaScriptEnabled(true);
        if (this.e != null && this.e.get() != null) {
            settings.setDatabaseEnabled(true);
            settings.setDatabasePath(this.e.get().getApplicationContext().getDir("databases", 0).getPath());
        }
        settings.setDomStorageEnabled(true);
        this.a.a(new JsListener(), "sdk_js_if");
        this.k.loadUrl(this.g);
        this.k.setLayoutParams(c);
        this.k.setVisibility(4);
        this.k.getSettings().setSavePassword(false);
    }

    /* JADX INFO: compiled from: ProGuard */
    private class JsListener extends a.b {
        private JsListener() {
        }

        public void onAddShare(String str) {
            SLog.d("openSDK_LOG.TDialog", "JsListener onAddShare");
            onComplete(str);
        }

        public void onInvite(String str) {
            onComplete(str);
        }

        public void onCancelAddShare(String str) {
            SLog.e("openSDK_LOG.TDialog", "JsListener onCancelAddShare" + str);
            onCancel("cancel");
        }

        public void onCancelLogin() {
            onCancel("");
        }

        public void onCancelInvite() {
            SLog.e("openSDK_LOG.TDialog", "JsListener onCancelInvite");
            onCancel("");
        }

        public void onComplete(String str) {
            TDialog.this.l.obtainMessage(1, str).sendToTarget();
            SLog.e("openSDK_LOG.TDialog", "JsListener onComplete" + str);
            TDialog.this.dismiss();
        }

        public void onCancel(String str) {
            SLog.e("openSDK_LOG.TDialog", "JsListener onCancel --msg = " + str);
            TDialog.this.l.obtainMessage(2, str).sendToTarget();
            TDialog.this.dismiss();
        }

        public void showMsg(String str) {
            TDialog.this.l.obtainMessage(3, str).sendToTarget();
        }

        public void onLoad(String str) {
            TDialog.this.l.obtainMessage(4, str).sendToTarget();
        }
    }

    /* JADX INFO: compiled from: ProGuard */
    private class FbWebViewClient extends WebViewClient {
        private FbWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Uri uri;
            SLog.v("openSDK_LOG.TDialog", "Redirect URL: " + str);
            if (str.startsWith(com.tencent.open.utils.g.a().a((Context) TDialog.this.e.get(), "auth://tauth.qq.com/"))) {
                TDialog.this.h.onComplete(k.c(str));
                if (TDialog.this.isShowing()) {
                    TDialog.this.dismiss();
                }
                return true;
            }
            if (str.startsWith(Constants.CANCEL_URI)) {
                TDialog.this.h.onCancel();
                if (TDialog.this.isShowing()) {
                    TDialog.this.dismiss();
                }
                return true;
            }
            if (str.startsWith(Constants.CLOSE_URI)) {
                if (TDialog.this.isShowing()) {
                    TDialog.this.dismiss();
                }
                return true;
            }
            if (!str.startsWith(Constants.DOWNLOAD_URI) && !str.endsWith(".apk")) {
                return str.startsWith("auth://progress");
            }
            try {
                if (str.startsWith(Constants.DOWNLOAD_URI)) {
                    uri = Uri.parse(Uri.decode(str.substring(Constants.DOWNLOAD_URI.length())));
                } else {
                    uri = Uri.parse(Uri.decode(str));
                }
                Intent intent = new Intent("android.intent.action.VIEW", uri);
                intent.addFlags(268435456);
                if (TDialog.this.e != null && TDialog.this.e.get() != null) {
                    ((Context) TDialog.this.e.get()).startActivity(intent);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            TDialog.this.h.onError(new UiError(i, str, str2));
            if (TDialog.this.e != null && TDialog.this.e.get() != null) {
                Toast.makeText((Context) TDialog.this.e.get(), "网络连接异常或系统错误", 0).show();
            }
            TDialog.this.dismiss();
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            SLog.v("openSDK_LOG.TDialog", "Webview loading URL: " + str);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            TDialog.this.k.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, String str) {
        try {
            JSONObject jSONObjectD = k.d(str);
            int i = jSONObjectD.getInt(SocialConstants.PARAM_TYPE);
            String string = jSONObjectD.getString("msg");
            if (i == 0) {
                if (d == null) {
                    d = Toast.makeText(context, string, 0);
                } else {
                    d.setView(d.getView());
                    d.setText(string);
                    d.setDuration(0);
                }
                d.show();
                return;
            }
            if (i == 1) {
                if (d == null) {
                    d = Toast.makeText(context, string, 1);
                } else {
                    d.setView(d.getView());
                    d.setText(string);
                    d.setDuration(1);
                }
                d.show();
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, String str) {
        if (context == null || str == null) {
            return;
        }
        try {
            JSONObject jSONObjectD = k.d(str);
            int i = jSONObjectD.getInt(AuthActivity.ACTION_KEY);
            String string = jSONObjectD.getString("msg");
            if (i == 1) {
                if (f == null || f.get() == null) {
                    ProgressDialog progressDialog = new ProgressDialog(context);
                    progressDialog.setMessage(string);
                    f = new WeakReference<>(progressDialog);
                    progressDialog.show();
                } else {
                    f.get().setMessage(string);
                    if (!f.get().isShowing()) {
                        f.get().show();
                    }
                }
            } else if (i == 0) {
                if (f == null) {
                    return;
                }
                if (f.get() != null && f.get().isShowing()) {
                    f.get().dismiss();
                    f = null;
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }
}
