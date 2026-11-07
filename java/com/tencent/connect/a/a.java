package com.tencent.connect.a;

import android.content.Context;
import android.text.TextUtils;
import com.mysql.jdbc.MysqlErrorNumbers;
import com.tencent.connect.auth.QQToken;
import com.tencent.connect.common.Constants;
import com.tencent.open.a.d;
import com.tencent.open.log.SLog;
import com.tencent.open.utils.f;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class a {
    private static Class<?> a;
    private static Class<?> b;
    private static Method c;
    private static Method d;
    private static Method e;
    private static Method f;
    private static boolean g;

    public static boolean a(Context context, QQToken qQToken) {
        return f.a(context, qQToken.getAppId()).b("Common_ta_enable");
    }

    public static void b(Context context, QQToken qQToken) {
        try {
            if (a(context, qQToken)) {
                f.invoke(a, true);
            } else {
                f.invoke(a, false);
            }
        } catch (Exception e2) {
            SLog.e("OpenConfig", "checkStatStatus exception: " + e2.toString());
        }
    }

    public static void c(Context context, QQToken qQToken) {
        String str = "Aqc" + qQToken.getAppId();
        try {
            a = Class.forName("com.tencent.stat.StatConfig");
            b = Class.forName("com.tencent.stat.StatService");
            c = b.getMethod("reportQQ", Context.class, String.class);
            d = b.getMethod("trackCustomEvent", Context.class, String.class, String[].class);
            e = b.getMethod("commitEvents", Context.class, Integer.TYPE);
            f = a.getMethod("setEnableStatService", Boolean.TYPE);
            b(context, qQToken);
            a.getMethod("setAutoExceptionCaught", Boolean.TYPE).invoke(a, false);
            a.getMethod("setEnableSmartReporting", Boolean.TYPE).invoke(a, true);
            a.getMethod("setSendPeriodMinutes", Integer.TYPE).invoke(a, Integer.valueOf(MysqlErrorNumbers.ER_XAER_DUPID));
            Class<?> cls = Class.forName("com.tencent.stat.StatReportStrategy");
            a.getMethod("setStatSendStrategy", cls).invoke(a, cls.getField("PERIOD").get(null));
            b.getMethod("startStatService", Context.class, String.class, String.class).invoke(b, context, str, Class.forName("com.tencent.stat.common.StatConstants").getField("VERSION").get(null));
            g = true;
        } catch (Exception e2) {
            SLog.e("OpenConfig", "start4QQConnect exception: " + e2.toString());
        }
    }

    public static void d(Context context, QQToken qQToken) {
        if (!TextUtils.isEmpty(qQToken.getOpenId())) {
            d.a().a(qQToken.getOpenId(), qQToken.getAppId(), "2", "1", Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, "0", "0", "0");
        }
        if (g) {
            b(context, qQToken);
            if (qQToken.getOpenId() != null) {
                try {
                    c.invoke(b, context, qQToken.getOpenId());
                } catch (Exception e2) {
                    SLog.e("OpenConfig", "reportQQ exception: " + e2.toString());
                }
            }
        }
    }

    public static void a(Context context, QQToken qQToken, String str, String... strArr) {
        if (g) {
            b(context, qQToken);
            try {
                d.invoke(b, context, str, strArr);
            } catch (Exception e2) {
                SLog.e("OpenConfig", "trackCustomEvent exception: " + e2.toString());
            }
        }
    }
}
