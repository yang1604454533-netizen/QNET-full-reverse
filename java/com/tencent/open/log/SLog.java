package com.tencent.open.log;

import android.os.Environment;
import android.text.TextUtils;
import android.util.Log;
import com.tencent.connect.common.Constants;
import java.io.File;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class SLog implements TraceLevel {
    public static final String TAG = "openSDK_LOG";
    protected static final b b = new b(a(), c.m, c.g, c.h, c.c, c.i, 10, c.e, c.n);
    private static boolean d;
    public static SLog instance;
    protected a a = new a(b);
    private Tracer c;

    public static SLog getInstance() {
        if (instance == null) {
            synchronized (SLog.class) {
                if (instance == null) {
                    instance = new SLog();
                    d = true;
                }
            }
        }
        return instance;
    }

    private SLog() {
    }

    protected void a(int i, String str, String str2, Throwable th) {
        if (d) {
            String strB = com.tencent.open.utils.e.b();
            if (!TextUtils.isEmpty(strB)) {
                String str3 = strB + " SDK_VERSION:" + Constants.SDK_VERSION;
                if (this.a == null) {
                    return;
                }
                e.a.a(32, Thread.currentThread(), System.currentTimeMillis(), TAG, str3, null);
                this.a.a(32, Thread.currentThread(), System.currentTimeMillis(), TAG, str3, null);
                d = false;
            }
        }
        e.a.a(i, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
        if (d.a.a(c.b, i)) {
            if (this.a == null) {
                return;
            } else {
                this.a.a(i, Thread.currentThread(), System.currentTimeMillis(), str, str2, th);
            }
        }
        if (this.c != null) {
            try {
                this.c.a(i, Thread.currentThread(), System.currentTimeMillis(), str, a(str2), th);
            } catch (Exception e) {
                Log.e(str, "Exception", e);
            }
        }
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return d.a(str) ? "xxxxxx" : str;
    }

    public static final void v(String str, String str2) {
        getInstance().a(1, str, str2, null);
    }

    public static final void v(String str, String str2, Throwable th) {
        getInstance().a(1, str, str2, th);
    }

    public static final void d(String str, String str2) {
        getInstance().a(2, str, str2, null);
    }

    public static final void d(String str, String str2, Throwable th) {
        getInstance().a(2, str, str2, th);
    }

    public static final void i(String str, String str2) {
        getInstance().a(4, str, str2, null);
    }

    public static final void i(String str, String str2, Throwable th) {
        getInstance().a(4, str, str2, th);
    }

    public static final void w(String str, String str2) {
        getInstance().a(8, str, str2, null);
    }

    public static final void w(String str, String str2, Throwable th) {
        getInstance().a(8, str, str2, th);
    }

    public static final void e(String str, String str2) {
        getInstance().a(16, str, str2, null);
    }

    public static final void e(String str, String str2, Throwable th) {
        getInstance().a(16, str, str2, th);
    }

    public static final void u(String str, String str2) {
        getInstance().a(32, str, str2, null);
    }

    public static final void u(String str, String str2, Throwable th) {
        getInstance().a(32, str, str2, th);
    }

    public static void flushLogs() {
        getInstance().c();
    }

    public static void release() {
        synchronized (SLog.class) {
            getInstance().b();
            if (instance != null) {
                instance = null;
            }
        }
    }

    protected static File a() {
        String str = c.d;
        try {
            d.c cVarB = d.b.b();
            if (cVarB != null && cVarB.c() > c.f) {
                return new File(Environment.getExternalStorageDirectory(), str);
            }
            return new File(com.tencent.open.utils.e.c(), str);
        } catch (Throwable th) {
            e(TAG, "getLogFilePath:", th);
            return null;
        }
    }

    protected void b() {
        if (this.a != null) {
            this.a.a();
            this.a.b();
            this.a = null;
        }
    }

    protected void c() {
        if (this.a != null) {
            this.a.a();
        }
    }

    public void setCustomLogger(Tracer tracer) {
        this.c = tracer;
    }
}
