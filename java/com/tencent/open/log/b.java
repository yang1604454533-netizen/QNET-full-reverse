package com.tencent.open.log;

import android.text.TextUtils;
import com.tencent.open.utils.k;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class b {
    private static SimpleDateFormat a = d.C0010d.a("yy.MM.dd.HH");
    private File g;
    private String b = "Tracer.File";
    private int c = Integer.MAX_VALUE;
    private int d = Integer.MAX_VALUE;
    private int e = 4096;
    private long f = 10000;
    private int h = 10;
    private String i = ".log";
    private long j = Long.MAX_VALUE;

    public b(File file, int i, int i2, int i3, String str, long j, int i4, String str2, long j2) {
        a(file);
        b(i);
        a(i2);
        c(i3);
        a(str);
        a(j);
        d(i4);
        b(str2);
        b(j2);
    }

    public File[] a() {
        return c(System.currentTimeMillis());
    }

    private File[] c(long j) {
        File file;
        File file2;
        File fileB = b();
        String strC = c(d(j));
        try {
            file = new File(fileB, strC);
        } catch (Throwable th) {
            SLog.e(SLog.TAG, "getWorkFile,get old sdcard file exception:", th);
            file = fileB;
        }
        String strC2 = k.c();
        if (TextUtils.isEmpty(strC2) && strC2 == null) {
            file2 = null;
        } else {
            try {
                File file3 = new File(strC2, c.o);
                if (!file3.exists()) {
                    file3.mkdirs();
                }
                file2 = new File(file3, strC);
            } catch (Exception e) {
                SLog.e(SLog.TAG, "getWorkFile,get app specific file exception:", e);
                file2 = null;
            }
        }
        return new File[]{file, file2};
    }

    private String d(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return new SimpleDateFormat("yy.MM.dd.HH").format(calendar.getTime());
    }

    private String c(String str) {
        return "com.tencent.mobileqq_connectSdk." + str + ".log";
    }

    public File b() {
        File fileE = e();
        if (fileE != null) {
            fileE.mkdirs();
        }
        return fileE;
    }

    public String c() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public void a(int i) {
        this.c = i;
    }

    public void b(int i) {
        this.d = i;
    }

    public int d() {
        return this.e;
    }

    public void c(int i) {
        this.e = i;
    }

    public void a(long j) {
        this.f = j;
    }

    public File e() {
        return this.g;
    }

    public void a(File file) {
        this.g = file;
    }

    public int f() {
        return this.h;
    }

    public void d(int i) {
        this.h = i;
    }

    public void b(String str) {
        this.i = str;
    }

    public void b(long j) {
        this.j = j;
    }
}
