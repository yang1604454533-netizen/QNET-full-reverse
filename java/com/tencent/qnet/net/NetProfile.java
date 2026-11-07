package com.tencent.qnet.net;

import android.content.Context;
import android.content.res.Resources;
import com.tencent.qim.R;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class NetProfile implements Cloneable {
    public String Desc;
    public String ID;
    public String Name;
    public boolean Preset;
    public boolean Selected;
    public Date UpdateTime;
    private HashMap<String, Param> m_params = new HashMap<>();
    private static List<String> s_sortedParamList = new ArrayList();
    private static NetProfile s_default_profile = null;

    public class Param implements Cloneable {
        public String Name;
        public String StringValue;
        public Change m_change;

        public class Change implements Cloneable {
            public int Delta;
            public int Interval;
            public int Max;

            public Change() {
            }

            /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
            public Change m9clone() {
                Change change = Param.this.new Change();
                change.Delta = this.Delta;
                change.Max = this.Max;
                change.Interval = this.Interval;
                return change;
            }
        }

        public Param() {
        }

        public Change getChange() {
            return this.m_change;
        }

        public void setChange(int i, int i2, int i3) {
            this.m_change = new Change();
            this.m_change.Delta = i;
            this.m_change.Interval = i2;
            this.m_change.Max = i3;
        }

        public int getIntValue() {
            try {
                return Integer.parseInt(this.StringValue);
            } catch (Exception unused) {
                return 0;
            }
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public Param m8clone() {
            Param param = NetProfile.this.new Param();
            param.Name = this.Name;
            param.StringValue = this.StringValue;
            if (this.m_change != null) {
                param.m_change = this.m_change.m9clone();
            }
            return param;
        }
    }

    private NetProfile() {
    }

    public static List<String> getSortedList() {
        return s_sortedParamList;
    }

    public static void initDefault(NetProfile netProfile, List<String> list) {
        s_default_profile = netProfile;
        s_sortedParamList = list;
    }

    public static NetProfile createNew() {
        NetProfile netProfile = new NetProfile();
        netProfile.ID = UUID.randomUUID().toString();
        return netProfile;
    }

    public static NetProfile createDefault(Context context) {
        Resources resources = context.getResources();
        NetProfile netProfileM7clone = s_default_profile.m7clone();
        netProfileM7clone.ID = UUID.randomUUID().toString();
        netProfileM7clone.Name = resources.getString(R.string.default_profile_name);
        netProfileM7clone.Desc = resources.getString(R.string.user_custom_desc);
        netProfileM7clone.UpdateTime = new Date();
        return netProfileM7clone;
    }

    public Param addParam(String str, String str2) {
        Param param = new Param();
        param.Name = str;
        param.StringValue = str2;
        this.m_params.put(param.Name, param);
        return param;
    }

    public int getParamIntValue(String str) {
        try {
            return Integer.parseInt(getParamValue(str));
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    public String getParamValue(String str) {
        return this.m_params.containsKey(str) ? this.m_params.get(str).StringValue : "";
    }

    public void setParamValue(String str, String str2) {
        if (this.m_params.containsKey(str)) {
            this.m_params.get(str).StringValue = str2;
        } else {
            addParam(str, str2);
        }
    }

    public void setParamIntValue(String str, int i) {
        setParamValue(str, Integer.toString(i));
    }

    public Param getParam(String str) {
        return this.m_params.get(str);
    }

    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public NetProfile m7clone() {
        NetProfile netProfile = new NetProfile();
        netProfile.Name = this.Name;
        netProfile.ID = this.ID;
        netProfile.Desc = this.Desc;
        netProfile.Selected = this.Selected;
        netProfile.Preset = this.Preset;
        netProfile.UpdateTime = (Date) this.UpdateTime.clone();
        for (String str : this.m_params.keySet()) {
            netProfile.m_params.put(str, this.m_params.get(str).m8clone());
        }
        return netProfile;
    }
}
