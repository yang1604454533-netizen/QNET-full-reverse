package com.tencent.qnet.ui.login.manager;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import com.tencent.connect.common.Constants;
import com.tencent.qim.R;
import com.tencent.qnet.core.CommandUtil;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.global.QnetApplication;
import com.tencent.qnet.ui.MainActivity;
import com.tencent.qnet.ui.login.model.ConnInfo;
import com.tencent.qnet.ui.login.model.CookieInfo;
import com.tencent.qnet.ui.login.util.ServerConfig;
import com.tencent.tauth.Tencent;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class LoginManager extends Activity {
    public static boolean IS_LOGIN = false;
    private static final int TIMEOUT = 10000;

    @SuppressLint({"UseValueOf"})
    public static void autoLoginSuccess(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("ret");
            JSONArray jSONArray = jSONObject.getJSONArray("project");
            ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("uid", jSONObject.getString("id")).apply();
            ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("nick", jSONObject.getString("name")).apply();
            ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("face", jSONObject.getString("face_url")).apply();
            ((QnetApplication) QnetApplication.getContext()).getmSetting().getInt("LoginType", 0);
            ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("projs", jSONArray.toString()).apply();
            ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putBoolean("is_auth", jSONObject.getBoolean("is_auth")).apply();
            ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putBoolean("is_appoint", false).apply();
        } catch (JSONException e) {
            Log.e(GlobalSettings.LOG_TAG, "autoLoginSuccess Exception : " + e.toString());
        }
        IS_LOGIN = true;
        context.startActivity(new Intent(context, (Class<?>) MainActivity.class));
    }

    public static ConnInfo autoLogin(Context context) {
        return sendRequest("https://wetest.qq.com/app_get_person_info", getLoginCookie(), context, 0, true);
    }

    public static void setCookie(CookieInfo cookieInfo, int i) {
        SharedPreferences sharedPreferences = ((QnetApplication) QnetApplication.getContext()).getmSetting();
        sharedPreferences.edit().putInt("LoginType", i).apply();
        switch (i) {
            case ServerConfig.QQLOGIN /* 2001 */:
                sharedPreferences.edit().putString("QQLogincookie", cookieInfo.getLoginCookie()).commit();
                sharedPreferences.edit().putString("QQUploadcookie", cookieInfo.getSessionId()).commit();
                break;
            case ServerConfig.OALOGIN /* 2002 */:
                sharedPreferences.edit().putString("OALogincookie", cookieInfo.getLoginCookie()).commit();
                sharedPreferences.edit().putString("OAUploadcookie", cookieInfo.getSessionId()).commit();
                break;
            default:
                Log.e(GlobalSettings.LOG_TAG, "The loginType is error in setCookie!");
                break;
        }
    }

    public static void logOut(Context context) {
        IS_LOGIN = false;
        ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("QQLogincookie", "").apply();
        ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("OALogincookie", "").apply();
        ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putInt("LoginType", 0).apply();
        ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("nick", "").apply();
        ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("face", "").apply();
        ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("uid", "").apply();
        ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("projs", "").apply();
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(Constants.LOGIN_INFO, 0).edit();
        editorEdit.putString("qq_connect_openid", "");
        editorEdit.putString("qq_connect_access", "");
        editorEdit.putLong("qq_connect_lastlogintime", 0L);
        editorEdit.commit();
    }

    public static String getLoginCookie() {
        SharedPreferences sharedPreferences = ((QnetApplication) QnetApplication.getContext()).getmSetting();
        switch (sharedPreferences.getInt("LoginType", 0)) {
            case ServerConfig.QQLOGIN /* 2001 */:
                return sharedPreferences.getString("QQLogincookie", "");
            case ServerConfig.OALOGIN /* 2002 */:
                return sharedPreferences.getString("OALogincookie", "");
            default:
                Log.e(GlobalSettings.LOG_TAG, "The loginType is zero in getLoginCookie!");
                return "";
        }
    }

    public static CookieInfo parseCookie(String str, CookieInfo cookieInfo) {
        if (cookieInfo == null) {
            cookieInfo = new CookieInfo();
        }
        for (String str2 : str.split("[;,]")) {
            String lowerCase = str2.trim().toLowerCase(Locale.getDefault());
            if (lowerCase.startsWith(ServerConfig.SESSION_NAME) && !lowerCase.contains("deleted")) {
                cookieInfo.setSessionId(str2 + ";");
            }
        }
        return cookieInfo;
    }

    public static ConnInfo sendRequest(String str, String str2, Context context, int i, boolean z) {
        if (z) {
            str2 = "https://wetest.qq.com/mobile/app_get_person_info";
            str = getLoginCookie();
        }
        ConnInfo connInfo = new ConnInfo();
        try {
            URL url = new URL(str2);
            CookieInfo cookieInfo = new CookieInfo();
            String str3 = "";
            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
            httpURLConnection.setRequestMethod(Constants.HTTP_GET);
            httpURLConnection.setReadTimeout(TIMEOUT);
            httpURLConnection.setConnectTimeout(TIMEOUT);
            if (!z) {
                httpURLConnection.setInstanceFollowRedirects(false);
            }
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("Cookie", str);
            httpURLConnection.setRequestProperty("Connection", "close");
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 200) {
                Log.e(GlobalSettings.LOG_TAG, "sendRequest HttpURLConnection的返回码不等于HTTP_OK responsecode=" + responseCode);
                httpURLConnection.disconnect();
                connInfo.setResult("登录异常");
            }
            if (!z) {
                while (true) {
                    if (httpURLConnection.getHeaderFields() != null) {
                        for (Map.Entry<String, List<String>> entry : httpURLConnection.getHeaderFields().entrySet()) {
                            String key = entry.getKey();
                            if (key != null && key.equalsIgnoreCase("set-cookie")) {
                                Iterator<String> it = entry.getValue().iterator();
                                while (it.hasNext()) {
                                    cookieInfo = parseCookie(it.next(), cookieInfo);
                                }
                                break;
                            }
                        }
                    }
                    if (cookieInfo != null && cookieInfo.hasCookie()) {
                        setCookie(cookieInfo, i);
                        break;
                    }
                    String headerField = httpURLConnection.getHeaderField("Location");
                    if (headerField == null) {
                        break;
                    }
                    httpURLConnection.disconnect();
                    httpURLConnection = (HttpURLConnection) new URL(headerField).openConnection();
                    httpURLConnection.setRequestMethod(Constants.HTTP_GET);
                    httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
                    httpURLConnection.setReadTimeout(TIMEOUT);
                    httpURLConnection.setConnectTimeout(TIMEOUT);
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setRequestProperty("Cookie", str);
                    httpURLConnection.connect();
                }
                if (cookieInfo.hasCookie()) {
                    return autoLogin(context);
                }
                InputStreamReader inputStreamReader = new InputStreamReader(httpURLConnection.getInputStream());
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    str3 = str3 + line + CommandUtil.COMMAND_LINE_END;
                }
                String strTrim = str3.trim();
                inputStreamReader.close();
                httpURLConnection.disconnect();
                connInfo.setResult("登录异常" + new JSONObject(strTrim).getString("msg"));
            } else {
                InputStreamReader inputStreamReader2 = new InputStreamReader(httpURLConnection.getInputStream());
                BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader2);
                while (true) {
                    String line2 = bufferedReader2.readLine();
                    if (line2 == null) {
                        break;
                    }
                    str3 = str3 + line2 + CommandUtil.COMMAND_LINE_END;
                }
                String strTrim2 = str3.trim();
                inputStreamReader2.close();
                httpURLConnection.disconnect();
                if (strTrim2.startsWith("{")) {
                    JSONObject jSONObject = new JSONObject(strTrim2);
                    boolean z2 = true;
                    if (jSONObject.getInt("flag") != 1) {
                        z2 = false;
                    }
                    connInfo.setSuccess(z2);
                    if (!connInfo.isSuccess()) {
                        strTrim2 = jSONObject.getString("msg");
                    }
                    connInfo.setResult(strTrim2);
                } else {
                    connInfo.setSuccess(false);
                    if (httpURLConnection.getResponseCode() == 302) {
                        connInfo.setResult("没有权限");
                    } else {
                        connInfo.setResult("网络异常" + httpURLConnection.getResponseCode());
                    }
                }
                connInfo.setCode(httpURLConnection.getResponseCode());
                connInfo.setCodeDescription(httpURLConnection.getResponseMessage());
            }
        } catch (Exception e) {
            connInfo.setResult("登录异常");
            Log.e(GlobalSettings.LOG_TAG, "sendRequest Exception : " + e.toString());
        }
        return connInfo;
    }

    public static Bitmap getBitMapByUrl(String str) {
        if (str != null && str.charAt(0) == '/' && str.charAt(1) == '/') {
            str = "http:" + str;
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setDoInput(true);
            httpURLConnection.setReadTimeout(TIMEOUT);
            httpURLConnection.connect();
            if (httpURLConnection.getResponseCode() != 200) {
                return null;
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
            inputStream.close();
            return bitmapDecodeStream;
        } catch (Exception e) {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(QnetApplication.getContext().getResources(), R.drawable.head_default1);
            if (bitmapDecodeResource != null) {
                return bitmapDecodeResource;
            }
            Log.e(GlobalSettings.LOG_TAG, "returnBitMap Exception : " + e.toString());
            return null;
        }
    }

    public static Bitmap getRoundedCornerBitmap(Bitmap bitmap, float f) {
        Bitmap bitmapCreateBitmap;
        if (bitmap == null) {
            return null;
        }
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            try {
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint();
                Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                RectF rectF = new RectF(rect);
                paint.setAntiAlias(true);
                canvas.drawARGB(0, 0, 0, 0);
                paint.setColor(-12434878);
                canvas.drawRoundRect(rectF, f, f, paint);
                paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
                canvas.drawBitmap(bitmap, rect, rect, paint);
            } catch (OutOfMemoryError e) {
                e = e;
                Log.e(GlobalSettings.LOG_TAG, "getRoundedCornerBitmap error : " + e.toString());
            }
        } catch (OutOfMemoryError e2) {
            e = e2;
            bitmapCreateBitmap = null;
        }
        return bitmapCreateBitmap;
    }

    public static boolean isAutoQQConnectLogin(Context context, Tencent tencent) {
        Log.v(GlobalSettings.LOG_TAG, "isAutoQQConnectLogin");
        SharedPreferences sharedPreferences = context.getSharedPreferences(Constants.LOGIN_INFO, 0);
        String string = sharedPreferences.getString("qq_connect_openid", "");
        String string2 = sharedPreferences.getString("qq_connect_access", "");
        long j = sharedPreferences.getLong("qq_connect_lastlogintime", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        Log.v(GlobalSettings.LOG_TAG, "current time : " + jCurrentTimeMillis + ", last login time : " + j);
        if (jCurrentTimeMillis - j > 604800000) {
            return false;
        }
        if (string != "" && string2 != "") {
            tencent.setOpenId(string);
            tencent.setAccessToken(string2, "604800");
        }
        if (tencent.isSessionValid()) {
            Log.v(GlobalSettings.LOG_TAG, "isAutoQQConnectLogin true");
            ((QnetApplication) QnetApplication.getContext()).getmSetting().edit().putString("nick", sharedPreferences.getString("qq_connect_nick", "")).apply();
            return true;
        }
        Log.v(GlobalSettings.LOG_TAG, "isAutoQQConnectLogin false");
        return false;
    }
}
