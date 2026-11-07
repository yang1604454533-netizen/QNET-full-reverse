package com.tencent.open;

import android.net.Uri;
import android.webkit.WebView;
import com.tencent.open.log.SLog;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public class a {
    protected HashMap<String, b> a = new HashMap<>();

    /* JADX INFO: renamed from: com.tencent.open.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ProGuard */
    public static class C0007a {
        protected WeakReference<WebView> a;
        protected long b;
        protected String c;

        public C0007a(WebView webView, long j, String str) {
            this.a = new WeakReference<>(webView);
            this.b = j;
            this.c = str;
        }

        public void a(Object obj) {
            WebView webView = this.a.get();
            if (webView == null) {
                return;
            }
            String string = "'undefined'";
            if (obj instanceof String) {
                string = "'" + ((Object) ((String) obj).replace("\\", "\\\\").replace("'", "\\'")) + "'";
            } else if ((obj instanceof Number) || (obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Double) || (obj instanceof Float) || (obj instanceof Boolean)) {
                string = obj.toString();
            }
            webView.loadUrl("javascript:window.JsBridge&&JsBridge.callback(" + this.b + ",{'r':0,'result':" + string + "});");
        }

        public void a() {
            WebView webView = this.a.get();
            if (webView == null) {
                return;
            }
            webView.loadUrl("javascript:window.JsBridge&&JsBridge.callback(" + this.b + ",{'r':1,'result':'no such method'})");
        }

        public void a(String str) {
            WebView webView = this.a.get();
            if (webView != null) {
                webView.loadUrl("javascript:" + str);
            }
        }
    }

    /* JADX INFO: compiled from: ProGuard */
    public static class b {
        public boolean customCallback() {
            return false;
        }

        public void call(String str, List<String> list, C0007a c0007a) {
            Method method;
            Object objInvoke;
            Method[] declaredMethods = getClass().getDeclaredMethods();
            int length = declaredMethods.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    method = null;
                    break;
                }
                method = declaredMethods[i];
                if (method.getName().equals(str) && method.getParameterTypes().length == list.size()) {
                    break;
                } else {
                    i++;
                }
            }
            if (method == null) {
                if (c0007a != null) {
                    c0007a.a();
                    return;
                }
                return;
            }
            try {
                switch (list.size()) {
                    case 0:
                        objInvoke = method.invoke(this, new Object[0]);
                        break;
                    case 1:
                        objInvoke = method.invoke(this, list.get(0));
                        break;
                    case 2:
                        objInvoke = method.invoke(this, list.get(0), list.get(1));
                        break;
                    case 3:
                        objInvoke = method.invoke(this, list.get(0), list.get(1), list.get(2));
                        break;
                    case 4:
                        objInvoke = method.invoke(this, list.get(0), list.get(1), list.get(2), list.get(3));
                        break;
                    case 5:
                        objInvoke = method.invoke(this, list.get(0), list.get(1), list.get(2), list.get(3), list.get(4));
                        break;
                    default:
                        Object[] objArr = new Object[6];
                        objArr[0] = list.get(0);
                        objArr[1] = list.get(1);
                        objArr[2] = list.get(2);
                        objArr[3] = list.get(3);
                        objArr[4] = list.get(4);
                        objArr[5] = list.get(5);
                        objInvoke = method.invoke(this, objArr);
                        break;
                }
                Class<?> returnType = method.getReturnType();
                SLog.d("openSDK_LOG.JsBridge", "-->call, result: " + objInvoke + " | ReturnType: " + returnType.getName());
                if (!"void".equals(returnType.getName()) && returnType != Void.class) {
                    if (c0007a == null || !customCallback()) {
                        return;
                    }
                    c0007a.a(objInvoke != null ? objInvoke.toString() : null);
                    return;
                }
                if (c0007a != null) {
                    c0007a.a((Object) null);
                }
            } catch (Exception e) {
                SLog.e("openSDK_LOG.JsBridge", "-->handler call mehtod ex. targetMethod: " + method, e);
                if (c0007a != null) {
                    c0007a.a();
                }
            }
        }
    }

    public void a(b bVar, String str) {
        this.a.put(str, bVar);
    }

    public void a(String str, String str2, List<String> list, C0007a c0007a) {
        SLog.v("openSDK_LOG.JsBridge", "getResult---objName = " + str + " methodName = " + str2);
        int size = list.size();
        for (int i = 0; i < size; i++) {
            try {
                list.set(i, URLDecoder.decode(list.get(i), "UTF-8"));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }
        b bVar = this.a.get(str);
        if (bVar != null) {
            SLog.d("openSDK_LOG.JsBridge", "call----");
            bVar.call(str2, list, c0007a);
        } else {
            SLog.d("openSDK_LOG.JsBridge", "not call----objName NOT FIND");
            if (c0007a != null) {
                c0007a.a();
            }
        }
    }

    public boolean a(WebView webView, String str) {
        SLog.v("openSDK_LOG.JsBridge", "-->canHandleUrl---url = " + str);
        if (str == null || !Uri.parse(str).getScheme().equals("jsbridge")) {
            return false;
        }
        ArrayList arrayList = new ArrayList(Arrays.asList((str + "/#").split("/")));
        if (arrayList.size() < 6) {
            return false;
        }
        String str2 = (String) arrayList.get(2);
        String str3 = (String) arrayList.get(3);
        List<String> listSubList = arrayList.subList(4, arrayList.size() - 1);
        C0007a c0007a = new C0007a(webView, 4L, str);
        webView.getUrl();
        a(str2, str3, listSubList, c0007a);
        return true;
    }
}
