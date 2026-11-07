package com.tencent.qnet.ui.profile;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.tencent.qim.R;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NetEditAdapter extends BaseAdapter {
    private Context context;
    private List<NetEditBaseItem> items;
    private boolean m_enabled = true;

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return i;
    }

    public NetEditAdapter(Context context, List<NetEditBaseItem> list) {
        this.context = context;
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
        return getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return this.m_enabled;
    }

    public void setEnabled(boolean z) {
        this.m_enabled = z;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        NetEditBaseItem netEditBaseItem = (NetEditBaseItem) getItem(i);
        if (view == null) {
            if (netEditBaseItem.getView() != null) {
                return netEditBaseItem.getView();
            }
            if (netEditBaseItem.isTypeEdit()) {
                view = createEditView(viewGroup, netEditBaseItem);
            } else if (netEditBaseItem.isTypeProtocol()) {
                view = createProtocolView(viewGroup, netEditBaseItem);
            } else if (netEditBaseItem.isTypeConDrop()) {
                view = createConDropView(viewGroup, netEditBaseItem);
            }
        }
        setEnabledAll(view, this.m_enabled);
        netEditBaseItem.setView(view);
        return view;
    }

    @NonNull
    private View createConDropView(ViewGroup viewGroup, NetEditBaseItem netEditBaseItem) {
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.layout_net_con_drop_item, viewGroup, false);
        ((TextView) viewInflate.findViewById(R.id.edit_name)).setText(netEditBaseItem.getName());
        ((TextView) viewInflate.findViewById(R.id.editTextValue)).setText(((NetEditConDropItem) netEditBaseItem).toString());
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListView listView = (ListView) view.getParent();
                final NetEditConDropItem netEditConDropItem = (NetEditConDropItem) ((NetEditAdapter) listView.getAdapter()).getItem(listView.getPositionForView(view));
                AlertDialog.Builder builder = new AlertDialog.Builder(view.getContext());
                builder.setTitle(netEditConDropItem.getName()).setView(R.layout.layout_dialog_condrop);
                builder.setPositiveButton(view.getResources().getString(R.string.dialog_btn_OK), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditAdapter.1.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        AlertDialog alertDialog = (AlertDialog) dialogInterface;
                        EditText editText = (EditText) alertDialog.findViewById(R.id.edit_pass);
                        EditText editText2 = (EditText) alertDialog.findViewById(R.id.edit_drop);
                        netEditConDropItem.setItemValue(Integer.parseInt(editText.getText().toString()), Integer.parseInt(editText2.getText().toString()));
                        ((TextView) netEditConDropItem.getView().findViewById(R.id.editTextValue)).setText(netEditConDropItem.toString());
                        dialogInterface.toString();
                    }
                });
                builder.setNegativeButton(view.getResources().getString(R.string.dialog_btn_cancel), (DialogInterface.OnClickListener) null);
                AlertDialog alertDialogCreate = builder.create();
                final int pass = netEditConDropItem.getPass();
                final int drop = netEditConDropItem.getDrop();
                alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.tencent.qnet.ui.profile.NetEditAdapter.1.2
                    @Override // android.content.DialogInterface.OnShowListener
                    public void onShow(DialogInterface dialogInterface) {
                        AlertDialog alertDialog = (AlertDialog) dialogInterface;
                        EditText editText = (EditText) alertDialog.findViewById(R.id.edit_pass);
                        EditText editText2 = (EditText) alertDialog.findViewById(R.id.edit_drop);
                        editText.setText(String.format("%d", Integer.valueOf(pass)));
                        editText2.setText(String.format("%d", Integer.valueOf(drop)));
                        InputMethodManager inputMethodManager = (InputMethodManager) NetEditAdapter.this.context.getSystemService("input_method");
                        if (inputMethodManager != null) {
                            inputMethodManager.toggleSoftInput(1, 0);
                        }
                        editText.selectAll();
                    }
                });
                alertDialogCreate.show();
            }
        });
        return viewInflate;
    }

    @NonNull
    private View createEditView(ViewGroup viewGroup, NetEditBaseItem netEditBaseItem) {
        NetEditTextItem netEditTextItem = (NetEditTextItem) netEditBaseItem;
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.layout_net_edit_item, viewGroup, false);
        TextView textView = (TextView) viewInflate.findViewById(R.id.edit_name);
        final String stringResourceByName = getStringResourceByName(this.context, netEditTextItem.getName());
        textView.setText(stringResourceByName);
        ((TextView) viewInflate.findViewById(R.id.editTextValue)).setText(netEditTextItem.toString());
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditAdapter.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListView listView = (ListView) view.getParent();
                final NetEditTextItem netEditTextItem2 = (NetEditTextItem) ((NetEditAdapter) listView.getAdapter()).getItem(listView.getPositionForView(view));
                AlertDialog.Builder builder = new AlertDialog.Builder(view.getContext());
                builder.setTitle(stringResourceByName).setView(R.layout.layout_dialog_edit);
                builder.setPositiveButton(view.getResources().getString(R.string.dialog_btn_OK), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditAdapter.2.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        int i2;
                        try {
                            i2 = Integer.parseInt(((EditText) ((AlertDialog) dialogInterface).findViewById(R.id.editValue)).getText().toString());
                        } catch (Exception e) {
                            e.printStackTrace();
                            i2 = 0;
                        }
                        netEditTextItem2.setItemValue(i2);
                        ((TextView) netEditTextItem2.getView().findViewById(R.id.editTextValue)).setText(netEditTextItem2.toString());
                        dialogInterface.toString();
                    }
                });
                builder.setNegativeButton(view.getResources().getString(R.string.dialog_btn_cancel), (DialogInterface.OnClickListener) null);
                AlertDialog alertDialogCreate = builder.create();
                final int value = netEditTextItem2.getValue();
                alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.tencent.qnet.ui.profile.NetEditAdapter.2.2
                    @Override // android.content.DialogInterface.OnShowListener
                    public void onShow(DialogInterface dialogInterface) {
                        EditText editText = (EditText) ((AlertDialog) dialogInterface).findViewById(R.id.editValue);
                        editText.setText(String.format("%d", Integer.valueOf(value)));
                        InputMethodManager inputMethodManager = (InputMethodManager) NetEditAdapter.this.context.getSystemService("input_method");
                        if (inputMethodManager != null) {
                            inputMethodManager.toggleSoftInput(1, 0);
                        }
                        editText.selectAll();
                    }
                });
                alertDialogCreate.show();
            }
        });
        return viewInflate;
    }

    @NonNull
    private View createProtocolView(ViewGroup viewGroup, NetEditBaseItem netEditBaseItem) {
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.layout_net_protocol_item, viewGroup, false);
        ((TextView) viewInflate.findViewById(R.id.edit_name)).setText(netEditBaseItem.getName());
        ((TextView) viewInflate.findViewById(R.id.editTextValue)).setText(((NetEditProtocolItem) netEditBaseItem).toString());
        viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditAdapter.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListView listView = (ListView) view.getParent();
                final NetEditProtocolItem netEditProtocolItem = (NetEditProtocolItem) ((NetEditAdapter) listView.getAdapter()).getItem(listView.getPositionForView(view));
                AlertDialog.Builder builder = new AlertDialog.Builder(view.getContext());
                builder.setTitle(netEditProtocolItem.getName()).setView(R.layout.layout_dialog_protocol);
                builder.setPositiveButton(view.getResources().getString(R.string.dialog_btn_OK), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditAdapter.3.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        AlertDialog alertDialog = (AlertDialog) dialogInterface;
                        netEditProtocolItem.setItemValue(((RadioButton) alertDialog.findViewById(((RadioGroup) alertDialog.findViewById(R.id.radiogroup_protocol)).getCheckedRadioButtonId())).getText().toString());
                        ((TextView) netEditProtocolItem.getView().findViewById(R.id.editTextValue)).setText(netEditProtocolItem.toString());
                        dialogInterface.toString();
                    }
                });
                builder.setNegativeButton(view.getResources().getString(R.string.dialog_btn_cancel), (DialogInterface.OnClickListener) null);
                AlertDialog alertDialogCreate = builder.create();
                final String value = netEditProtocolItem.getValue();
                alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.tencent.qnet.ui.profile.NetEditAdapter.3.2
                    @Override // android.content.DialogInterface.OnShowListener
                    public void onShow(DialogInterface dialogInterface) {
                        AlertDialog alertDialog = (AlertDialog) dialogInterface;
                        RadioGroup radioGroup = (RadioGroup) alertDialog.findViewById(R.id.radiogroup_protocol);
                        String[] stringArray = alertDialog.getContext().getResources().getStringArray(R.array.arr_protocols);
                        for (int i = 0; i < stringArray.length; i++) {
                            RadioButton radioButton = new RadioButton(alertDialog.getContext());
                            radioButton.setText(stringArray[i]);
                            if (stringArray[i].equals(value)) {
                                radioButton.setChecked(true);
                            }
                            radioGroup.addView(radioButton);
                        }
                    }
                });
                alertDialogCreate.show();
            }
        });
        return viewInflate;
    }

    private String getStringResourceByName(Context context, String str) {
        int identifier = context.getResources().getIdentifier(String.format("net_title_%s", str), "string", context.getPackageName());
        return identifier == 0 ? str : context.getString(identifier);
    }

    private static void setEnabledAll(View view, boolean z) {
        view.setEnabled(z);
        view.setFocusable(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                setEnabledAll(viewGroup.getChildAt(i), z);
            }
        }
    }
}
