package com.tencent.open.utils;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class f {
    private static Map<String, f> a = Collections.synchronizedMap(new HashMap());
    private static String b = null;
    private Context c;
    private String d;
    private JSONObject e = null;
    private long f = 0;
    private int g = 0;
    private boolean h = true;

    public static f a(Context context, String str) {
        f fVar;
        synchronized (a) {
            SLog.v("openSDK_LOG.OpenConfig", "getInstance begin");
            if (str != null) {
                b = str;
            }
            if (str == null) {
                str = b != null ? b : "0";
            }
            fVar = a.get(str);
            if (fVar == null) {
                fVar = new f(context, str);
                a.put(str, fVar);
            }
            SLog.v("openSDK_LOG.OpenConfig", "getInstance end");
        }
        return fVar;
    }

    private f(Context context, String str) {
        this.c = null;
        this.d = null;
        this.c = context.getApplicationContext();
        this.d = str;
        a();
        b();
    }

    private void a() {
        try {
            this.e = new JSONObject(c("com.tencent.open.config.json"));
        } catch (JSONException unused) {
            this.e = new JSONObject();
        }
    }

    private String c(String str) {
        InputStream inputStreamOpen;
        BufferedReader bufferedReader;
        StringBuffer stringBuffer;
        String str2;
        try {
            try {
                if (this.d != null) {
                    str2 = str + "." + this.d;
                } else {
                    str2 = str;
                }
                inputStreamOpen = this.c.openFileInput(str2);
                while (true) {
                    try {
                        try {
                            try {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                stringBuffer.append(line);
                            } catch (IOException e) {
                                e.printStackTrace();
                                try {
                                    inputStreamOpen.close();
                                    bufferedReader.close();
                                    return "";
                                } catch (IOException e2) {
                                    e2.printStackTrace();
                                    return "";
                                }
                            }
                        } catch (Throwable th) {
                            inputStreamOpen.close();
                            bufferedReader.close();
                            throw th;
                        }
                        inputStreamOpen.close();
                        bufferedReader.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            } catch (FileNotFoundException unused) {
                inputStreamOpen = this.c.getAssets().open(str);
            }
            bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen, Charset.forName("UTF-8")));
            stringBuffer = new StringBuffer();
            String string = stringBuffer.toString();
            try {
                inputStreamOpen.close();
                bufferedReader.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return string;
        } catch (IOException e5) {
            e5.printStackTrace();
            return "";
        }
    }

    private void a(String str, String str2) {
        try {
            if (this.d != null) {
                str = str + "." + this.d;
            }
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(this.c.openFileOutput(str, 0), Charset.forName("UTF-8"));
            outputStreamWriter.write(str2);
            outputStreamWriter.flush();
            outputStreamWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Type inference failed for: r1v7, types: [com.tencent.open.utils.f$1] */
    private void b() {
        if (this.g != 0) {
            d("update thread is running, return");
            return;
        }
        this.g = 1;
        final Bundle bundle = new Bundle();
        bundle.putString("appid", this.d);
        bundle.putString("appid_for_getting_config", this.d);
        bundle.putString("status_os", Build.VERSION.RELEASE);
        bundle.putString("status_machine", Build.MODEL);
        bundle.putString("status_version", Build.VERSION.SDK);
        bundle.putString("sdkv", Constants.SDK_VERSION);
        bundle.putString("sdkp", "a");
        new Thread() { // from class: com.tencent.open.utils.f.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    f.this.a(k.d(HttpUtils.openUrl2(f.this.c, "https://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf", Constants.HTTP_GET, bundle).a));
                } catch (Exception e) {
                    e.printStackTrace();
                }
                f.this.g = 0;
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        d("cgi back, do update");
        this.e = jSONObject;
        a("com.tencent.open.config.json", jSONObject.toString());
        this.f = SystemClock.elapsedRealtime();
    }

    private void c() {
        int iOptInt = this.e.optInt("Common_frequency");
        if (iOptInt == 0) {
            iOptInt = 1;
        }
        if (SystemClock.elapsedRealtime() - this.f >= iOptInt * 3600000) {
            b();
        }
    }

    public int a(String str) {
        d("get " + str);
        c();
        return this.e.optInt(str);
    }

    public boolean b(String str) {
        d("get " + str);
        c();
        Object objOpt = this.e.opt(str);
        if (objOpt == null) {
            return false;
        }
        if (objOpt instanceof Integer) {
            return !objOpt.equals(0);
        }
        if (objOpt instanceof Boolean) {
            return ((Boolean) objOpt).booleanValue();
        }
        return false;
    }

    private void d(String str) {
        if (this.h) {
            SLog.v("openSDK_LOG.OpenConfig", str + "; appid: " + this.d);
        }
    }
}
