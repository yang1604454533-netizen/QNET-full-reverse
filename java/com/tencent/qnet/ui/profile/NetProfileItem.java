package com.tencent.qnet.ui.profile;

import android.view.View;
import com.tencent.qnet.net.NetProfile;

/* JADX INFO: loaded from: classes.dex */
public class NetProfileItem {
    NetProfile m_profile;
    View m_view;

    public NetProfileItem(NetProfile netProfile) {
        this.m_profile = netProfile;
    }

    public NetProfile getProfile() {
        return this.m_profile;
    }

    public void setProfile(NetProfile netProfile) {
        this.m_profile = netProfile;
    }

    public View getView() {
        return this.m_view;
    }

    public void setView(View view) {
        this.m_view = view;
    }
}
