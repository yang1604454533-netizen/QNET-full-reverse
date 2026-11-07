package com.tencent.open.utils;

import android.content.Context;
import java.io.File;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    private static Context a;

    public static final Context a() {
        if (a == null) {
            return null;
        }
        return a;
    }

    public static final void a(Context context) {
        a = context;
    }

    public static final String b() {
        return a() == null ? "" : a().getPackageName();
    }

    public static final File c() {
        if (a() == null) {
            return null;
        }
        return a().getFilesDir();
    }

    public static final File d() {
        if (a() == null) {
            return null;
        }
        return a().getExternalFilesDir(null);
    }
}
