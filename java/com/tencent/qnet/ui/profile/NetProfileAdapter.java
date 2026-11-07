package com.tencent.qnet.ui.profile;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qim.R;
import com.tencent.qnet.net.NetProfile;
import com.tencent.qnet.ui.MainActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NetProfileAdapter extends BaseAdapter {
    private Context context;
    private List<NetProfileItem> items;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return i;
    }

    public NetProfileAdapter(Context context, List<NetProfileItem> list) {
        this.context = context;
        this.items = list;
    }

    public List<NetProfileItem> getItems() {
        return this.items;
    }

    public void setItems(List<NetProfileItem> list) {
        this.items = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.items.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.items.get(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        if (getCount() > 0) {
            return getCount();
        }
        return 1;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        NetProfileItem netProfileItem = (NetProfileItem) getItem(i);
        NetProfile profile = netProfileItem.getProfile();
        final String str = profile.ID;
        if (netProfileItem.getView() != null) {
            return netProfileItem.getView();
        }
        if (view == null) {
            view = LayoutInflater.from(this.context).inflate(R.layout.layout_template_item, viewGroup, false);
        }
        TextView textView = (TextView) view.findViewById(R.id.template_name);
        TextView textView2 = (TextView) view.findViewById(R.id.template_desc);
        textView.setText(profile.Name);
        if (profile.Preset) {
            textView2.setText(String.format("[%s]%s", view.getContext().getResources().getString(R.string.profile_preset), profile.Desc));
        } else {
            textView2.setText(profile.Desc);
        }
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.template_edit);
        if (!linearLayout.hasOnClickListeners()) {
            linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetProfileAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    MainActivity mainActivity = (MainActivity) NetProfileAdapter.this.context;
                    View currentSelectConfigView = mainActivity.getCurrentSelectConfigView();
                    Intent intent = new Intent(mainActivity, (Class<?>) NetEditActivity.class);
                    intent.putExtra("ID", str);
                    intent.putExtra("Select", currentSelectConfigView == view2.getParent());
                    mainActivity.startActivityForResult(intent, NetEditActivity.ACTIVITY_CODE);
                }
            });
        }
        netProfileItem.setView(view);
        MainActivity.getMainActivity().updateProfileSelected(netProfileItem);
        return view;
    }

    public static List<NetProfileItem> CovertToProfileItemList(List<NetProfile> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<NetProfile> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new NetProfileItem(it.next()));
        }
        return arrayList;
    }
}
