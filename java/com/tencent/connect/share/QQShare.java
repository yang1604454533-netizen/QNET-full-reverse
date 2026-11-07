package com.tencent.connect.share;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.v4.content.FileProvider;
import android.text.TextUtils;
import android.util.Base64;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.BaseApi;
import com.tencent.connect.common.Constants;
import com.tencent.connect.common.UIListenerManager;
import com.tencent.open.TDialog;
import com.tencent.open.a.d;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.b;
import com.tencent.open.utils.c;
import com.tencent.open.utils.e;
import com.tencent.open.utils.h;
import com.tencent.open.utils.k;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import com.tencent.tauth.UiError;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class QQShare extends BaseApi {
    public static final int QQ_SHARE_SUMMARY_MAX_LENGTH = 512;
    public static final int QQ_SHARE_TITLE_MAX_LENGTH = 128;
    public static final String SHARE_TO_QQ_APP_NAME = "appName";
    public static final String SHARE_TO_QQ_ARK_INFO = "share_to_qq_ark_info";
    public static final String SHARE_TO_QQ_AUDIO_URL = "audio_url";
    public static final String SHARE_TO_QQ_EXT_INT = "cflag";
    public static final String SHARE_TO_QQ_EXT_STR = "share_qq_ext_str";
    public static final int SHARE_TO_QQ_FLAG_QZONE_AUTO_OPEN = 1;
    public static final int SHARE_TO_QQ_FLAG_QZONE_ITEM_HIDE = 2;
    public static final String SHARE_TO_QQ_IMAGE_LOCAL_URL = "imageLocalUrl";
    public static final String SHARE_TO_QQ_IMAGE_URL = "imageUrl";
    public static final String SHARE_TO_QQ_KEY_TYPE = "req_type";
    public static final int SHARE_TO_QQ_MINI_PROGRAM = 7;
    public static final String SHARE_TO_QQ_MINI_PROGRAM_APPID = "mini_program_appid";
    public static final String SHARE_TO_QQ_MINI_PROGRAM_PATH = "mini_program_path";
    public static final String SHARE_TO_QQ_MINI_PROGRAM_TYPE = "mini_program_type";
    public static final String SHARE_TO_QQ_SITE = "site";
    public static final String SHARE_TO_QQ_SUMMARY = "summary";
    public static final String SHARE_TO_QQ_TARGET_URL = "targetUrl";
    public static final String SHARE_TO_QQ_TITLE = "title";
    public static final int SHARE_TO_QQ_TYPE_APP = 6;
    public static final int SHARE_TO_QQ_TYPE_AUDIO = 2;
    public static final int SHARE_TO_QQ_TYPE_DEFAULT = 1;
    public static final int SHARE_TO_QQ_TYPE_IMAGE = 5;
    public String mViaShareQQType;

    @Override // com.tencent.connect.common.BaseApi
    public void releaseResource() {
    }

    public QQShare(Context context, QQToken qQToken) {
        super(qQToken);
        this.mViaShareQQType = "";
    }

    public void shareToQQ(Activity activity, Bundle bundle, IUiListener iUiListener) {
        String str;
        SLog.i("openSDK_LOG.QQShare", "shareToQQ() -- start.");
        String string = bundle.getString("imageUrl");
        String string2 = bundle.getString("title");
        String string3 = bundle.getString("summary");
        String string4 = bundle.getString("targetUrl");
        String string5 = bundle.getString("imageLocalUrl");
        String string6 = bundle.getString(SHARE_TO_QQ_MINI_PROGRAM_APPID);
        String string7 = bundle.getString(SHARE_TO_QQ_MINI_PROGRAM_PATH);
        int i = bundle.getInt("req_type", 1);
        SLog.i("openSDK_LOG.QQShare", "shareToQQ -- type: " + i);
        switch (i) {
            case 1:
                this.mViaShareQQType = "1";
                break;
            case 2:
                this.mViaShareQQType = "3";
                break;
            case 5:
                this.mViaShareQQType = "2";
                break;
            case 6:
                this.mViaShareQQType = "4";
                break;
            case 7:
                this.mViaShareQQType = Constants.VIA_SHARE_TYPE_MINI_PROGRAM;
                break;
        }
        if (i == 6) {
            if (k.f(activity, "5.0.0")) {
                iUiListener.onError(new UiError(-15, Constants.MSG_PARAM_APPSHARE_TOO_LOW, null));
                SLog.e("openSDK_LOG.QQShare", "shareToQQ, app share is not support below qq5.0.");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, app share is not support below qq5.0.");
                return;
            }
            string4 = String.format("http://fusion.qq.com/cgi-bin/qzapps/unified_jump?appid=%1$s&from=%2$s&isOpenAppID=1", this.c.getAppId(), "mqq");
            bundle.putString("targetUrl", string4);
        }
        if (!k.b() && k.f(activity, "4.5.0")) {
            iUiListener.onError(new UiError(-6, Constants.MSG_SHARE_NOSD_ERROR, null));
            SLog.e("openSDK_LOG.QQShare", "shareToQQ sdcard is null--end");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ sdcard is null");
            return;
        }
        if (i == 5) {
            if (k.f(activity, "4.3.0")) {
                iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_QQ_VERSION_ERROR, null));
                SLog.e("openSDK_LOG.QQShare", "shareToQQ, version below 4.3 is not support.");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, version below 4.3 is not support.");
                return;
            } else if (!k.h(string5)) {
                iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_IMAGE_URL_FORMAT_ERROR, null));
                SLog.e("openSDK_LOG.QQShare", "shareToQQ -- error: 非法的图片地址!");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_PARAM_IMAGE_URL_FORMAT_ERROR);
                return;
            }
        }
        if (i != 5 && i != 7) {
            if (TextUtils.isEmpty(string4) || (!string4.startsWith("http://") && !string4.startsWith("https://"))) {
                iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_ERROR, null));
                SLog.e("openSDK_LOG.QQShare", "shareToQQ, targetUrl is empty or illegal..");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, targetUrl is empty or illegal..");
                return;
            } else if (TextUtils.isEmpty(string2)) {
                iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_TITLE_NULL_ERROR, null));
                SLog.e("openSDK_LOG.QQShare", "shareToQQ, title is empty.");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, title is empty.");
                return;
            }
        }
        if (i == 7) {
            if (TextUtils.isEmpty(string6) || TextUtils.isEmpty(string7) || TextUtils.isEmpty(string4) || TextUtils.isEmpty(this.c.getAppId())) {
                iUiListener.onError(new UiError(-5, Constants.MSG_PARAM_ERROR, "appid || path || url empty."));
                return;
            }
            if (h.a((Context) activity, Constants.PACKAGE_QQ_SPEED) == null && h.c(activity, "8.0.8") < 0) {
                iUiListener.onError(new UiError(-5, Constants.MSG_PARAM_QQ_VERSION_ERROR, "808以下不支持分享小程序"));
                return;
            } else if (TextUtils.isEmpty(string2) || TextUtils.isEmpty(string3)) {
                iUiListener.onError(new UiError(-5, Constants.MSG_PARAM_ERROR, "title || summary empty."));
                return;
            }
        }
        if (!TextUtils.isEmpty(string) && !string.startsWith("http://") && !string.startsWith("https://") && !new File(string).exists()) {
            iUiListener.onError(new UiError(-6, Constants.MSG_PARAM_IMAGE_URL_FORMAT_ERROR, null));
            SLog.e("openSDK_LOG.QQShare", "shareToQQ, image url is emprty or illegal.");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "shareToQQ, image url is emprty or illegal.");
            return;
        }
        if (TextUtils.isEmpty(string2) || string2.length() <= 128) {
            str = null;
        } else {
            str = null;
            bundle.putString("title", k.a(string2, 128, (String) null, (String) null));
        }
        if (!TextUtils.isEmpty(string3) && string3.length() > 512) {
            bundle.putString("summary", k.a(string3, 512, str, str));
        }
        if (k.a(activity, bundle.getInt("cflag", 0) == 1)) {
            SLog.i("openSDK_LOG.QQShare", "shareToQQ, support share");
            b(activity, bundle, iUiListener);
        } else {
            try {
                SLog.w("openSDK_LOG.QQShare", "shareToQQ, don't support share, will show download dialog");
                new TDialog(activity, "", a(""), null, this.c).show();
            } catch (RuntimeException e) {
                SLog.e("openSDK_LOG.QQShare", " shareToQQ, TDialog.show not in main thread", e);
                e.printStackTrace();
                iUiListener.onError(new UiError(-6, Constants.MSG_NOT_CALL_ON_MAIN_THREAD, null));
            }
        }
        SLog.i("openSDK_LOG.QQShare", "shareToQQ() -- end.");
    }

    private void b(final Activity activity, final Bundle bundle, final IUiListener iUiListener) {
        SLog.i("openSDK_LOG.QQShare", "shareToMobileQQ() -- start.");
        String string = bundle.getString("imageUrl");
        final String string2 = bundle.getString("title");
        final String string3 = bundle.getString("summary");
        SLog.v("openSDK_LOG.QQShare", "shareToMobileQQ -- imageUrl: " + string);
        if (!TextUtils.isEmpty(string)) {
            if (k.g(string)) {
                if (!k.f(activity, "4.3.0")) {
                    d(activity, bundle, iUiListener);
                } else {
                    new b(activity).a(string, new c() { // from class: com.tencent.connect.share.QQShare.1
                        @Override // com.tencent.open.utils.c
                        public void a(int i, ArrayList<String> arrayList) {
                        }

                        @Override // com.tencent.open.utils.c
                        public void a(int i, String str) {
                            if (i == 0) {
                                bundle.putString("imageLocalUrl", str);
                            } else if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3)) {
                                if (iUiListener != null) {
                                    iUiListener.onError(new UiError(-6, Constants.MSG_SHARE_GETIMG_ERROR, null));
                                    SLog.e("openSDK_LOG.QQShare", "shareToMobileQQ -- error: 获取分享图片失败!");
                                }
                                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, QQShare.this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_GETIMG_ERROR);
                                return;
                            }
                            QQShare.this.d(activity, bundle, iUiListener);
                        }
                    });
                }
            } else {
                bundle.putString("imageUrl", null);
                if (k.f(activity, "4.3.0")) {
                    SLog.d("openSDK_LOG.QQShare", "shareToMobileQQ -- QQ Version is < 4.3.0 ");
                    d(activity, bundle, iUiListener);
                } else {
                    SLog.d("openSDK_LOG.QQShare", "shareToMobileQQ -- QQ Version is > 4.3.0:isAppSpecificDir=" + k.n(string) + ",hasSDPermission:" + k.d());
                    a.a(activity, string, new c() { // from class: com.tencent.connect.share.QQShare.2
                        @Override // com.tencent.open.utils.c
                        public void a(int i, String str) {
                            if (i == 0) {
                                bundle.putString("imageLocalUrl", str);
                            } else if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3)) {
                                if (iUiListener != null) {
                                    iUiListener.onError(new UiError(-6, Constants.MSG_SHARE_GETIMG_ERROR, null));
                                    SLog.e("openSDK_LOG.QQShare", "shareToMobileQQ -- error: 获取分享图片失败!");
                                }
                                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, QQShare.this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_GETIMG_ERROR);
                                return;
                            }
                            QQShare.this.d(activity, bundle, iUiListener);
                        }

                        @Override // com.tencent.open.utils.c
                        public void a(int i, ArrayList<String> arrayList) {
                            if (i == 0) {
                                bundle.putStringArrayList("imageLocalUrlArray", arrayList);
                            } else if (TextUtils.isEmpty(string2) && TextUtils.isEmpty(string3)) {
                                if (iUiListener != null) {
                                    iUiListener.onError(new UiError(-6, Constants.MSG_SHARE_GETIMG_ERROR, null));
                                    SLog.e("openSDK_LOG.QQShare", "shareToMobileQQ -- error: 获取分享图片失败!");
                                }
                                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, QQShare.this.c.getAppId(), String.valueOf(0), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, Constants.MSG_SHARE_GETIMG_ERROR);
                                return;
                            }
                            QQShare.this.d(activity, bundle, iUiListener);
                        }
                    });
                }
            }
        } else if (bundle.getInt("req_type", 1) == 5) {
            c(activity, bundle, iUiListener);
        } else {
            d(activity, bundle, iUiListener);
        }
        SLog.i("openSDK_LOG.QQShare", "shareToMobileQQ() -- end");
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00e0  */
    private void c(Activity activity, Bundle bundle, IUiListener iUiListener) {
        String str;
        String str2;
        String string = bundle.getString("imageLocalUrl");
        if (new File(string).length() >= 5242880) {
            if (iUiListener != null) {
                iUiListener.onError(new UiError(-16, Constants.MSG_SHARE_IMAGE_TOO_LARGE_ERROR, null));
            }
            SLog.e("openSDK_LOG.QQShare", "doShareImageToQQ -- error: 图片太大，请压缩到5M内再分享!");
            return;
        }
        File externalFilesDir = e.a().getExternalFilesDir("Images");
        if (externalFilesDir != null) {
            str = externalFilesDir.getAbsolutePath() + File.separator + Constants.QQ_SHARE_TEMP_DIR;
        } else {
            SLog.i("openSDK_LOG.QQShare", "doShareImageToQQ() getExternalFilesDir return null");
            str = null;
        }
        File file = new File(string);
        String absolutePath = file.getAbsolutePath();
        String name = file.getName();
        boolean zN = k.n(absolutePath);
        SLog.i("openSDK_LOG.QQShare", "doShareImageToQQ() check file: isAppSpecificDir=" + zN + ",hasSDPermission=" + k.d() + ",fileDir=" + absolutePath);
        ArrayList<String> arrayList = new ArrayList<>(2);
        if (zN) {
            str2 = absolutePath;
        } else if (TextUtils.isEmpty(str)) {
            str2 = null;
        } else {
            str2 = str + File.separator + name;
            boolean zB = k.b(absolutePath, str2);
            SLog.i("openSDK_LOG.QQShare", "doShareImageToQQ() sd permission not denied. copy to app sepcific:" + str2 + ",isSuccess=" + zB);
            if (!zB) {
                str2 = null;
            }
        }
        arrayList.add(absolutePath);
        arrayList.add(str2);
        SLog.i("openSDK_LOG.QQShare", "doShareImageToQQ() destFilePaths=[" + arrayList.get(0) + "," + arrayList.get(1) + "]");
        bundle.putStringArrayList("imageLocalUrlArray", arrayList);
        d(activity, bundle, iUiListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:89:0x0440  */
    /* JADX WARN: Code duplicated, block: B:92:0x0449  */
    /* JADX WARN: Code duplicated, block: B:93:0x0490  */
    public void d(Activity activity, Bundle bundle, IUiListener iUiListener) {
        int i;
        int i2;
        String str;
        String str2;
        SLog.i("openSDK_LOG.QQShare", "doShareToQQ() -- start");
        StringBuffer stringBuffer = new StringBuffer("mqqapi://share/to_fri?src_type=app&version=1&file_type=news");
        String string = bundle.getString("imageUrl");
        String string2 = bundle.getString("title");
        String string3 = bundle.getString("summary");
        String string4 = bundle.getString("targetUrl");
        String string5 = bundle.getString("audio_url");
        int i3 = bundle.getInt("req_type", 1);
        String string6 = bundle.getString(SHARE_TO_QQ_ARK_INFO);
        String string7 = bundle.getString(SHARE_TO_QQ_MINI_PROGRAM_APPID);
        String string8 = bundle.getString(SHARE_TO_QQ_MINI_PROGRAM_PATH);
        String string9 = bundle.getString(SHARE_TO_QQ_MINI_PROGRAM_TYPE);
        int i4 = bundle.getInt("cflag", 0);
        String string10 = bundle.getString("share_qq_ext_str");
        String strA = k.a(activity);
        if (strA == null) {
            strA = bundle.getString("appName");
        }
        String str3 = strA;
        String string11 = bundle.getString("imageLocalUrl");
        ArrayList<String> stringArrayList = bundle.getStringArrayList("imageLocalUrlArray");
        String appId = this.c.getAppId();
        String openIdWithCache = this.c.getOpenIdWithCache();
        SLog.i("openSDK_LOG.QQShare", "doShareToQQ -- openid: " + openIdWithCache + ",appName=" + str3);
        if (stringArrayList != null && stringArrayList.size() >= 2) {
            String str4 = stringArrayList.get(0);
            if (str4 == null) {
                str4 = "";
            }
            stringBuffer.append("&file_data=" + Base64.encodeToString(k.i(str4), 2));
            String str5 = stringArrayList.get(1);
            if (i3 == 7 && !TextUtils.isEmpty(str5) && h.c(activity, "8.3.3") < 0) {
                str5 = null;
                SLog.e("openSDK_LOG.QQShare", "doShareToQQ() share to mini program set file uri empty");
            }
            if (!TextUtils.isEmpty(str5)) {
                try {
                    Uri uriForFile = FileProvider.getUriForFile(activity, Tencent.getAuthorities(appId), new File(str5));
                    activity.grantUriPermission("com.tencent.mobileqq", uriForFile, 3);
                    stringBuffer.append("&file_uri=");
                    stringBuffer.append(Base64.encodeToString(k.i(uriForFile.toString()), 2));
                } catch (Exception e) {
                    SLog.e("openSDK_LOG.QQShare", "doShareToQQ() getUriForFile exception:", e);
                }
            }
        } else if (!TextUtils.isEmpty(string11)) {
            stringBuffer.append("&file_data=" + Base64.encodeToString(k.i(string11), 2));
        }
        if (!TextUtils.isEmpty(string)) {
            stringBuffer.append("&image_url=" + Base64.encodeToString(k.i(string), 2));
        }
        if (!TextUtils.isEmpty(string2)) {
            stringBuffer.append("&title=" + Base64.encodeToString(k.i(string2), 2));
        }
        if (!TextUtils.isEmpty(string3)) {
            stringBuffer.append("&description=" + Base64.encodeToString(k.i(string3), 2));
        }
        if (!TextUtils.isEmpty(appId)) {
            stringBuffer.append("&share_id=" + appId);
        }
        if (!TextUtils.isEmpty(string4)) {
            stringBuffer.append("&url=" + Base64.encodeToString(k.i(string4), 2));
        }
        if (!TextUtils.isEmpty(str3)) {
            if (str3.length() > 20) {
                str3 = str3.substring(0, 20) + "...";
            }
            stringBuffer.append("&app_name=" + Base64.encodeToString(k.i(str3), 2));
        }
        if (!TextUtils.isEmpty(openIdWithCache)) {
            stringBuffer.append("&open_id=" + Base64.encodeToString(k.i(openIdWithCache), 2));
        }
        if (!TextUtils.isEmpty(string5)) {
            stringBuffer.append("&audioUrl=" + Base64.encodeToString(k.i(string5), 2));
        }
        stringBuffer.append("&req_type=" + Base64.encodeToString(k.i(String.valueOf(i3)), 2));
        if (!TextUtils.isEmpty(string7)) {
            stringBuffer.append("&mini_program_appid=" + Base64.encodeToString(k.i(String.valueOf(string7)), 2));
        }
        if (!TextUtils.isEmpty(string8)) {
            stringBuffer.append("&mini_program_path=" + Base64.encodeToString(k.i(String.valueOf(string8)), 2));
        }
        if (!TextUtils.isEmpty(string9)) {
            stringBuffer.append("&mini_program_type=" + Base64.encodeToString(k.i(String.valueOf(string9)), 2));
        }
        if (!TextUtils.isEmpty(string6)) {
            stringBuffer.append("&share_to_qq_ark_info=" + Base64.encodeToString(k.i(string6), 2));
        }
        if (!TextUtils.isEmpty(string10)) {
            stringBuffer.append("&share_qq_ext_str=" + Base64.encodeToString(k.i(string10), 2));
        }
        stringBuffer.append("&cflag=" + Base64.encodeToString(k.i(String.valueOf(i4)), 2));
        stringBuffer.append("&third_sd=" + Base64.encodeToString(k.i(String.valueOf(k.d())), 2));
        SLog.v("openSDK_LOG.QQShare", "doShareToQQ -- url: " + stringBuffer.toString());
        com.tencent.connect.a.a.a(e.a(), this.c, "requireApi", "shareToNativeQQ");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(stringBuffer.toString()));
        intent.putExtra("pkg_name", activity.getPackageName());
        if (k.f(activity, "4.6.0")) {
            SLog.i("openSDK_LOG.QQShare", "doShareToQQ, qqver below 4.6.");
            if (a(intent)) {
                i = 0;
                UIListenerManager.getInstance().setListenerWithRequestcode(Constants.REQUEST_OLD_SHARE, iUiListener);
                a(activity, intent, Constants.REQUEST_OLD_SHARE);
            } else {
                i = 0;
            }
        } else {
            i = 0;
            SLog.i("openSDK_LOG.QQShare", "doShareToQQ, qqver greater than 4.6.");
            if (UIListenerManager.getInstance().setListnerWithAction("shareToQQ", iUiListener) != null) {
                SLog.i("openSDK_LOG.QQShare", "doShareToQQ, last listener is not null, cancel it.");
            }
            if (a(intent)) {
                i2 = 1;
                a(activity, Constants.REQUEST_QQ_SHARE, intent, true);
            }
            str = Constants.VIA_REPORT_TYPE_SHARE_TO_QQ;
            if (i4 == i2) {
                str = Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE;
            }
            str2 = str;
            if (a(intent)) {
                d.a().a(this.c.getOpenId(), this.c.getAppId(), Constants.VIA_SHARE_TO_QQ, str2, "3", "0", this.mViaShareQQType, "0", "1", "0");
                d.a().a(0, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(i), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "");
            } else {
                d.a().a(this.c.getOpenId(), this.c.getAppId(), Constants.VIA_SHARE_TO_QQ, str2, "3", "1", this.mViaShareQQType, "0", "1", "0");
                d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(i), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "hasActivityForIntent fail");
            }
            SLog.i("openSDK_LOG.QQShare", "doShareToQQ() --end");
        }
        i2 = 1;
        str = Constants.VIA_REPORT_TYPE_SHARE_TO_QQ;
        if (i4 == i2) {
            str = Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE;
        }
        str2 = str;
        if (a(intent)) {
            d.a().a(this.c.getOpenId(), this.c.getAppId(), Constants.VIA_SHARE_TO_QQ, str2, "3", "0", this.mViaShareQQType, "0", "1", "0");
            d.a().a(0, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(i), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "");
        } else {
            d.a().a(this.c.getOpenId(), this.c.getAppId(), Constants.VIA_SHARE_TO_QQ, str2, "3", "1", this.mViaShareQQType, "0", "1", "0");
            d.a().a(1, "SHARE_CHECK_SDK", Constants.DEFAULT_UIN, this.c.getAppId(), String.valueOf(i), Long.valueOf(SystemClock.elapsedRealtime()), 0, 1, "hasActivityForIntent fail");
        }
        SLog.i("openSDK_LOG.QQShare", "doShareToQQ() --end");
    }
}
