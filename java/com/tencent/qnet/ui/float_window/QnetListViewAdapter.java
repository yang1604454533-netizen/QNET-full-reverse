package com.tencent.qnet.ui.float_window;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.tencent.qim.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class QnetListViewAdapter extends BaseAdapter {
    private int bg_selected_color;
    private ColorStateList colors;
    private int defaultSelection = -1;
    private Context m_context;
    private List<String> m_data;
    private int text_selected_color;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public QnetListViewAdapter(Context context, List<String> list) {
        this.m_context = null;
        this.m_context = context;
        this.m_data = list;
        Resources resources = this.m_context.getResources();
        this.text_selected_color = resources.getColor(R.color.fw_text_pressed);
        this.bg_selected_color = resources.getColor(R.color.fw_bg_selected);
        this.colors = this.m_context.getResources().getColorStateList(R.color.listview_text_color_selector);
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (this.m_data == null) {
            return null;
        }
        return this.m_data.get(i);
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.m_data == null) {
            return 0;
        }
        return this.m_data.size();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate;
        ViewHolder viewHolder;
        if (view == null) {
            viewHolder = new ViewHolder();
            viewInflate = LayoutInflater.from(this.m_context).inflate(R.layout.layout_fw_listview_item, viewGroup, false);
            viewHolder.txt_item = (TextView) viewInflate.findViewById(R.id.txt_item);
            viewInflate.setTag(viewHolder);
        } else {
            viewInflate = view;
            viewHolder = (ViewHolder) view.getTag();
        }
        viewHolder.txt_item.setText(getItem(i).toString());
        if (i == this.defaultSelection) {
            viewHolder.txt_item.setTextColor(this.text_selected_color);
            viewInflate.setBackgroundColor(this.bg_selected_color);
        } else {
            viewHolder.txt_item.setTextColor(this.colors);
            viewInflate.setBackgroundResource(R.drawable.fw_listview_color_selector);
        }
        return viewInflate;
    }

    class ViewHolder {
        TextView txt_item;

        ViewHolder() {
        }
    }

    public void setSelectPosition(int i) {
        if (i < 0 || i > this.m_data.size()) {
            return;
        }
        this.defaultSelection = i;
        notifyDataSetChanged();
    }
}
