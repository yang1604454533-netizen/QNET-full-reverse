package com.tencent.qnet.ui;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qim.R;

/* JADX INFO: compiled from: AppManager.java */
/* JADX INFO: loaded from: classes.dex */
class AppViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {
    private ImageView icon;
    private AppInfo item;
    private TextView textID;
    private TextView textName;

    AppViewHolder(View view) {
        super(view);
        this.icon = (ImageView) this.itemView.findViewById(R.id.itemicon);
        this.textName = (TextView) this.itemView.findViewById(R.id.textViewName);
        this.textID = (TextView) this.itemView.findViewById(R.id.textViewID);
        view.setOnClickListener(this);
    }

    void bind(AppInfo appInfo) {
        this.item = appInfo;
        this.icon.setImageDrawable(appInfo.getAppIcon());
        this.textName.setText(appInfo.getAppLabel());
        this.textID.setText(appInfo.getPkgName());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        AppProxyManager.Instance.setProxyApp(this.item.getPkgName());
        Activity activity = (Activity) view.getContext();
        if (activity != null) {
            Intent intent = new Intent();
            intent.putExtra("ProxyProgram", this.item.getPkgName());
            activity.setResult(-1, intent);
            activity.finish();
        }
    }
}
