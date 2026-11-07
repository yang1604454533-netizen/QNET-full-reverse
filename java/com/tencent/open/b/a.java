package com.tencent.open.b;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class a extends RelativeLayout {
    private static final String a = "com.tencent.open.b.a";
    private Rect b;
    private boolean c;
    private InterfaceC0008a d;

    /* JADX INFO: renamed from: com.tencent.open.b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ProGuard */
    public interface InterfaceC0008a {
        void a();

        void a(int i);
    }

    public a(Context context) {
        super(context);
        this.b = null;
        this.c = false;
        this.d = null;
        if (this.b == null) {
            this.b = new Rect();
        }
    }

    public void a(InterfaceC0008a interfaceC0008a) {
        this.d = interfaceC0008a;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int size = View.MeasureSpec.getSize(i2);
        Activity activity = (Activity) getContext();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(this.b);
        int height = (activity.getWindowManager().getDefaultDisplay().getHeight() - this.b.top) - size;
        if (this.d != null && size != 0) {
            if (height > 100) {
                this.d.a((Math.abs(this.b.height()) - getPaddingBottom()) - getPaddingTop());
            } else {
                this.d.a();
            }
        }
        super.onMeasure(i, i2);
    }
}
