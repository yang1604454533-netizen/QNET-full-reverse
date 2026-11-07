package com.tencent.qnet.ui;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.support.annotation.RequiresApi;
import android.support.v4.internal.view.SupportMenu;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.qim.R;
import com.tencent.qnet.common.SystemUtil;
import com.tencent.qnet.core.LocalVpnService;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.global.QnetApplication;
import com.tencent.qnet.global.QnetGlobalDefine;
import com.tencent.qnet.global.ServerHelper;
import com.tencent.qnet.net.NetConfigChange;
import com.tencent.qnet.net.NetProfile;
import com.tencent.qnet.net.NetworkConfig;
import com.tencent.qnet.profile.ProposalManager;
import com.tencent.qnet.ui.float_window.FWService;
import com.tencent.qnet.ui.login.LoginActivity;
import com.tencent.qnet.ui.login.manager.LoginManager;
import com.tencent.qnet.ui.profile.NetEditActivity;
import com.tencent.qnet.ui.profile.NetProfileAdapter;
import com.tencent.qnet.ui.profile.NetProfileItem;
import com.tencent.qnet.ui.settings.SettingsActivity;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MainActivity extends AppCompatActivity implements LocalVpnService.onStatusChangedListener {
    private static final int START_VPN_SERVICE_REQUEST_CODE = 2017;
    private static MainActivity mainActivity;
    private Button mButtonTest;
    private boolean mIsRunning;
    private String m_currentEditID;
    private NetProfileItem m_currentSelectedProfile;
    private Menu m_menu;
    ListView m_profileListView;
    public Handler m_profile_sync_handler;
    private List<NetProfile> profileList;

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        return i == 4;
    }

    @Override // com.tencent.qnet.core.LocalVpnService.onStatusChangedListener
    @SuppressLint({"DefaultLocale"})
    public void onLogReceived(String str) {
    }

    public static MainActivity getMainActivity() {
        return mainActivity;
    }

    public MainActivity() {
        mainActivity = this;
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_main);
        initGlobalSettings();
        initLogin();
        initUI();
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == START_VPN_SERVICE_REQUEST_CODE) {
            if (i2 == -1) {
                startVPNService();
                return;
            } else {
                setButtonTextStatus(false);
                return;
            }
        }
        if (i != 2081) {
            if (i == 2343 && i2 == -1) {
                onEditActivityReturn(intent);
                return;
            }
            return;
        }
        if (i2 == -1) {
            intent.getStringExtra("ProxyProgram");
            updateTestProgramUI();
        }
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.menu_main, menu);
        this.m_menu = menu;
        menu.findItem(R.id.menu_login_out).setTitle(String.format("%s(%s)", getResources().getString(R.string.menu_logout), GlobalSettings.getInstance().getUserName()));
        return true;
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_quit) {
            if (LocalVpnService.IsRunning) {
                LocalVpnService.IsRunning = false;
            }
            finishAndRemoveTask();
            return true;
        }
        if (itemId == R.id.menu_settings) {
            startActivity(new Intent(this, (Class<?>) SettingsActivity.class));
            return true;
        }
        if (itemId == R.id.menu_login_out) {
            if (true == LocalVpnService.IsRunning) {
                new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.menu_logout_tips)).setPositiveButton(getResources().getString(R.string.dialog_btn_OK), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.MainActivity.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                    }
                }).create().show();
            } else {
                LoginManager.logOut(this);
                ProposalManager.GetInstance().Clear();
                Intent intent = new Intent();
                intent.setClass(this, LoginActivity.class);
                startActivity(intent);
                finish();
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.tencent.qnet.core.LocalVpnService.onStatusChangedListener
    public void onStatusChanged(String str, Boolean bool) {
        UpdateVPNStatusChanged(bool.booleanValue());
        onLogReceived(str);
        Toast.makeText(this, str, 0).show();
        if (bool.booleanValue()) {
            startActivity(getPackageManager().getLaunchIntentForPackage(AppProxyManager.Instance.getProxyApp().getPkgName()));
            startService(new Intent(this, (Class<?>) FWService.class));
        } else {
            FWService.getInstance().stopSelf();
        }
    }

    private void UpdateVPNStatusChanged(boolean z) {
        setButtonTextStatus(z);
    }

    @Override // android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
    }

    @Override // android.support.v7.app.AppCompatActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        LocalVpnService.removeOnStatusChangedListener(this);
        super.onDestroy();
    }

    private void onEditActivityReturn(Intent intent) {
        this.m_currentEditID = intent.getExtras().getString("ID");
        refreshNetProfilesList();
    }

    private void onNetConfigChanged(boolean z) {
        UpdateNetworkConfig3();
        if (LocalVpnService.IsRunning) {
            Toast.makeText(this, String.format("[%s] %s", this.m_currentSelectedProfile.getProfile().Name, getResources().getString(R.string.toast_net_config_activated)), 0).show();
        }
        if (FWService.getInstance() == null || !z) {
            return;
        }
        FWService.getInstance().onProfileChanged();
    }

    private void updateTestProgramUI() {
        ImageView imageView = (ImageView) findViewById(R.id.imageViewPkg);
        TextView textView = (TextView) findViewById(R.id.textViewPkg);
        AppInfo proxyApp = AppProxyManager.Instance.getProxyApp();
        if (proxyApp != null) {
            textView.setText(String.format("%s >", proxyApp.getAppLabel()));
            if (proxyApp.getAppIcon() == null) {
                try {
                    imageView.setImageDrawable(getPackageManager().getApplicationIcon(getPackageManager().getApplicationInfo(proxyApp.getPkgName(), 0)));
                    return;
                } catch (PackageManager.NameNotFoundException e) {
                    e.printStackTrace();
                    return;
                }
            }
            imageView.setImageDrawable(proxyApp.getAppIcon());
            return;
        }
        imageView.setImageDrawable(getResources().getDrawable(android.R.drawable.sym_def_app_icon, null));
        textView.setText(String.format("%s >", getResources().getString(R.string.lable_click_select_progress)));
    }

    private void initUI() {
        initReleaseMode();
        initSyncHandler();
        initToolbar();
        initAppManager();
        initButtonTest();
        initNetTemplateUI();
        initService();
    }

    private void initReleaseMode() {
        if (QnetApplication.ReleaseMode()) {
            return;
        }
        TextView textView = (TextView) findViewById(R.id.toolbar_title);
        textView.setText(String.format("%s[test]", textView.getText()));
        textView.setTextColor(SupportMenu.CATEGORY_MASK);
    }

    private void initService() {
        LocalVpnService.addOnStatusChangedListener(this);
    }

    private void initSyncHandler() {
        this.m_profile_sync_handler = new Handler() { // from class: com.tencent.qnet.ui.MainActivity.2
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i = message.arg1;
                String str = (String) message.obj;
                if (i == QnetGlobalDefine.QnetMessageType.MS_NET_PROPOSAL_LOADED.ordinal()) {
                    MainActivity.this.refreshNetProfilesList();
                } else if (i == QnetGlobalDefine.QnetMessageType.MS_NET_PROPOSAL_LOAD_FAILED.ordinal()) {
                    MainActivity.this.showNormalDialog(str);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showNormalDialog(String str) {
        String string;
        String string2 = getResources().getString(R.string.profileDownLoadTitle);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(string2);
        if (str != null && str.trim().equals(QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_TIMEOUT.toString())) {
            string = getResources().getString(R.string.profileDownLoadTimeOutTips);
        } else if (str == null || str.trim().equals(QnetGlobalDefine.QNET_HTTP_RESP_TYPE.HTTP_RESP_UNDEFINED.toString())) {
            string = getResources().getString(R.string.profileDownLoadHttpErrorTips);
        } else {
            string = getResources().getString(R.string.profileDownLoadHttpErrorTips);
        }
        builder.setMessage(string);
        builder.setPositiveButton(getResources().getString(R.string.versionUpdateConfirm), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.MainActivity.3
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.finishAndRemoveTask();
            }
        });
        builder.show();
    }

    private void initButtonTest() {
        this.mButtonTest = (Button) findViewById(R.id.buttonTest);
        this.mButtonTest.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.MainActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity.this.onButtonTestClicked();
            }
        });
        setButtonTextStatus(LocalVpnService.IsRunning);
    }

    private void initAppManager() {
        new AppProxyManager(this);
        updateTestProgramUI();
        findViewById(R.id.layout_process).setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.MainActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LocalVpnService.IsRunning) {
                    new AlertDialog.Builder(MainActivity.this).setMessage(MainActivity.this.getResources().getString(R.string.msg_vpn_is_running)).setPositiveButton(view.getResources().getString(R.string.dialog_btn_OK), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.MainActivity.5.1
                        @Override // android.content.DialogInterface.OnClickListener
                        public void onClick(DialogInterface dialogInterface, int i) {
                        }
                    }).create().show();
                } else {
                    MainActivity.this.startActivityForResult(new Intent(MainActivity.this, (Class<?>) AppManager.class), AppManager.REQUEST_CODE);
                }
            }
        });
    }

    private void initToolbar() {
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        getSupportActionBar().setDisplayShowTitleEnabled(false);
    }

    private void setButtonTextStatus(boolean z) {
        this.mIsRunning = z;
        if (z) {
            this.mButtonTest.setText(getResources().getString(R.string.button_stop_test));
        } else {
            this.mButtonTest.setText(getResources().getString(R.string.button_start_test));
        }
    }

    @RequiresApi(api = 19)
    private static boolean checkOps(Context context) {
        Method method;
        try {
            Object systemService = context.getSystemService("appops");
            return (systemService == null || (method = systemService.getClass().getMethod("checkOp", Integer.TYPE, Integer.TYPE, String.class)) == null || ((Integer) method.invoke(systemService, 24, Integer.valueOf(Binder.getCallingUid()), context.getPackageName())).intValue() != 0) ? false : true;
        } catch (Exception unused) {
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    private boolean check_overlays_privilege() {
        if (Build.VERSION.SDK_INT >= 23) {
            if (!Settings.canDrawOverlays(this)) {
                Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
                Toast.makeText(this, "需要取得权限以使用悬浮窗", 0).show();
                startActivity(intent);
                return false;
            }
        } else if (Build.VERSION.SDK_INT >= 19 && !checkOps(this)) {
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onButtonTestClicked() {
        if (AppProxyManager.Instance.getProxyApp() == null) {
            new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.msg_select_progress)).setPositiveButton(getResources().getString(R.string.dialog_btn_OK), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.MainActivity.6
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).create().show();
            return;
        }
        if (this.m_currentSelectedProfile == null) {
            new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.msg_select_profile)).setPositiveButton(getResources().getString(R.string.dialog_btn_OK), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.MainActivity.7
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                }
            }).create().show();
            return;
        }
        if (check_overlays_privilege()) {
            this.mIsRunning = !this.mIsRunning;
            if (LocalVpnService.IsRunning != this.mIsRunning) {
                if (this.mIsRunning) {
                    Intent intentPrepare = LocalVpnService.prepare(this);
                    if (intentPrepare == null) {
                        startVPNService();
                        return;
                    } else {
                        startActivityForResult(intentPrepare, START_VPN_SERVICE_REQUEST_CODE);
                        return;
                    }
                }
                LocalVpnService.IsRunning = false;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.tencent.qnet.ui.MainActivity$8] */
    private void startVPNService() {
        UpdateNetworkConfig3();
        startService(new Intent(this, (Class<?>) LocalVpnService.class));
        new Thread() { // from class: com.tencent.qnet.ui.MainActivity.8
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() throws Throwable {
                try {
                    Thread.sleep(3000L);
                } catch (Exception e) {
                    Log.e(GlobalSettings.LOG_TAG, e.getMessage());
                }
                ServerHelper.reportStartInfo(MainActivity.this.m_currentSelectedProfile.getProfile().Name);
            }
        }.start();
    }

    private void UpdateNetworkConfig3() {
        try {
            NetworkConfig networkConfigInstnace = NetworkConfig.Instnace();
            if (this.m_currentSelectedProfile != null) {
                NetProfile profile = this.m_currentSelectedProfile.getProfile();
                List<String> sortedList = NetProfile.getSortedList();
                for (int i = 0; i < sortedList.size(); i++) {
                    String str = sortedList.get(i);
                    Field field = NetworkConfig.class.getField(str);
                    if (field != null) {
                        field.setInt(networkConfigInstnace, profile.getParamIntValue(str));
                    }
                }
                NetConfigChange.Instance.setCurrentProfile(profile);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public NetProfileItem getCurrentSelectedProfile() {
        return this.m_currentSelectedProfile;
    }

    public View getCurrentSelectConfigView() {
        if (this.m_currentSelectedProfile == null) {
            return null;
        }
        return this.m_currentSelectedProfile.getView();
    }

    private void initNetTemplateUI() {
        this.m_profileListView = (ListView) findViewById(R.id.net_config_list);
        this.m_profileListView.setEmptyView(findViewById(android.R.id.empty));
        refreshNetProfilesList();
        this.m_profileListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.tencent.qnet.ui.MainActivity.9
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                NetProfileItem netProfileItem = (NetProfileItem) ((NetProfileAdapter) MainActivity.this.m_profileListView.getAdapter()).getItem(i);
                if (MainActivity.this.m_currentSelectedProfile == null) {
                    MainActivity.this.onNetProfileChanged(netProfileItem, true);
                } else if (view != MainActivity.this.m_currentSelectedProfile.getView()) {
                    MainActivity.this.onNetProfileChanged(netProfileItem, true);
                }
            }
        });
        ((LinearLayout) findViewById(R.id.btnAddProfile)).setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.MainActivity.10
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MainActivity mainActivity2 = MainActivity.this;
                Intent intent = new Intent(mainActivity2, (Class<?>) NetEditActivity.class);
                intent.putExtra("ID", "");
                intent.putExtra("Select", false);
                mainActivity2.startActivityForResult(intent, NetEditActivity.ACTIVITY_CODE);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void refreshNetProfilesList() {
        if (this.profileList != null) {
            this.profileList.clear();
        }
        this.profileList = ProposalManager.GetInstance().GetProposal();
        List<NetProfileItem> listCovertToProfileItemList = NetProfileAdapter.CovertToProfileItemList(this.profileList);
        NetProfileAdapter netProfileAdapter = (NetProfileAdapter) this.m_profileListView.getAdapter();
        if (netProfileAdapter != null) {
            netProfileAdapter.setItems(listCovertToProfileItemList);
        } else {
            netProfileAdapter = new NetProfileAdapter(this, listCovertToProfileItemList);
        }
        this.m_profileListView.setAdapter((ListAdapter) netProfileAdapter);
        if (FWService.getInstance() != null) {
            FWService.getInstance().onProfileChanged();
        }
    }

    public void updateProfileSelected(NetProfileItem netProfileItem) {
        if (netProfileItem.getProfile().Selected) {
            if (this.m_currentSelectedProfile != null) {
                setProfileSelected(this.m_currentSelectedProfile.getView(), false);
            }
            this.m_currentSelectedProfile = netProfileItem;
            setProfileSelected(this.m_currentSelectedProfile.getView(), true);
            if (this.m_currentEditID == null || !this.m_currentEditID.equals(this.m_currentSelectedProfile.getProfile().ID)) {
                return;
            }
            onNetConfigChanged(true);
            return;
        }
        setProfileSelected(netProfileItem.getView(), false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onNetProfileChanged(NetProfileItem netProfileItem, boolean z) {
        if (this.m_currentSelectedProfile != null) {
            this.m_currentSelectedProfile.getProfile().Selected = false;
            ProposalManager.GetInstance().EditProposal(this.m_currentSelectedProfile.getProfile(), false, true);
            setProfileSelected(this.m_currentSelectedProfile.getView(), false);
        }
        this.m_currentSelectedProfile = netProfileItem;
        this.m_currentSelectedProfile.getProfile().Selected = true;
        ProposalManager.GetInstance().EditProposal(this.m_currentSelectedProfile.getProfile(), false, true);
        setProfileSelected(this.m_currentSelectedProfile.getView(), true);
        onNetConfigChanged(z);
    }

    private void setProfileSelected(View view, boolean z) {
        if (view != null) {
            TextView textView = (TextView) view.findViewById(R.id.template_name);
            TextView textView2 = (TextView) view.findViewById(R.id.template_desc);
            View viewFindViewById = view.findViewById(R.id.select_indicator);
            int color = getResources().getColor(R.color.colorPrimary);
            textView.setTextColor(z ? color : getResources().getColor(android.R.color.tab_indicator_text));
            textView2.setTextColor(z ? color : getResources().getColor(android.R.color.darker_gray));
            if (!z) {
                color = getResources().getColor(android.R.color.transparent);
            }
            viewFindViewById.setBackgroundColor(color);
        }
    }

    public void profileChangedByFW(String str, boolean z) {
        List<NetProfileItem> items = ((NetProfileAdapter) this.m_profileListView.getAdapter()).getItems();
        for (int i = 0; i < items.size(); i++) {
            NetProfileItem netProfileItem = items.get(i);
            if (netProfileItem.getProfile().ID.equals(str)) {
                if (this.m_currentSelectedProfile != null) {
                    this.m_currentSelectedProfile.getProfile().Selected = false;
                    setProfileSelected(this.m_currentSelectedProfile.getView(), false);
                }
                onNetProfileChanged(netProfileItem, z);
                return;
            }
        }
    }

    private void initLogin() {
        reportLogin();
        checkVersion();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.tencent.qnet.ui.MainActivity$11] */
    private void checkVersion() {
        new Thread() { // from class: com.tencent.qnet.ui.MainActivity.11
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                ServerHelper.QNET_SERVER_IP = ServerHelper.getIPArrFromHost();
                final int qnetMinVersion = ServerHelper.getQnetMinVersion();
                MainActivity.this.runOnUiThread(new Runnable() { // from class: com.tencent.qnet.ui.MainActivity.11.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (qnetMinVersion <= 0) {
                                MainActivity.this.showCheckVersionDialog(MainActivity.this.getResources().getString(R.string.versionUpdateHttpErrorTips));
                                return;
                            }
                            if (qnetMinVersion > SystemUtil.getAppVersionInfo(QnetApplication.getContext()).versionCode) {
                                MainActivity.this.showCheckVersionDialog(MainActivity.this.getResources().getString(R.string.versionUpdateTips));
                                return;
                            }
                            if (!ProposalManager.GetInstance().IsProposalLoaded()) {
                                ProposalManager.GetInstance().LoadLocalProposal();
                            }
                            ProposalManager.GetInstance().SetProposalUser(GlobalSettings.getInstance().getUserName());
                            ProposalManager.GetInstance().DownLoadMyProposals();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                });
            }
        }.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showCheckVersionDialog(String str) {
        String string = getResources().getString(R.string.versionUpdateTitle);
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(string);
        builder.setMessage(str);
        builder.setPositiveButton(getResources().getString(R.string.versionUpdateConfirm), new DialogInterface.OnClickListener() { // from class: com.tencent.qnet.ui.MainActivity.12
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                MainActivity.this.finishAndRemoveTask();
            }
        });
        builder.show();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.tencent.qnet.ui.MainActivity$13] */
    private void reportLogin() {
        new Thread() { // from class: com.tencent.qnet.ui.MainActivity.13
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    String userName = GlobalSettings.getInstance().getUserName();
                    Date date = new Date();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
                    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                    String str = simpleDateFormat.format(date);
                    String str2 = simpleDateFormat2.format(date);
                    String strValueOf = String.valueOf(SystemUtil.getAppVersionInfo(QnetApplication.getContext()).versionCode);
                    String lastLoginDate = GlobalSettings.getInstance().getLastLoginDate();
                    if ((lastLoginDate.isEmpty() || !str.equals(lastLoginDate)) ? ServerHelper.reportUserInfo(userName, str2, strValueOf) : false) {
                        GlobalSettings.getInstance().setLastLoginDate(str);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }.start();
    }

    private void initGlobalSettings() {
        try {
            GlobalSettings.getInstance().appVersion = SystemUtil.getAppVersionInfo(QnetApplication.getContext()).versionName;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
