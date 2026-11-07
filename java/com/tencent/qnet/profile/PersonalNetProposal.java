package com.tencent.qnet.profile;

import android.net.Uri;
import android.os.Message;
import android.util.Log;
import com.google.gson.JsonObject;
import com.tencent.qnet.common.HttpProcessor;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.global.QnetGlobalDefine;
import com.tencent.qnet.global.ServerHelper;
import com.tencent.qnet.net.NetProfile;
import com.tencent.qnet.ui.MainActivity;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PersonalNetProposal {
    public static String preSetUserName;

    public static boolean AddProposalToServer(String str, NetProfile netProfile) throws Throwable {
        if (netProfile == null) {
            return true;
        }
        String str2 = ServerHelper.getServerUrlPrefix() + "addproposal";
        try {
            String str3 = netProfile.Name;
            String str4 = netProfile.ID;
            String str5 = netProfile.Desc;
            String strValueOf = String.valueOf(netProfile.Selected);
            String strValueOf2 = String.valueOf(netProfile.Preset);
            String str6 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(netProfile.UpdateTime);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("rtxName", str);
            jsonObject.addProperty("profileName", str3);
            jsonObject.addProperty("profileGuid", str4);
            jsonObject.addProperty("profileDesc", str5);
            jsonObject.addProperty("bSelectedProfile", strValueOf);
            jsonObject.addProperty("bPreSetProfile", strValueOf2);
            jsonObject.addProperty("updateTime", str6);
            List<String> sortedList = NetProfile.getSortedList();
            for (int i = 0; i < sortedList.size(); i++) {
                String str7 = sortedList.get(i);
                if (netProfile.getParamValue(str7) != null) {
                    jsonObject.addProperty(str7, netProfile.getParamValue(str7));
                } else {
                    Log.e(GlobalSettings.LOG_TAG, "Error,Uninitialized Param:" + str7);
                }
            }
            HttpProcessor.httpPost(str2, jsonObject.toString());
        } catch (Exception e) {
            Log.e(GlobalSettings.LOG_TAG, "Exception When Add Profile To Server:" + e.getMessage());
        }
        return true;
    }

    public static boolean UpdateProposalToServer(String str, NetProfile netProfile) {
        if (netProfile == null) {
            return false;
        }
        String str2 = ServerHelper.getServerUrlPrefix() + "updateproposal";
        try {
            String strEncode = Uri.encode(str);
            String str3 = netProfile.Name;
            String str4 = netProfile.ID;
            String str5 = netProfile.Desc;
            String strValueOf = String.valueOf(netProfile.Selected);
            String strValueOf2 = String.valueOf(netProfile.Preset);
            String str6 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(netProfile.UpdateTime);
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("rtxName", strEncode);
            jsonObject.addProperty("profileName", str3);
            jsonObject.addProperty("profileGuid", str4);
            jsonObject.addProperty("profileDesc", str5);
            jsonObject.addProperty("bSelectedProfile", strValueOf);
            jsonObject.addProperty("bPreSetProfile", strValueOf2);
            jsonObject.addProperty("updateTime", str6);
            List<String> sortedList = NetProfile.getSortedList();
            for (int i = 0; i < sortedList.size(); i++) {
                String str7 = sortedList.get(i);
                if (netProfile.getParamValue(str7) != null) {
                    jsonObject.addProperty(str7, Uri.encode(netProfile.getParamValue(str7)));
                } else {
                    Log.e(GlobalSettings.LOG_TAG, "Error,Uninitialized Param:" + str7);
                }
            }
            return HttpProcessor.httpPost(str2, jsonObject.toString()) == 200;
        } catch (Exception e) {
            Log.e(GlobalSettings.LOG_TAG, "Exception When Add Profile To Server:" + e.getMessage());
            return false;
        }
    }

    public static boolean DeleteProposalToServer(String str, String str2) {
        if (str == null || str.trim().equals("")) {
            return false;
        }
        String str3 = ServerHelper.getServerUrlPrefix() + "delproposal";
        try {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("rtxName", str);
            jsonObject.addProperty("profileGuid", str2);
            return HttpProcessor.httpPost(str3, jsonObject.toString()) == 200;
        } catch (Exception e) {
            Log.e(GlobalSettings.LOG_TAG, "Exception When Try To Get Del Url:" + e.getMessage());
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ee  */
    public static HashMap<String, NetProfile> QueryRemoteProposal(String str) {
        Exception e;
        String str2;
        String str3;
        HashMap<String, NetProfile> map = new HashMap<>();
        String str4 = ServerHelper.getServerUrlPrefix() + "getproposal?";
        try {
            str2 = str4 + "rtxName=" + Uri.encode(str);
            try {
                if (preSetUserName != null && !preSetUserName.trim().equals("")) {
                    str2 = str2 + "&preSetUserName=" + preSetUserName.trim();
                }
            } catch (Exception e2) {
                e = e2;
                Log.e(GlobalSettings.LOG_TAG, "Exception When Try To Get Del Url:" + e.getMessage());
            }
        } catch (Exception e3) {
            e = e3;
            str2 = str4;
        }
        HashMap<String, String> mapHttpGet = HttpProcessor.httpGet(str2);
        if (!mapHttpGet.containsKey("state")) {
            str3 = "";
        } else {
            if (mapHttpGet.get("state") == null || !mapHttpGet.get("state").trim().equals(QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_SUCCESS.toString())) {
                Log.e(GlobalSettings.LOG_TAG, "Failed To Get Http Response When Login");
                Message message = new Message();
                message.arg1 = QnetGlobalDefine.QnetMessageType.MS_NET_PROPOSAL_LOAD_FAILED.ordinal();
                message.obj = mapHttpGet.get("state");
                if (MainActivity.getMainActivity() != null && MainActivity.getMainActivity().m_profile_sync_handler != null) {
                    MainActivity.getMainActivity().m_profile_sync_handler.sendMessage(message);
                }
                return map;
            }
            str3 = mapHttpGet.get("data");
            if (str3 == null) {
                str3 = "";
            }
        }
        if (str3 != null && !str3.trim().equals("")) {
            try {
                JSONArray jSONArray = new JSONArray(str3);
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    NetProfile netProfileCreateNew = NetProfile.createNew();
                    netProfileCreateNew.Selected = ((Integer) jSONObject.get("bSelectedProfile")).intValue() != 0;
                    netProfileCreateNew.Name = (String) jSONObject.get("profileName");
                    netProfileCreateNew.Preset = ((Integer) jSONObject.get("bPreSetProfile")).intValue() != 0;
                    netProfileCreateNew.UpdateTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse((String) jSONObject.get("updateTime"));
                    netProfileCreateNew.ID = (String) jSONObject.get("profileGuid");
                    netProfileCreateNew.Desc = (String) jSONObject.get("profileDesc");
                    List<String> sortedList = NetProfile.getSortedList();
                    for (int i2 = 0; i2 < sortedList.size(); i2++) {
                        String str5 = sortedList.get(i2);
                        netProfileCreateNew.setParamIntValue(str5, ((Integer) jSONObject.get(str5)).intValue());
                    }
                    if (!map.containsKey(netProfileCreateNew.ID.trim())) {
                        map.put(netProfileCreateNew.ID.trim(), netProfileCreateNew);
                    }
                }
            } catch (Exception e4) {
                Log.e(GlobalSettings.LOG_TAG, "Exception When Convert JSon String To Json : " + e4.getMessage());
            }
        }
        return map;
    }

    public static String QueryVersionUpdate(String str) throws Throwable {
        HashMap<String, String> mapHttpGet = HttpProcessor.httpGet(ServerHelper.getServerUrlPrefix() + "getreleaselog?version=" + Uri.encode(str), true);
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
}
