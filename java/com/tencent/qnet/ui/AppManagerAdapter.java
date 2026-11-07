package com.tencent.qnet.ui;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.futuremind.recyclerviewfastscroll.SectionTitleProvider;
import com.tencent.qim.R;

/* JADX INFO: compiled from: AppManager.java */
/* JADX INFO: loaded from: classes.dex */
class AppManagerAdapter extends RecyclerView.Adapter<AppViewHolder> implements SectionTitleProvider {
    AppManagerAdapter() {
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public AppViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new AppViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.layout_apps_item, viewGroup, false));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public void onBindViewHolder(AppViewHolder appViewHolder, int i) {
        appViewHolder.bind(AppProxyManager.Instance.mlistAppInfo.get(i));
    }

    @Override // android.support.v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return AppProxyManager.Instance.mlistAppInfo.size();
    }

    @Override // com.futuremind.recyclerviewfastscroll.SectionTitleProvider
    public String getSectionTitle(int i) {
        return AppProxyManager.Instance.mlistAppInfo.get(i).getAppLabel();
    }
}
