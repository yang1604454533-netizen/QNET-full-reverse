package com.tencent.qnet.ui.profile;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.tencent.qim.R;
import com.tencent.qnet.net.NetProfile;
import com.tencent.qnet.profile.ProposalManager;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NetEditActivity extends AppCompatActivity {
    public static final int ACTIVITY_CODE = 2343;
    List<NetEditBaseItem> m_listItems = new ArrayList();
    NetProfile m_profile = null;
    boolean m_new = false;
    boolean m_select = false;

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        NetProfile netProfileCreateDefault = NetProfile.createDefault(this);
        updateProfileFromUI(netProfileCreateDefault);
        if (!isProfileChanged(this.m_profile, netProfileCreateDefault)) {
            super.onBackPressed();
        } else {
            new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.msg_save_profile)).setPositiveButton(getResources().getString(R.string.dialog_btn_OK), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditActivity.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    NetEditActivity.this.saveProfile(NetEditActivity.this);
                }
            }).setNegativeButton(getResources().getString(R.string.dialog_btn_cancel), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditActivity.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    NetEditActivity.this.finish();
                }
            }).create().show();
        }
    }

    private boolean isProfileChanged(NetProfile netProfile, NetProfile netProfile2) {
        if (netProfile == null || netProfile2 == null || !netProfile.Name.equals(netProfile2.Name)) {
            return true;
        }
        List<String> sortedList = NetProfile.getSortedList();
        for (int i = 0; i < sortedList.size(); i++) {
            String str = sortedList.get(i);
            if (!netProfile.getParamValue(str).equals(netProfile2.getParamValue(str))) {
                return true;
            }
        }
        return false;
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_net_edit);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        initNetProfileUI();
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private void initNetProfileUI() {
        boolean z;
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra("ID");
        this.m_select = intent.getBooleanExtra("Select", false);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.btn_save);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.btn_delete);
        LinearLayout linearLayout3 = (LinearLayout) findViewById(R.id.net_edit_root);
        LinearLayout linearLayout4 = (LinearLayout) findViewById(R.id.layoutProfileName);
        ListView listView = (ListView) findViewById(R.id.listViewEdit);
        EditText editText = (EditText) findViewById(R.id.txtProfileName);
        Resources resources = getResources();
        this.m_profile = ProposalManager.GetInstance().GetProposalById(stringExtra);
        if (this.m_profile != null) {
            z = this.m_profile.Preset;
            editText.setText(this.m_profile.Name);
            setTitle(this.m_profile.Name);
            if (z) {
                linearLayout3.removeView(linearLayout);
            }
            setEnabledAll(linearLayout4, !z);
            setEnabledAll(listView, !z);
        } else {
            this.m_new = true;
            this.m_profile = NetProfile.createDefault(this);
            editText.setText(this.m_profile.Name);
            setTitle(resources.getString(R.string.title_create_new_config));
            linearLayout3.removeView(linearLayout2);
            z = false;
        }
        List<String> sortedList = NetProfile.getSortedList();
        for (int i = 0; i < sortedList.size(); i++) {
            String str = sortedList.get(i);
            this.m_listItems.add(new NetEditTextItem(str, this.m_profile.getParam(str).getIntValue()));
        }
        NetEditAdapter netEditAdapter = new NetEditAdapter(this, this.m_listItems);
        netEditAdapter.setEnabled(z ? false : true);
        listView.setAdapter((ListAdapter) netEditAdapter);
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NetEditActivity.this.saveProfile(view.getContext());
            }
        });
        linearLayout2.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activity activity = (Activity) view.getContext();
                if (activity != null) {
                    if (NetEditActivity.this.m_select) {
                        new AlertDialog.Builder(activity).setMessage(NetEditActivity.this.getResources().getString(R.string.msg_cannot_delete_profile)).setPositiveButton(view.getResources().getString(R.string.dialog_btn_OK), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.profile.NetEditActivity.4.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i2) {
                            }
                        }).create().show();
                        return;
                    }
                    ProposalManager.GetInstance().DeleteProposal(NetEditActivity.this.m_profile.ID);
                    Intent intent2 = new Intent();
                    intent2.putExtra("ID", NetEditActivity.this.m_profile.ID);
                    activity.setResult(-1, intent2);
                    activity.finish();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveProfile(Context context) {
        Activity activity = (Activity) context;
        if (activity != null) {
            updateProfileFromUI(this.m_profile);
            if (this.m_new) {
                ProposalManager.GetInstance().AddProposal(this.m_profile);
            } else {
                ProposalManager.GetInstance().EditProposal(this.m_profile);
            }
            Intent intent = new Intent();
            intent.putExtra("ID", this.m_profile.ID);
            activity.setResult(-1, intent);
            activity.finish();
        }
    }

    private static void setEnabledAll(View view, boolean z) {
        view.setFocusable(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                setEnabledAll(viewGroup.getChildAt(i), z);
            }
        }
    }

    private void updateProfileFromUI(NetProfile netProfile) {
        getResources();
        netProfile.Name = ((EditText) findViewById(R.id.txtProfileName)).getText().toString();
        for (int i = 0; i < this.m_listItems.size(); i++) {
            NetEditTextItem netEditTextItem = (NetEditTextItem) this.m_listItems.get(i);
            netProfile.getParam(netEditTextItem.getName()).StringValue = Integer.toString(netEditTextItem.getValue());
        }
    }
}
