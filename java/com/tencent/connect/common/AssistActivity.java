package com.tencent.connect.common;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.tencent.open.SocialConstants;
import com.tencent.open.a.d;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.k;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONObject;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class AssistActivity extends Activity {
    public static final String EXTRA_INTENT = "openSDK_LOG.AssistActivity.ExtraIntent";
    private String d;
    private QQStayReceiver e;
    private int f;
    private boolean c = false;
    protected boolean a = false;
    protected Handler b = new Handler() { // from class: com.tencent.connect.common.AssistActivity.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 0 && !AssistActivity.this.isFinishing()) {
                SLog.w("openSDK_LOG.AssistActivity", "-->finish by timeout");
                AssistActivity.this.finish();
            }
        }
    };

    public static Intent getAssistActivityIntent(Context context) {
        return new Intent(context, (Class<?>) AssistActivity.class);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        getWindow().addFlags(67108864);
        requestWindowFeature(1);
        super.onCreate(bundle);
        this.f = a();
        try {
            setRequestedOrientation(3);
        } catch (Exception e) {
            SLog.e("openSDK_LOG.AssistActivity", "onCreate setRequestedOrientation error : " + e.getMessage());
        }
        SLog.i("openSDK_LOG.AssistActivity", "--onCreate--");
        if (getIntent() == null) {
            SLog.e("openSDK_LOG.AssistActivity", "-->onCreate--getIntent() returns null");
            finish();
        }
        Intent intent = (Intent) getIntent().getParcelableExtra(EXTRA_INTENT);
        int intExtra = intent == null ? 0 : intent.getIntExtra(Constants.KEY_REQUEST_CODE, 0);
        this.d = intent == null ? "" : intent.getStringExtra("appid");
        Bundle bundleExtra = getIntent().getBundleExtra("h5_share_data");
        if (bundle != null) {
            this.c = bundle.getBoolean("RESTART_FLAG");
            this.a = bundle.getBoolean("RESUME_FLAG", false);
        }
        if (this.c) {
            SLog.d("openSDK_LOG.AssistActivity", "is restart");
            return;
        }
        if (bundleExtra != null) {
            SLog.w("openSDK_LOG.AssistActivity", "--onCreate--h5 bundle not null, will open browser");
            a(bundleExtra);
            return;
        }
        if (intent != null) {
            SLog.i("openSDK_LOG.AssistActivity", "--onCreate--activityIntent not null, will start activity, reqcode = " + intExtra);
            try {
                IntentFilter intentFilter = new IntentFilter(Constants.SHARE_QQ_AND_STAY + intent.getData().getQueryParameter("share_id"));
                if (this.e == null) {
                    this.e = new QQStayReceiver();
                }
                registerReceiver(this.e, intentFilter);
            } catch (Exception e2) {
                SLog.i("openSDK_LOG.AssistActivity", "registerReceiver exception : " + e2.getMessage());
            }
            startActivityForResult(intent, intExtra);
            return;
        }
        SLog.e("openSDK_LOG.AssistActivity", "--onCreate--activityIntent is null");
        finish();
    }

    private int a() {
        if (getWindowManager() == null) {
            SLog.e("openSDK_LOG.AssistActivity", "--getRotation-- getWindowManager() == null");
            return 0;
        }
        if (getWindowManager().getDefaultDisplay() == null) {
            SLog.e("openSDK_LOG.AssistActivity", "--getRotation-- etWindowManager().getDefaultDisplay() == null");
            return 0;
        }
        return getWindowManager().getDefaultDisplay().getRotation();
    }

    @Override // android.app.Activity
    protected void onStart() {
        SLog.i("openSDK_LOG.AssistActivity", "-->onStart");
        super.onStart();
    }

    @Override // android.app.Activity
    protected void onResume() {
        SLog.i("openSDK_LOG.AssistActivity", "-->onResume");
        super.onResume();
        Intent intent = getIntent();
        if (intent.getBooleanExtra("is_login", false)) {
            return;
        }
        if (!intent.getBooleanExtra("is_qq_mobile_share", false) && this.c && !isFinishing()) {
            finish();
        }
        if (this.a) {
            this.b.sendMessage(this.b.obtainMessage(0));
        } else {
            this.a = true;
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        SLog.i("openSDK_LOG.AssistActivity", "-->onPause");
        this.b.removeMessages(0);
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onStop() {
        SLog.i("openSDK_LOG.AssistActivity", "-->onStop");
        super.onStop();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        SLog.i("openSDK_LOG.AssistActivity", "-->onDestroy");
        super.onDestroy();
        if (this.e != null) {
            unregisterReceiver(this.e);
        }
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) {
        SLog.i("openSDK_LOG.AssistActivity", "--onNewIntent");
        super.onNewIntent(intent);
        int intExtra = intent.getIntExtra(Constants.KEY_REQUEST_CODE, -1);
        if (intExtra == 10108) {
            intent.putExtra(Constants.KEY_ACTION, "action_request_avatar");
            if (intent.getBooleanExtra(Constants.KEY_STAY, false)) {
                moveTaskToBack(true);
            }
            setResult(-1, intent);
            if (isFinishing()) {
                return;
            }
            finish();
            return;
        }
        if (intExtra == 10109) {
            intent.putExtra(Constants.KEY_ACTION, "action_request_set_emotion");
            if (intent.getBooleanExtra(Constants.KEY_STAY, false)) {
                moveTaskToBack(true);
            }
            setResult(-1, intent);
            if (isFinishing()) {
                return;
            }
            finish();
            return;
        }
        if (intExtra == 10110) {
            intent.putExtra(Constants.KEY_ACTION, "action_request_dynamic_avatar");
            if (intent.getBooleanExtra(Constants.KEY_STAY, false)) {
                moveTaskToBack(true);
            }
            setResult(-1, intent);
            if (isFinishing()) {
                return;
            }
            finish();
            return;
        }
        if (intExtra == 10111) {
            intent.putExtra(Constants.KEY_ACTION, "joinGroup");
            if (intent.getBooleanExtra(Constants.KEY_STAY, false)) {
                moveTaskToBack(true);
            }
            setResult(-1, intent);
            if (isFinishing()) {
                return;
            }
            finish();
            return;
        }
        if (intExtra == 10112) {
            intent.putExtra(Constants.KEY_ACTION, "bindGroup");
            if (intent.getBooleanExtra(Constants.KEY_STAY, false)) {
                moveTaskToBack(true);
            }
            setResult(-1, intent);
            if (isFinishing()) {
                return;
            }
            finish();
            return;
        }
        intent.putExtra(Constants.KEY_ACTION, "action_share");
        setResult(-1, intent);
        if (isFinishing()) {
            return;
        }
        SLog.i("openSDK_LOG.AssistActivity", "--onNewIntent--activity not finished, finish now");
        finish();
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        SLog.i("openSDK_LOG.AssistActivity", "--onSaveInstanceState--");
        bundle.putBoolean("RESTART_FLAG", true);
        bundle.putBoolean("RESUME_FLAG", this.a);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        StringBuilder sb = new StringBuilder();
        sb.append("--onActivityResult--requestCode: ");
        sb.append(i);
        sb.append(" | resultCode: ");
        sb.append(i2);
        sb.append("data = null ? ");
        sb.append(intent == null);
        SLog.i("openSDK_LOG.AssistActivity", sb.toString());
        super.onActivityResult(i, i2, intent);
        if (i == 0) {
            return;
        }
        if (intent != null) {
            intent.putExtra(Constants.KEY_ACTION, "action_login");
        }
        setResultData(i, intent);
        try {
            restoreEnterOrientation();
        } catch (Exception e) {
            SLog.e("openSDK_LOG.AssistActivity", "restoreEnterOrientation error : " + e.getMessage());
        }
        finish();
    }

    public void restoreEnterOrientation() {
        SLog.i("openSDK_LOG.AssistActivity", "--restoreEnterOrientation--mEnterRotation: " + this.f);
        switch (this.f) {
            case 1:
                setRequestedOrientation(0);
                break;
            case 2:
                setRequestedOrientation(9);
                break;
            case 3:
                setRequestedOrientation(8);
                break;
            default:
                setRequestedOrientation(1);
                break;
        }
    }

    public void setResultData(int i, Intent intent) {
        if (intent == null) {
            SLog.w("openSDK_LOG.AssistActivity", "--setResultData--intent is null, setResult ACTIVITY_CANCEL");
            setResult(0);
            if (i == 11101) {
                d.a().a("", this.d, "2", "1", "7", "2");
                return;
            }
            return;
        }
        try {
            String stringExtra = intent.getStringExtra(Constants.KEY_RESPONSE);
            SLog.d("openSDK_LOG.AssistActivity", "--setResultDataForLogin-- ");
            if (!TextUtils.isEmpty(stringExtra)) {
                JSONObject jSONObject = new JSONObject(stringExtra);
                String strOptString = jSONObject.optString("openid");
                String strOptString2 = jSONObject.optString(Constants.PARAM_ACCESS_TOKEN);
                if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                    SLog.i("openSDK_LOG.AssistActivity", "--setResultData--openid and token not empty, setResult ACTIVITY_OK");
                    setResult(-1, intent);
                    d.a().a(strOptString, this.d, "2", "1", "7", "0");
                } else {
                    SLog.w("openSDK_LOG.AssistActivity", "--setResultData--openid or token is empty, setResult ACTIVITY_CANCEL");
                    setResult(0, intent);
                    d.a().a("", this.d, "2", "1", "7", "1");
                }
            } else {
                SLog.w("openSDK_LOG.AssistActivity", "--setResultData--response is empty, setResult ACTIVITY_OK");
                setResult(-1, intent);
            }
        } catch (Exception e) {
            SLog.e("openSDK_LOG.AssistActivity", "--setResultData--parse response failed");
            e.printStackTrace();
        }
    }

    private void a(Bundle bundle) {
        String string = bundle.getString("viaShareType");
        String string2 = bundle.getString("callbackAction");
        String string3 = bundle.getString(SocialConstants.PARAM_URL);
        String string4 = bundle.getString("openId");
        String string5 = bundle.getString("appId");
        String str = "";
        String str2 = "";
        if ("shareToQQ".equals(string2)) {
            str = Constants.VIA_SHARE_TO_QQ;
            str2 = Constants.VIA_REPORT_TYPE_SHARE_TO_QQ;
        } else if ("shareToQzone".equals(string2)) {
            str = Constants.VIA_SHARE_TO_QZONE;
            str2 = Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE;
        }
        String str3 = str2;
        String str4 = str;
        if (!k.a(this, string3)) {
            IUiListener listnerWithAction = UIListenerManager.getInstance().getListnerWithAction(string2);
            if (listnerWithAction != null) {
                listnerWithAction.onError(new UiError(-6, Constants.MSG_OPEN_BROWSER_ERROR, null));
            }
            d.a().a(string4, string5, str4, str3, "3", "1", string, "0", "2", "0");
            finish();
        } else {
            d.a().a(string4, string5, str4, str3, "3", "0", string, "0", "2", "0");
        }
        getIntent().removeExtra("shareH5");
    }

    /* JADX INFO: compiled from: ProGuard */
    private class QQStayReceiver extends BroadcastReceiver {
        private QQStayReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Uri uri = (Uri) intent.getParcelableExtra("uriData");
            Intent intent2 = new Intent();
            try {
                String string = uri.toString();
                for (String str : string.substring(string.indexOf(string.contains("#") ? "#" : "?") + 1).split("&")) {
                    String[] strArrSplit = str.split("=");
                    intent2.putExtra(strArrSplit[0], strArrSplit[1]);
                }
            } catch (Exception e) {
                SLog.i("openSDK_LOG.AssistActivity", "QQStayReceiver parse uri error : " + e.getMessage());
            }
            intent2.putExtra(Constants.KEY_ACTION, "action_share");
            intent2.setData(uri);
            AssistActivity.this.setResult(-1, intent2);
        }
    }
}
