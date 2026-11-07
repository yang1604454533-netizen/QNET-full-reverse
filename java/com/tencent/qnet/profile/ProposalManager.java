package com.tencent.qnet.profile;

import android.os.Message;
import android.util.Log;
import com.tencent.qnet.common.XmlService;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.global.QnetGlobalDefine;
import com.tencent.qnet.net.NetProfile;
import com.tencent.qnet.ui.MainActivity;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ProposalManager {
    private static ProposalManager proposalManager;
    private int SelectedIndex;
    private Map<String, NetProfile> myProposalMap;
    private List<NetProfile> profileList;
    private String proposalUser;
    private XmlService xmlParser;
    private boolean bLoadLocalProposal = false;
    private boolean bDownLoadProposalComplete = false;
    private boolean bDownLoadingProposal = false;
    private boolean bSynMode = true;

    private void ClearLocalProposalCache() {
    }

    public boolean isbSynMode() {
        return this.bSynMode;
    }

    private ProposalManager() {
        this.xmlParser = null;
        if (this.xmlParser == null) {
            this.xmlParser = new XmlService();
        }
    }

    public static ProposalManager GetInstance() {
        if (proposalManager == null) {
            proposalManager = new ProposalManager();
        }
        return proposalManager;
    }

    public List<String> getProfileList() {
        if (this.profileList != null) {
            this.profileList.clear();
        }
        this.profileList = GetProposal();
        if (this.profileList == null || this.profileList.size() <= 0) {
            return null;
        }
        int size = this.profileList.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            arrayList.add(this.profileList.get(i).Name);
            if (this.profileList.get(i).Selected) {
                this.SelectedIndex = i;
            }
        }
        return arrayList;
    }

    public int GetSelectedProfileID() {
        return this.SelectedIndex;
    }

    public void OnSelectedProfileChanged(int i, final boolean z) {
        if (i != this.SelectedIndex && this.profileList != null && i >= 0 && i < this.profileList.size() && this.SelectedIndex >= 0 && this.SelectedIndex < this.profileList.size()) {
            NetProfile netProfile = this.profileList.get(this.SelectedIndex);
            netProfile.Selected = false;
            NetProfile netProfile2 = this.profileList.get(i);
            netProfile2.Selected = true;
            final String str = netProfile2.ID;
            if (this.myProposalMap != null) {
                if (this.myProposalMap.containsKey(netProfile.ID)) {
                    this.myProposalMap.put(netProfile.ID, netProfile);
                }
                if (this.myProposalMap.containsKey(netProfile2.ID)) {
                    this.myProposalMap.put(netProfile2.ID, netProfile2);
                }
            }
            final MainActivity mainActivity = MainActivity.getMainActivity();
            if (mainActivity != null) {
                mainActivity.runOnUiThread(new Runnable() { // from class: com.tencent.qnet.profile.ProposalManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        mainActivity.profileChangedByFW(str, z);
                    }
                });
            }
            this.SelectedIndex = i;
        }
    }

    public boolean IsProposalLoaded() {
        return this.bLoadLocalProposal;
    }

    public boolean isbDownLoadProposalComplete() {
        return this.bDownLoadProposalComplete;
    }

    public boolean isbDownLoadingProposal() {
        return this.bDownLoadingProposal;
    }

    public String GetProposalUser() {
        return this.proposalUser;
    }

    public void SetProposalUser(String str) {
        if (this.proposalUser == null || this.proposalUser.trim().equals("")) {
            this.proposalUser = str;
        }
    }

    /* JADX WARN: Type inference failed for: r0v6, types: [com.tencent.qnet.profile.ProposalManager$2] */
    public void DownLoadMyProposals() {
        if (this.proposalUser == null || this.proposalUser.trim().equals("")) {
            return;
        }
        if (this.bSynMode) {
            new Thread() { // from class: com.tencent.qnet.profile.ProposalManager.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    ProposalManager.this.bDownLoadingProposal = true;
                    HashMap<String, NetProfile> mapQueryRemoteProposal = PersonalNetProposal.QueryRemoteProposal(ProposalManager.this.proposalUser);
                    if (mapQueryRemoteProposal != null && mapQueryRemoteProposal.size() != 0) {
                        if (ProposalManager.this.myProposalMap == null) {
                            ProposalManager.this.myProposalMap = new HashMap();
                            ProposalManager.this.myProposalMap = mapQueryRemoteProposal;
                        } else {
                            Iterator<Map.Entry<String, NetProfile>> it = mapQueryRemoteProposal.entrySet().iterator();
                            while (it.hasNext()) {
                                try {
                                    NetProfile netProfileM7clone = it.next().getValue().m7clone();
                                    String str = netProfileM7clone.ID;
                                    if (!ProposalManager.this.myProposalMap.containsKey(str)) {
                                        ProposalManager.this.myProposalMap.put(str, netProfileM7clone);
                                    } else if (((NetProfile) ProposalManager.this.myProposalMap.get(str)).UpdateTime.compareTo(netProfileM7clone.UpdateTime) < 0) {
                                        ProposalManager.this.myProposalMap.put(str, netProfileM7clone);
                                    }
                                } catch (Exception unused) {
                                    Log.e(GlobalSettings.LOG_TAG, "Exception When Get Remote Proposal");
                                }
                            }
                        }
                        ProposalManager.this.bDownLoadProposalComplete = true;
                        ProposalManager.this.bDownLoadingProposal = false;
                        try {
                            ProposalManager.this.xmlParser.writeProposalParamsToCache(ProposalManager.this.GetProposal());
                        } catch (Exception unused2) {
                            Log.e(GlobalSettings.LOG_TAG, "Failed To Write Remote Proposal");
                        }
                        Message message = new Message();
                        message.arg1 = QnetGlobalDefine.QnetMessageType.MS_NET_PROPOSAL_LOADED.ordinal();
                        if (MainActivity.getMainActivity() == null || MainActivity.getMainActivity().m_profile_sync_handler == null) {
                            return;
                        }
                        MainActivity.getMainActivity().m_profile_sync_handler.sendMessage(message);
                        return;
                    }
                    Log.e(GlobalSettings.LOG_TAG, "Failed To Get Proposal From Remote Or Remote Has No Proposal");
                }
            }.start();
        } else {
            this.bDownLoadProposalComplete = true;
        }
    }

    private List<NetProfile> GetSortedListFromMap(Map<String, NetProfile> map) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList(map.entrySet());
        Collections.sort(arrayList2, new Comparator<Map.Entry<String, NetProfile>>() { // from class: com.tencent.qnet.profile.ProposalManager.3
            @Override // java.util.Comparator
            public int compare(Map.Entry<String, NetProfile> entry, Map.Entry<String, NetProfile> entry2) {
                return entry2.getValue().UpdateTime.compareTo(entry.getValue().UpdateTime);
            }
        });
        for (int i = 0; i < arrayList2.size(); i++) {
            ((Map.Entry) arrayList2.get(i)).toString();
            arrayList.add(((Map.Entry) arrayList2.get(i)).getValue());
        }
        return arrayList;
    }

    public List<NetProfile> GetProposal() {
        ArrayList arrayList = new ArrayList();
        if (this.myProposalMap == null) {
            this.myProposalMap = new HashMap();
        }
        if (this.myProposalMap != null) {
            Iterator<Map.Entry<String, NetProfile>> it = this.myProposalMap.entrySet().iterator();
            while (it.hasNext()) {
                try {
                    arrayList.add(it.next().getValue().m7clone());
                } catch (Exception unused) {
                    Log.e(GlobalSettings.LOG_TAG, "Exception When Get Remote Proposal");
                }
            }
            return GetSortedListFromMap(this.myProposalMap);
        }
        return GetProposalFromCache();
    }

    public void LoadLocalProposal() {
        if (this.myProposalMap == null) {
            this.myProposalMap = new HashMap();
        }
        List<NetProfile> listGetProposalFromCache = GetProposalFromCache();
        if (listGetProposalFromCache != null) {
            for (int i = 0; i < listGetProposalFromCache.size(); i++) {
                NetProfile netProfile = listGetProposalFromCache.get(i);
                String strTrim = netProfile.ID.trim();
                NetProfile netProfileM7clone = netProfile.m7clone();
                if (!this.myProposalMap.containsKey(strTrim)) {
                    this.myProposalMap.put(strTrim, netProfileM7clone);
                } else if (this.myProposalMap.get(strTrim).UpdateTime.compareTo(netProfile.UpdateTime) < 0) {
                    this.myProposalMap.put(strTrim, netProfileM7clone);
                }
            }
            this.bLoadLocalProposal = true;
        }
    }

    private List<NetProfile> GetProposalFromCache() {
        try {
            return this.xmlParser.getProposalParams();
        } catch (Exception unused) {
            Log.e(GlobalSettings.LOG_TAG, "Exception When Get Local Proposal");
            return null;
        }
    }

    public void EditProposal(NetProfile netProfile) {
        EditProposal(netProfile, true, true);
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [com.tencent.qnet.profile.ProposalManager$4] */
    public void EditProposal(NetProfile netProfile, boolean z, boolean z2) {
        if (netProfile == null) {
            return;
        }
        String str = netProfile.ID;
        if (this.myProposalMap.containsKey(str.trim())) {
            if (z) {
                netProfile.UpdateTime = new Date(System.currentTimeMillis());
            }
            this.myProposalMap.put(str.trim(), netProfile.m7clone());
        }
        try {
            this.xmlParser.writeProposalParamsToCache(GetProposal());
        } catch (Exception unused) {
            Log.e(GlobalSettings.LOG_TAG, "Exception When Update Local Proposal");
        }
        if (z2) {
            final NetProfile netProfileM7clone = netProfile.m7clone();
            new Thread() { // from class: com.tencent.qnet.profile.ProposalManager.4
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    if (PersonalNetProposal.UpdateProposalToServer(ProposalManager.this.proposalUser, netProfileM7clone)) {
                        return;
                    }
                    Log.e(GlobalSettings.LOG_TAG, "Failed To Update Remote Proposal");
                }
            }.start();
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.tencent.qnet.profile.ProposalManager$5] */
    public void AddProposal(NetProfile netProfile) {
        if (!this.myProposalMap.containsKey(netProfile.ID.trim())) {
            String strTrim = netProfile.ID.trim();
            netProfile.UpdateTime = new Date(System.currentTimeMillis());
            this.myProposalMap.put(strTrim, netProfile);
        }
        if (this.proposalUser == null || this.proposalUser.trim().equals("")) {
            return;
        }
        try {
            this.xmlParser.writeProposalParamsToCache(GetProposal());
        } catch (Exception unused) {
            Log.e(GlobalSettings.LOG_TAG, "Failed To Add Remote Proposal");
        }
        if (this.bSynMode) {
            final NetProfile netProfileM7clone = netProfile.m7clone();
            new Thread() { // from class: com.tencent.qnet.profile.ProposalManager.5
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    if (PersonalNetProposal.AddProposalToServer(ProposalManager.this.proposalUser, netProfileM7clone)) {
                        return;
                    }
                    Log.e(GlobalSettings.LOG_TAG, "Failed To Add Remote Proposal");
                }
            }.start();
        }
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [com.tencent.qnet.profile.ProposalManager$6] */
    public void DeleteProposal(final String str) {
        if (str == null || str.trim().equals("")) {
            return;
        }
        if (this.myProposalMap.containsKey(str.trim())) {
            this.myProposalMap.remove(str.trim());
        }
        if (this.proposalUser == null || this.proposalUser.trim().equals("")) {
            return;
        }
        try {
            this.xmlParser.writeProposalParamsToCache(GetProposal());
        } catch (Exception unused) {
            Log.e(GlobalSettings.LOG_TAG, "Failed To Add Remove Proposal");
        }
        if (this.bSynMode) {
            new Thread() { // from class: com.tencent.qnet.profile.ProposalManager.6
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    if (PersonalNetProposal.DeleteProposalToServer(ProposalManager.this.proposalUser, str)) {
                        return;
                    }
                    Log.e(GlobalSettings.LOG_TAG, "Failed To Del Remote Proposal");
                }
            }.start();
        }
    }

    public NetProfile GetProposalById(String str) {
        if (str == null || str.trim().equals("") || !this.myProposalMap.containsKey(str)) {
            return null;
        }
        return this.myProposalMap.get(str).m7clone();
    }

    public void Clear() {
        this.bLoadLocalProposal = false;
        this.proposalUser = "";
        this.myProposalMap.clear();
        this.myProposalMap = null;
        if (this.xmlParser != null) {
            try {
                this.xmlParser.deleteTemplateXml();
            } catch (Exception unused) {
                Log.e(GlobalSettings.LOG_TAG, "Faild To Delete Cache Files");
            }
        }
        this.xmlParser = null;
        ClearLocalProposalCache();
        proposalManager = null;
    }
}
