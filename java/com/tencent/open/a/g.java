package com.tencent.open.a;

import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.HttpUtils;
import com.tencent.open.utils.i;
import com.tencent.open.utils.k;
import java.io.IOException;
import java.io.Serializable;
import java.net.SocketTimeoutException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.TimeZone;
import java.util.concurrent.Executor;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class g {
    protected static g a;
    protected HandlerThread e;
    protected Handler f;
    protected Random b = new Random();
    protected List<Serializable> d = Collections.synchronizedList(new ArrayList());
    protected List<Serializable> c = Collections.synchronizedList(new ArrayList());
    protected Executor g = i.b();
    protected Executor h = i.b();

    public static synchronized g a() {
        if (a == null) {
            a = new g();
        }
        return a;
    }

    private g() {
        this.e = null;
        if (this.e == null) {
            this.e = new HandlerThread("opensdk.report.handlerthread", 10);
            this.e.start();
        }
        if (!this.e.isAlive() || this.e.getLooper() == null) {
            return;
        }
        this.f = new Handler(this.e.getLooper()) { // from class: com.tencent.open.a.g.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1000:
                        g.this.b();
                        break;
                    case 1001:
                        g.this.e();
                        break;
                }
                super.handleMessage(message);
            }
        };
    }

    public void a(final Bundle bundle, String str, final boolean z) {
        if (bundle == null) {
            return;
        }
        SLog.v("openSDK_LOG.ReportManager", "-->reportVia, bundle: " + bundle.toString());
        if (a("report_via", str) || z) {
            this.g.execute(new Runnable() { // from class: com.tencent.open.a.g.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        String strK = k.k(c.b(com.tencent.open.utils.e.a()));
                        String strK2 = k.k(c.c(com.tencent.open.utils.e.a()));
                        String strK3 = k.k(c.a());
                        String strK4 = k.k(c.d(com.tencent.open.utils.e.a()));
                        Bundle bundle2 = new Bundle();
                        bundle2.putString("uin", Constants.DEFAULT_UIN);
                        bundle2.putString("imei", strK);
                        bundle2.putString("imsi", strK2);
                        bundle2.putString("android_id", strK4);
                        bundle2.putString("mac", strK3);
                        bundle2.putString(Constants.PARAM_PLATFORM, "1");
                        bundle2.putString("os_ver", Build.VERSION.RELEASE);
                        bundle2.putString("position", k.c(com.tencent.open.utils.e.a()));
                        bundle2.putString("network", a.a(com.tencent.open.utils.e.a()));
                        bundle2.putString("language", c.b());
                        bundle2.putString("resolution", c.a(com.tencent.open.utils.e.a()));
                        bundle2.putString("apn", a.b(com.tencent.open.utils.e.a()));
                        bundle2.putString("model_name", Build.MODEL);
                        bundle2.putString("timezone", TimeZone.getDefault().getID());
                        bundle2.putString("sdk_ver", Constants.SDK_VERSION);
                        bundle2.putString("qz_ver", k.d(com.tencent.open.utils.e.a(), Constants.PACKAGE_QZONE));
                        bundle2.putString("qq_ver", k.c(com.tencent.open.utils.e.a(), "com.tencent.mobileqq"));
                        bundle2.putString("qua", k.e(com.tencent.open.utils.e.a(), com.tencent.open.utils.e.b()));
                        bundle2.putString("packagename", com.tencent.open.utils.e.b());
                        bundle2.putString("app_ver", k.d(com.tencent.open.utils.e.a(), com.tencent.open.utils.e.b()));
                        if (bundle != null) {
                            bundle2.putAll(bundle);
                        }
                        g.this.d.add(new b(bundle2));
                        int size = g.this.d.size();
                        int iA = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Agent_ReportTimeInterval");
                        if (iA == 0) {
                            iA = 10000;
                        }
                        if (!g.this.a("report_via", size) && !z) {
                            if (g.this.f.hasMessages(1001)) {
                                return;
                            }
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 1001;
                            g.this.f.sendMessageDelayed(messageObtain, iA);
                            return;
                        }
                        g.this.e();
                        g.this.f.removeMessages(1001);
                    } catch (Exception e) {
                        SLog.e("openSDK_LOG.ReportManager", "--> reporVia, exception in sub thread.", e);
                    }
                }
            });
        }
    }

    public void a(String str, long j, long j2, long j3, int i) {
        a(str, j, j2, j3, i, "", false);
    }

    public void a(final String str, final long j, final long j2, final long j3, final int i, final String str2, final boolean z) {
        SLog.v("openSDK_LOG.ReportManager", "-->reportCgi, command: " + str + " | startTime: " + j + " | reqSize:" + j2 + " | rspSize: " + j3 + " | responseCode: " + i + " | detail: " + str2);
        if (a("report_cgi", "" + i) || z) {
            this.h.execute(new Runnable() { // from class: com.tencent.open.a.g.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
                        Bundle bundle = new Bundle();
                        String strA = a.a(com.tencent.open.utils.e.a());
                        bundle.putString("apn", strA);
                        bundle.putString("appid", "1000067");
                        bundle.putString("commandid", str);
                        bundle.putString("detail", str2);
                        bundle.putString("deviceInfo", "network=" + strA + "&sdcard=" + (Environment.getExternalStorageState().equals("mounted") ? 1 : 0) + "&wifi=" + a.e(com.tencent.open.utils.e.a()));
                        int i2 = 100;
                        int iA = 100 / g.this.a(i);
                        if (iA <= 0) {
                            i2 = 1;
                        } else if (iA <= 100) {
                            i2 = iA;
                        }
                        bundle.putString("frequency", i2 + "");
                        bundle.putString("reqSize", j2 + "");
                        bundle.putString("resultCode", i + "");
                        bundle.putString("rspSize", j3 + "");
                        bundle.putString("timeCost", jElapsedRealtime + "");
                        bundle.putString("uin", Constants.DEFAULT_UIN);
                        g.this.c.add(new b(bundle));
                        int size = g.this.c.size();
                        int iA2 = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Agent_ReportTimeInterval");
                        if (iA2 == 0) {
                            iA2 = 10000;
                        }
                        if (g.this.a("report_cgi", size) || z) {
                            g.this.b();
                            g.this.f.removeMessages(1000);
                        } else if (!g.this.f.hasMessages(1000)) {
                            Message messageObtain = Message.obtain();
                            messageObtain.what = 1000;
                            g.this.f.sendMessageDelayed(messageObtain, iA2);
                        }
                    } catch (Exception e) {
                        SLog.e("openSDK_LOG.ReportManager", "--> reportCGI, exception in sub thread.", e);
                    }
                }
            });
        }
    }

    protected void b() {
        this.h.execute(new Runnable() { // from class: com.tencent.open.a.g.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Bundle bundleC = g.this.c();
                    if (bundleC == null) {
                        return;
                    }
                    int iA = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Common_HttpRetryCount");
                    if (iA == 0) {
                        iA = 3;
                    }
                    SLog.d("openSDK_LOG.ReportManager", "-->doReportCgi, retryCount: " + iA);
                    boolean z = false;
                    int i = 0;
                    do {
                        i++;
                        try {
                            try {
                                HttpClient httpClient = HttpUtils.getHttpClient(com.tencent.open.utils.e.a(), null, "https://wspeed.qq.com/w.cgi");
                                HttpPost httpPost = new HttpPost("https://wspeed.qq.com/w.cgi");
                                httpPost.addHeader("Accept-Encoding", "gzip");
                                httpPost.setHeader("Content-Type", "application/x-www-form-urlencoded");
                                httpPost.setEntity(new ByteArrayEntity(k.i(HttpUtils.encodeUrl(bundleC))));
                                int statusCode = httpClient.execute(httpPost).getStatusLine().getStatusCode();
                                SLog.d("openSDK_LOG.ReportManager", "-->doReportCgi, statusCode: " + statusCode);
                                if (statusCode != 200) {
                                    break;
                                }
                                f.a().b("report_cgi");
                                z = true;
                                break;
                            } catch (Exception e) {
                                SLog.e("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception", e);
                            }
                        } catch (SocketTimeoutException e2) {
                            SLog.e("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception", e2);
                        } catch (ConnectTimeoutException e3) {
                            SLog.e("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception", e3);
                        }
                    } while (i < iA);
                    if (!z) {
                        f.a().a("report_cgi", g.this.c);
                    }
                    g.this.c.clear();
                } catch (Exception e4) {
                    SLog.e("openSDK_LOG.ReportManager", "-->doReportCgi, doupload exception out.", e4);
                }
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0057 A[PHI: r5
  0x0057: PHI (r5v5 int) = (r5v2 int), (r5v8 int) binds: [B:9:0x003f, B:15:0x0055] A[DONT_GENERATE, DONT_INLINE]] */
    protected boolean a(String str, String str2) {
        int iA;
        SLog.d("openSDK_LOG.ReportManager", "-->availableFrequency, report: " + str + " | ext: " + str2);
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.equals("report_cgi")) {
            try {
                iA = a(Integer.parseInt(str2));
                if (this.b.nextInt(100) < iA) {
                    z = true;
                }
            } catch (Exception unused) {
                return false;
            }
        } else if (str.equals("report_via")) {
            iA = e.a(str2);
            if (this.b.nextInt(100) < iA) {
                z = true;
            }
        } else {
            iA = 100;
        }
        SLog.d("openSDK_LOG.ReportManager", "-->availableFrequency, result: " + z + " | frequency: " + iA);
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x001b  */
    protected boolean a(String str, int i) {
        int iA;
        if (str.equals("report_cgi")) {
            iA = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Common_CGIReportMaxcount");
            if (iA == 0) {
                iA = 5;
            }
        } else if (str.equals("report_via")) {
            iA = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Agent_ReportBatchCount");
            if (iA == 0) {
                iA = 5;
            }
        } else {
            iA = 0;
        }
        SLog.d("openSDK_LOG.ReportManager", "-->availableCount, report: " + str + " | dataSize: " + i + " | maxcount: " + iA);
        return i >= iA;
    }

    protected int a(int i) {
        if (i == 0) {
            int iA = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Common_CGIReportFrequencySuccess");
            if (iA == 0) {
                return 10;
            }
            return iA;
        }
        int iA2 = com.tencent.open.utils.f.a(com.tencent.open.utils.e.a(), (String) null).a("Common_CGIReportFrequencyFailed");
        if (iA2 == 0) {
            return 100;
        }
        return iA2;
    }

    protected Bundle c() {
        if (this.c.size() == 0) {
            return null;
        }
        b bVar = (b) this.c.get(0);
        if (bVar == null) {
            SLog.d("openSDK_LOG.ReportManager", "-->prepareCgiData, the 0th cgireportitem is null.");
            return null;
        }
        String str = bVar.a.get("appid");
        List<Serializable> listA = f.a().a("report_cgi");
        if (listA != null) {
            this.c.addAll(listA);
        }
        SLog.d("openSDK_LOG.ReportManager", "-->prepareCgiData, mCgiList size: " + this.c.size());
        if (this.c.size() == 0) {
            return null;
        }
        Bundle bundle = new Bundle();
        try {
            bundle.putString("appid", str);
            bundle.putString("releaseversion", Constants.SDK_VERSION_REPORT);
            bundle.putString("device", Build.DEVICE);
            bundle.putString("qua", Constants.SDK_QUA);
            bundle.putString("key", "apn,frequency,commandid,resultcode,tmcost,reqsize,rspsize,detail,touin,deviceinfo");
            for (int i = 0; i < this.c.size(); i++) {
                b bVar2 = (b) this.c.get(i);
                bundle.putString(i + "_1", bVar2.a.get("apn"));
                bundle.putString(i + "_2", bVar2.a.get("frequency"));
                bundle.putString(i + "_3", bVar2.a.get("commandid"));
                bundle.putString(i + "_4", bVar2.a.get("resultCode"));
                bundle.putString(i + "_5", bVar2.a.get("timeCost"));
                bundle.putString(i + "_6", bVar2.a.get("reqSize"));
                bundle.putString(i + "_7", bVar2.a.get("rspSize"));
                bundle.putString(i + "_8", bVar2.a.get("detail"));
                bundle.putString(i + "_9", bVar2.a.get("uin"));
                bundle.putString(i + "_10", c.e(com.tencent.open.utils.e.a()) + "&" + bVar2.a.get("deviceInfo"));
            }
            SLog.v("openSDK_LOG.ReportManager", "-->prepareCgiData, end. params: " + bundle.toString());
            return bundle;
        } catch (Exception e) {
            SLog.e("openSDK_LOG.ReportManager", "-->prepareCgiData, exception.", e);
            return null;
        }
    }

    protected Bundle d() {
        List<Serializable> listA = f.a().a("report_via");
        if (listA != null) {
            this.d.addAll(listA);
        }
        SLog.d("openSDK_LOG.ReportManager", "-->prepareViaData, mViaList size: " + this.d.size());
        if (this.d.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        for (Serializable serializable : this.d) {
            JSONObject jSONObject = new JSONObject();
            b bVar = (b) serializable;
            for (String str : bVar.a.keySet()) {
                try {
                    String str2 = bVar.a.get(str);
                    if (str2 == null) {
                        str2 = "";
                    }
                    jSONObject.put(str, str2);
                } catch (JSONException e) {
                    SLog.e("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", e);
                }
            }
            jSONArray.put(jSONObject);
        }
        SLog.v("openSDK_LOG.ReportManager", "-->prepareViaData, JSONArray array: " + jSONArray.toString());
        Bundle bundle = new Bundle();
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("data", jSONArray);
            bundle.putString("data", jSONObject2.toString());
            return bundle;
        } catch (JSONException e2) {
            SLog.e("openSDK_LOG.ReportManager", "-->prepareViaData, put bundle to json array exception", e2);
            return null;
        }
    }

    protected void e() {
        this.g.execute(new Runnable() { // from class: com.tencent.open.a.g.5
            @Override // java.lang.Runnable
            public void run() {
                int i;
                int i2;
                int i3;
                try {
                    Bundle bundleD = g.this.d();
                    if (bundleD == null) {
                        return;
                    }
                    SLog.v("openSDK_LOG.ReportManager", "-->doReportVia, params: " + bundleD.toString());
                    int iA = e.a();
                    int i4 = 0;
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    boolean z = false;
                    int errorCodeFromException = 0;
                    long j = 0;
                    long j2 = 0;
                    do {
                        int i5 = i4 + 1;
                        try {
                            try {
                                try {
                                    try {
                                        k.a aVarOpenUrl2 = HttpUtils.openUrl2(com.tencent.open.utils.e.a(), "https://appsupport.qq.com/cgi-bin/appstage/mstats_batch_report", Constants.HTTP_POST, bundleD);
                                        try {
                                            i3 = k.d(aVarOpenUrl2.a).getInt("ret");
                                        } catch (JSONException unused) {
                                            i3 = -4;
                                        }
                                        if (i3 == 0 || !TextUtils.isEmpty(aVarOpenUrl2.a)) {
                                            i5 = iA;
                                            z = true;
                                        }
                                        long j3 = aVarOpenUrl2.b;
                                        try {
                                            j2 = aVarOpenUrl2.c;
                                            i4 = i5;
                                            j = j3;
                                        } catch (HttpUtils.HttpStatusException e) {
                                            e = e;
                                            j = j3;
                                            try {
                                                i = Integer.parseInt(e.getMessage().replace(HttpUtils.HttpStatusException.ERROR_INFO, ""));
                                            } catch (Exception unused2) {
                                                i = errorCodeFromException;
                                            }
                                            i2 = i;
                                        }
                                    } catch (HttpUtils.HttpStatusException e2) {
                                        e = e2;
                                    }
                                } catch (JSONException unused3) {
                                    i4 = i5;
                                    errorCodeFromException = -4;
                                    j = 0;
                                    j2 = 0;
                                }
                            } catch (IOException e3) {
                                errorCodeFromException = HttpUtils.getErrorCodeFromException(e3);
                                i4 = i5;
                                j = 0;
                                j2 = 0;
                            } catch (Exception unused4) {
                                i4 = iA;
                                errorCodeFromException = -6;
                                j = 0;
                                j2 = 0;
                            }
                        } catch (HttpUtils.NetworkUnavailableException unused5) {
                            g.this.d.clear();
                            SLog.d("openSDK_LOG.ReportManager", "doReportVia, NetworkUnavailableException.");
                            return;
                        } catch (SocketTimeoutException unused6) {
                            jElapsedRealtime = SystemClock.elapsedRealtime();
                            i4 = i5;
                            errorCodeFromException = -8;
                            j = 0;
                            j2 = 0;
                        } catch (ConnectTimeoutException unused7) {
                            jElapsedRealtime = SystemClock.elapsedRealtime();
                            i4 = i5;
                            errorCodeFromException = -7;
                            j = 0;
                            j2 = 0;
                        }
                    } while (i4 < iA);
                    i2 = errorCodeFromException;
                    g.this.a("mapp_apptrace_sdk", jElapsedRealtime, j, j2, i2, null, false);
                    if (z) {
                        f.a().b("report_via");
                    } else {
                        f.a().a("report_via", g.this.d);
                    }
                    g.this.d.clear();
                    SLog.d("openSDK_LOG.ReportManager", "-->doReportVia, uploadSuccess: " + z);
                } catch (Exception e4) {
                    SLog.e("openSDK_LOG.ReportManager", "-->doReportVia, exception in serial executor.", e4);
                }
            }
        });
    }

    public void a(final String str, final String str2, final Bundle bundle, final boolean z) {
        i.a(new Runnable() { // from class: com.tencent.open.a.g.6
            /* JADX WARN: Code duplicated, block: B:103:0x0166 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:123:0x0152 A[SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:133:? A[LOOP:0: B:20:0x0096->B:133:?, LOOP_END, SYNTHETIC] */
            /* JADX WARN: Code duplicated, block: B:87:0x0154 A[Catch: Exception -> 0x0181, TryCatch #16 {Exception -> 0x0181, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x000c, B:9:0x0013, B:11:0x003e, B:12:0x0042, B:14:0x0050, B:18:0x0086, B:87:0x0154, B:88:0x015c, B:35:0x00e0, B:73:0x0131, B:97:0x0178, B:96:0x0171, B:15:0x0064, B:17:0x0072, B:98:0x0179, B:91:0x0166, B:93:0x016c), top: B:117:0x0000, inners: #0 }] */
            /* JADX WARN: Code duplicated, block: B:88:0x015c A[Catch: Exception -> 0x0181, TRY_LEAVE, TryCatch #16 {Exception -> 0x0181, blocks: (B:2:0x0000, B:4:0x0004, B:6:0x000c, B:9:0x0013, B:11:0x003e, B:12:0x0042, B:14:0x0050, B:18:0x0086, B:87:0x0154, B:88:0x015c, B:35:0x00e0, B:73:0x0131, B:97:0x0178, B:96:0x0171, B:15:0x0064, B:17:0x0072, B:98:0x0179, B:91:0x0166, B:93:0x016c), top: B:117:0x0000, inners: #0 }] */
            /* JADX WARN: Code duplicated, block: B:93:0x016c A[Catch: Exception -> 0x0170, TRY_LEAVE, TryCatch #0 {Exception -> 0x0170, blocks: (B:91:0x0166, B:93:0x016c), top: B:103:0x0166, outer: #16 }] */
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                HttpUriRequest httpGet;
                HttpResponse httpResponseExecute;
                String str3;
                String str4;
                String str5;
                String str6;
                HttpEntity entity;
                try {
                    if (bundle == null) {
                        SLog.e("openSDK_LOG.ReportManager", "-->httpRequest, params is null!");
                        return;
                    }
                    int iA = e.a();
                    if (iA == 0) {
                        iA = 3;
                    }
                    SLog.d("openSDK_LOG.ReportManager", "-->httpRequest, retryCount: " + iA);
                    HttpResponse httpResponse = null;
                    HttpClient httpClient = HttpUtils.getHttpClient(com.tencent.open.utils.e.a(), null, str);
                    String strEncodeUrl = HttpUtils.encodeUrl(bundle);
                    if (z) {
                        strEncodeUrl = URLEncoder.encode(strEncodeUrl);
                    }
                    if (str2.toUpperCase().equals(Constants.HTTP_GET)) {
                        StringBuffer stringBuffer = new StringBuffer(str);
                        stringBuffer.append(strEncodeUrl);
                        httpGet = new HttpGet(stringBuffer.toString());
                    } else if (!str2.toUpperCase().equals(Constants.HTTP_POST)) {
                        SLog.e("openSDK_LOG.ReportManager", "-->httpRequest unkonw request method return.");
                        return;
                    } else {
                        HttpPost httpPost = new HttpPost(str);
                        httpPost.setEntity(new ByteArrayEntity(k.i(strEncodeUrl)));
                        httpGet = httpPost;
                    }
                    httpGet.addHeader("Accept-Encoding", "gzip");
                    httpGet.addHeader("Content-Type", "application/x-www-form-urlencoded");
                    int i = 0;
                    boolean z2 = false;
                    while (true) {
                        i++;
                        try {
                            try {
                                httpResponseExecute = httpClient.execute(httpGet);
                                try {
                                    int statusCode = httpResponseExecute.getStatusLine().getStatusCode();
                                    SLog.d("openSDK_LOG.ReportManager", "-->httpRequest, statusCode: " + statusCode);
                                    if (statusCode != 200) {
                                        SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest : HttpStatuscode != 200");
                                    } else {
                                        try {
                                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread success");
                                            z2 = true;
                                        } catch (SocketTimeoutException e) {
                                            e = e;
                                            z2 = true;
                                            try {
                                                SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest SocketTimeoutException:", e);
                                                if (httpResponseExecute != null) {
                                                    try {
                                                        HttpEntity entity2 = httpResponseExecute.getEntity();
                                                        if (entity2 != null) {
                                                            entity2.consumeContent();
                                                        }
                                                    } catch (Exception e2) {
                                                        e = e2;
                                                        str5 = "openSDK_LOG.ReportManager";
                                                        str6 = "-->ReportCenter httpRequest consumeContent Exception:";
                                                        SLog.e(str5, str6, e);
                                                        if (i >= iA) {
                                                            if (z2) {
                                                                SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request success");
                                                            } else {
                                                                SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request failed");
                                                            }
                                                            return;
                                                        }
                                                    }
                                                }
                                                if (i >= iA) {
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                if (httpResponseExecute != null) {
                                                    try {
                                                        entity = httpResponseExecute.getEntity();
                                                        if (entity != null) {
                                                            entity.consumeContent();
                                                        }
                                                    } catch (Exception e3) {
                                                        SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest consumeContent Exception:", e3);
                                                    }
                                                }
                                                throw th;
                                            }
                                        } catch (ConnectTimeoutException e4) {
                                            e = e4;
                                            z2 = true;
                                            SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest ConnectTimeoutException:", e);
                                            if (httpResponseExecute != null) {
                                                try {
                                                    HttpEntity entity3 = httpResponseExecute.getEntity();
                                                    if (entity3 != null) {
                                                        entity3.consumeContent();
                                                    }
                                                } catch (Exception e5) {
                                                    e = e5;
                                                    str5 = "openSDK_LOG.ReportManager";
                                                    str6 = "-->ReportCenter httpRequest consumeContent Exception:";
                                                    SLog.e(str5, str6, e);
                                                    if (i >= iA) {
                                                        if (z2) {
                                                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request success");
                                                        } else {
                                                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request failed");
                                                        }
                                                        return;
                                                    }
                                                }
                                            }
                                            if (i >= iA) {
                                            }
                                        } catch (Exception e6) {
                                            e = e6;
                                            httpResponse = httpResponseExecute;
                                            z2 = true;
                                            SLog.e("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Exception:", e);
                                            if (httpResponse != null) {
                                                try {
                                                    HttpEntity entity4 = httpResponse.getEntity();
                                                    if (entity4 != null) {
                                                        entity4.consumeContent();
                                                    }
                                                } catch (Exception e7) {
                                                    e = e7;
                                                    str3 = "openSDK_LOG.ReportManager";
                                                    str4 = "-->ReportCenter httpRequest consumeContent Exception:";
                                                    SLog.e(str3, str4, e);
                                                }
                                            }
                                        }
                                    }
                                    if (httpResponseExecute != null) {
                                        try {
                                            HttpEntity entity5 = httpResponseExecute.getEntity();
                                            if (entity5 != null) {
                                                entity5.consumeContent();
                                            }
                                        } catch (Exception e8) {
                                            e = e8;
                                            str3 = "openSDK_LOG.ReportManager";
                                            str4 = "-->ReportCenter httpRequest consumeContent Exception:";
                                            SLog.e(str3, str4, e);
                                        }
                                    }
                                } catch (SocketTimeoutException e9) {
                                    e = e9;
                                } catch (ConnectTimeoutException e10) {
                                    e = e10;
                                } catch (Exception e11) {
                                    e = e11;
                                    httpResponse = httpResponseExecute;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                httpResponseExecute = httpResponse;
                                if (httpResponseExecute != null) {
                                    entity = httpResponseExecute.getEntity();
                                    if (entity != null) {
                                        entity.consumeContent();
                                    }
                                }
                                throw th;
                            }
                        } catch (SocketTimeoutException e12) {
                            e = e12;
                            httpResponseExecute = null;
                        } catch (ConnectTimeoutException e13) {
                            e = e13;
                            httpResponseExecute = null;
                        } catch (Exception e14) {
                            e = e14;
                        }
                        if (z2) {
                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request success");
                        } else {
                            SLog.d("openSDK_LOG.ReportManager", "-->ReportCenter httpRequest Thread request failed");
                        }
                        return;
                    }
                } catch (Exception e15) {
                    SLog.e("openSDK_LOG.ReportManager", "-->httpRequest, exception in serial executor:", e15);
                }
            }
        });
    }
}
