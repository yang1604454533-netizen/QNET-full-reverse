package com.tencent.qnet.common;

import android.app.Application;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.mysql.jdbc.StatementImpl;
import com.tencent.connect.common.Constants;
import com.tencent.qim.R;
import com.tencent.qnet.encrypt.CommonEncryption;
import com.tencent.qnet.encrypt.CustomEncryption;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.global.QnetApplication;
import com.tencent.qnet.global.QnetGlobalDefine;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.conn.ConnectTimeoutException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class HttpProcessor {

    public class HttpResponse {
        public String data;
        public int state;

        public HttpResponse(int i, String str) {
            this.state = i;
            this.data = str;
        }
    }

    public static void sendMsg(Handler handler, Message message, String str) {
        message.what = 1;
        message.obj = str;
        handler.sendMessage(message);
    }

    public static String md5Password(String str) {
        try {
            byte[] bArrDigest = MessageDigest.getInstance("md5").digest(str.getBytes());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b : bArrDigest) {
                String hexString = Integer.toHexString(b & StatementImpl.USES_VARIABLES_UNKNOWN);
                if (hexString.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(hexString);
            }
            return stringBuffer.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            return "";
        } catch (Exception e2) {
            e2.printStackTrace();
            return "";
        }
    }

    public static void sendMsg(Handler handler, Message message, List list) {
        message.what = 1;
        message.obj = list;
        handler.sendMessage(message);
    }

    public static int httpPost(String str, String str2) throws Throwable {
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                String str3 = CustomEncryption.getRandom20bytesSalt() + str2;
                byte[] aESKey = CustomEncryption.getAESKey();
                new String(aESKey);
                String strAes128EcbEncrypt = CommonEncryption.aes128EcbEncrypt(aESKey, str3);
                long jCurrentTimeMillis = System.currentTimeMillis();
                URL url = new URL(str);
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
                try {
                    if (!QnetApplication.ReleaseMode() && "https".equalsIgnoreCase(url.getProtocol())) {
                        ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(SSLSocketClient.getSSLSocketFactory());
                        ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(SSLSocketClient.getHostnameVerifier());
                    }
                    httpURLConnection2.setRequestMethod(Constants.HTTP_POST);
                    httpURLConnection2.setRequestProperty("Content-type", "application/x-www-form-urlencoded");
                    httpURLConnection2.setRequestProperty("Content-Length", String.valueOf(strAes128EcbEncrypt.getBytes().length));
                    httpURLConnection2.setRequestProperty("app-version", GlobalSettings.getInstance().appVersion);
                    httpURLConnection2.setRequestProperty("ts", String.valueOf(jCurrentTimeMillis));
                    httpURLConnection2.setRequestProperty("enc-info", CustomEncryption.createEncInfoSign(String.valueOf(jCurrentTimeMillis), GlobalSettings.getInstance().appVersion, strAes128EcbEncrypt));
                    httpURLConnection2.setDoInput(true);
                    httpURLConnection2.setDoOutput(true);
                    httpURLConnection2.getOutputStream().write(strAes128EcbEncrypt.getBytes());
                    int responseCode = httpURLConnection2.getResponseCode();
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    return responseCode;
                } catch (MalformedURLException e) {
                    e = e;
                    httpURLConnection = httpURLConnection2;
                    Log.e(GlobalSettings.LOG_TAG, "post MalformedURLException : " + e.getMessage());
                    if (httpURLConnection == null) {
                        return -1;
                    }
                    httpURLConnection.disconnect();
                    return -1;
                } catch (IOException e2) {
                    e = e2;
                    httpURLConnection = httpURLConnection2;
                    Log.e(GlobalSettings.LOG_TAG, "post IOException : " + e.getMessage());
                    if (httpURLConnection == null) {
                        return -1;
                    }
                    httpURLConnection.disconnect();
                    return -1;
                } catch (Exception e3) {
                    e = e3;
                    httpURLConnection = httpURLConnection2;
                    Log.e(GlobalSettings.LOG_TAG, "post Exception : " + e.getMessage());
                    if (httpURLConnection == null) {
                        return -1;
                    }
                    httpURLConnection.disconnect();
                    return -1;
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (MalformedURLException e4) {
            e = e4;
        } catch (IOException e5) {
            e = e5;
        } catch (Exception e6) {
            e = e6;
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x01ba A[PHI: r1
  0x01ba: PHI (r1v6 java.net.HttpURLConnection) = 
  (r1v2 java.net.HttpURLConnection)
  (r1v3 java.net.HttpURLConnection)
  (r1v4 java.net.HttpURLConnection)
  (r1v5 java.net.HttpURLConnection)
  (r1v7 java.net.HttpURLConnection)
 binds: [B:52:0x01a8, B:63:0x020d, B:60:0x01e6, B:55:0x01b8, B:43:0x0150] A[DONT_GENERATE, DONT_INLINE]] */
    public static HashMap<String, String> httpGet(String str, boolean z) throws Throwable {
        StringBuilder sb;
        BufferedReader bufferedReader;
        HashMap<String, String> map = new HashMap<>();
        HttpURLConnection httpURLConnection = null;
        try {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                URL url = new URL(str);
                HttpURLConnection httpURLConnection2 = (HttpURLConnection) url.openConnection();
                try {
                    try {
                        if (!QnetApplication.ReleaseMode() && "https".equalsIgnoreCase(url.getProtocol())) {
                            ((HttpsURLConnection) httpURLConnection2).setSSLSocketFactory(SSLSocketClient.getSSLSocketFactory());
                            ((HttpsURLConnection) httpURLConnection2).setHostnameVerifier(SSLSocketClient.getHostnameVerifier());
                        }
                        httpURLConnection2.setRequestMethod(Constants.HTTP_GET);
                        httpURLConnection2.setRequestProperty("app-version", GlobalSettings.getInstance().appVersion);
                        httpURLConnection2.setRequestProperty("ts", String.valueOf(jCurrentTimeMillis));
                        httpURLConnection2.setRequestProperty("enc-info", CustomEncryption.createEncInfoSign(String.valueOf(jCurrentTimeMillis), GlobalSettings.getInstance().appVersion, ""));
                        httpURLConnection2.setDoInput(true);
                        try {
                            httpURLConnection2.setConnectTimeout(Integer.valueOf(((Application) Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", new Class[0]).invoke(null, new Object[0])).getResources().getString(R.string.httpTimeOutThread)).intValue());
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                }
                                sb.append(line);
                                if (z) {
                                    sb.append('\n');
                                }
                            }
                        } catch (Exception e) {
                            Log.e(GlobalSettings.LOG_TAG, "Failed To Set Time Out,Exception:" + e.getMessage());
                        }
                        sb = new StringBuilder();
                        if (httpURLConnection2.getResponseCode() >= 400) {
                            bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getErrorStream()));
                        } else {
                            bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection2.getInputStream()));
                        }
                        String string = sb.toString();
                        map.put("state", QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_SUCCESS.toString());
                        map.put("data", string);
                        if (httpURLConnection2 != null) {
                            httpURLConnection2.disconnect();
                        }
                    } catch (Exception e2) {
                        e = e2;
                        httpURLConnection = httpURLConnection2;
                        e.printStackTrace();
                        Log.e(GlobalSettings.LOG_TAG, "Exception:" + e.getMessage());
                        map.put("state", QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_UNDEFINED.toString());
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                    }
                } catch (MalformedURLException e3) {
                    e = e3;
                    httpURLConnection = httpURLConnection2;
                    e.printStackTrace();
                    map.put("state", QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_UNDEFINED.toString());
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (SocketTimeoutException e4) {
                    e = e4;
                    httpURLConnection = httpURLConnection2;
                    map.put("state", QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_TIMEOUT.toString());
                    Log.e(GlobalSettings.LOG_TAG, "Http Time Out:" + e.getMessage());
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (ConnectTimeoutException e5) {
                    e = e5;
                    httpURLConnection = httpURLConnection2;
                    map.put("state", QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_TIMEOUT.toString());
                    Log.e(GlobalSettings.LOG_TAG, "Http Time Out:" + e.getMessage());
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (IOException e6) {
                    e = e6;
                    httpURLConnection = httpURLConnection2;
                    e.printStackTrace();
                    Log.e(GlobalSettings.LOG_TAG, "IOException Exception:" + e.getMessage());
                    if (e.getClass().getName().equals("java.io.EOFException") && !QnetApplication.ReleaseMode()) {
                        map.clear();
                        map.put("state", QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_SUCCESS.toString());
                        map.put("data", "{\"nick\":\"test_user\"}\n");
                    } else {
                        map.put("state", QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_UNDEFINED.toString());
                    }
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                } catch (Throwable th) {
                    th = th;
                    httpURLConnection = httpURLConnection2;
                    if (httpURLConnection != null) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (MalformedURLException e7) {
            e = e7;
        } catch (SocketTimeoutException e8) {
            e = e8;
        } catch (ConnectTimeoutException e9) {
            e = e9;
        } catch (IOException e10) {
            e = e10;
        } catch (Exception e11) {
            e = e11;
        }
        return map;
    }

    public static HashMap<String, String> httpGet(String str) {
        return httpGet(str, false);
    }

    public static String GetUserNameFromJason(String str, String str2) {
        try {
            String string = new JSONObject(str).getString(str2);
            return (string.length() != 0) & (string != null) ? string : "";
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(GlobalSettings.LOG_TAG, "GetUserNameFromJason Exception:" + e.getMessage());
            return "";
        }
    }
}
