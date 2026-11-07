package com.tencent.qnet.global;

import android.net.Uri;
import android.util.Log;
import com.google.gson.JsonObject;
import com.tencent.qnet.common.HttpProcessor;
import com.tencent.qnet.common.SystemUtil;
import com.tencent.qnet.tcpip.CommonMethods;
import com.tencent.qnet.ui.AppInfo;
import com.tencent.qnet.ui.AppProxyManager;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ServerHelper {
    private static final String NORMAL_SERVER_HOST = "qnet-report.wetest.qq.com";
    public static int[] QNET_SERVER_IP = null;
    private static final String TEST_SERVER_HOST = "qnet-report-pre.wetest.qq.com";

    public static String getServerUrlPrefix() {
        return QnetApplication.ReleaseMode() ? String.format("https://%s/qnet/", NORMAL_SERVER_HOST) : String.format("https://%s/qnet/", TEST_SERVER_HOST);
    }

    public static int[] getIPArrFromHost() {
        try {
            InetAddress[] allByName = InetAddress.getAllByName(getServerHost());
            if (allByName == null || allByName.length <= 0) {
                return null;
            }
            int[] iArr = new int[allByName.length];
            for (int i = 0; i < allByName.length; i++) {
                iArr[i] = CommonMethods.ipStringToInt(allByName[i].getHostAddress());
            }
            return iArr;
        } catch (UnknownHostException e) {
            Log.e(GlobalSettings.LOG_TAG, "ip to host failed : " + e.getMessage());
            return null;
        }
    }

    public static String getServerHost() {
        return QnetApplication.ReleaseMode() ? NORMAL_SERVER_HOST : TEST_SERVER_HOST;
    }

    public static String QueryVersionUpdate(String str) throws Throwable {
        String strEncode = Uri.encode(str);
        HashMap<String, String> mapHttpGet = HttpProcessor.httpGet(getServerUrlPrefix() + "getreleaselog?version=" + strEncode, true);
        if (mapHttpGet.containsKey("state")) {
            if (mapHttpGet.get("state") == null || !mapHttpGet.get("state").trim().equals(QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_SUCCESS.toString())) {
                Log.e(GlobalSettings.LOG_TAG, "Failed To Get Http Response When Login");
                return null;
            }
            String str2 = mapHttpGet.get("data");
            if (str2 != null) {
                return str2;
            }
        }
        return null;
    }

    public static void reportStartInfo(String str) throws Throwable {
        try {
            String userName = GlobalSettings.getInstance().getUserName();
            String appLabel = "";
            String pkgName = "";
            AppInfo proxyApp = AppProxyManager.Instance.getProxyApp();
            if (proxyApp != null) {
                appLabel = proxyApp.getAppLabel();
                pkgName = proxyApp.getPkgName();
            }
            if (str == null) {
                str = "";
            }
            String str2 = String.format("%sreportstartinfo", getServerUrlPrefix());
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("user_name", userName);
            jsonObject.addProperty("package_name", pkgName);
            jsonObject.addProperty("app_name", appLabel);
            jsonObject.addProperty("profile_name", str);
            jsonObject.addProperty("dump_pcap", Integer.valueOf(GlobalSettings.getInstance().dumpPcap() ? 1 : 0));
            int iHttpPost = HttpProcessor.httpPost(str2, jsonObject.toString());
            Log.v(GlobalSettings.LOG_TAG, "res : " + iHttpPost);
            if (iHttpPost != 200) {
                Log.e(GlobalSettings.LOG_TAG, "Failed to report start info to server...");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static int getQnetMinVersion() {
        String str;
        HashMap<String, String> mapHttpGet = HttpProcessor.httpGet(getServerUrlPrefix() + "getVersion");
        int i = 0;
        if (mapHttpGet != null && mapHttpGet.containsKey("state") && (str = mapHttpGet.get("state")) != null && str.trim().equals(QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_SUCCESS.toString()) && mapHttpGet.containsKey("data")) {
            String strTrim = mapHttpGet.get("data").trim();
            try {
                i = Integer.parseInt(strTrim.trim());
            } catch (Exception e) {
                e.printStackTrace();
            }
            Log.i(GlobalSettings.LOG_TAG, "getQnetMinVersion version: " + strTrim);
            return i;
        }
        Log.e(GlobalSettings.LOG_TAG, "getQnetMinVersion failed");
        return 0;
    }

    public static boolean reportUserInfo(String str, String str2, String str3) {
        String systemVersion;
        Exception e;
        String systemModel;
        try {
            systemVersion = SystemUtil.getSystemVersion();
            try {
                systemModel = SystemUtil.getSystemModel();
            } catch (Exception e2) {
                e = e2;
                Log.e(GlobalSettings.LOG_TAG, "Exception When Get Model Info:" + e.getMessage());
                systemModel = "";
            }
        } catch (Exception e3) {
            systemVersion = "";
            e = e3;
        }
        boolean z = false;
        try {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("rtx", str);
            jsonObject.addProperty("app_ver", str3);
            jsonObject.addProperty("sys_ver", systemVersion);
            jsonObject.addProperty("model_name", systemModel);
            if (HttpProcessor.httpPost(getServerUrlPrefix() + "login", jsonObject.toString()) == 200) {
                z = true;
            }
        } catch (Exception e4) {
            Log.e(GlobalSettings.LOG_TAG, "Exception When Report Login Status:" + e4.getMessage());
        }
        if (!z) {
            Log.e(GlobalSettings.LOG_TAG, "tapd Login Insert Failed");
        }
        return z;
    }
}
