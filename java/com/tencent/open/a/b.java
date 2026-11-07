package com.tencent.open.a;

import android.os.Bundle;
import java.io.Serializable;
import java.util.HashMap;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class b implements Serializable {
    public final HashMap<String, String> a = new HashMap<>();

    public b(Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                this.a.put(str, bundle.getString(str));
            }
        }
    }
}
