package com.tencent.qnet.ui.float_window;

import android.annotation.SuppressLint;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.qim.R;
import com.tencent.qnet.core.LocalVpnService;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.net.NetProfile;
import com.tencent.qnet.net.NetworkConfig;
import com.tencent.qnet.profile.ProposalManager;
import com.tencent.qnet.ui.AppProxyManager;
import com.tencent.qnet.ui.MainActivity;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FWService extends Service implements Runnable {
    private static FWService Instance;
    LinearLayout m_expand;
    LinearLayout m_float_window;
    LinearLayout m_float_window_info;
    WindowManager.LayoutParams m_fw_params;
    WindowManager.LayoutParams m_fw_params_info;
    View m_helperWnd;
    ImageView m_img_expand;
    ImageView m_img_icon;
    ImageView m_img_start;
    LinearLayout m_info_root;
    LinearLayout m_root;
    private Thread m_thread;
    WindowManager m_window_manager;
    private boolean m_status_bar_visible = false;
    private boolean m_is_started = false;
    private boolean m_is_expanded = false;
    boolean m_qnet_activity = false;
    private boolean m_ping_running = false;
    private Thread m_update_ping_thread = new Thread() { // from class: com.tencent.qnet.ui.float_window.FWService.1
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Exception e;
            long jCurrentTimeMillis;
            FWService.this.m_ping_running = true;
            long j = 0;
            while (FWService.this.m_ping_running) {
                try {
                    if (FWService.this.m_float_window_info != null) {
                        jCurrentTimeMillis = System.currentTimeMillis();
                        if (jCurrentTimeMillis - j > 2500) {
                            try {
                                MainActivity.getMainActivity().runOnUiThread(new Runnable() { // from class: com.tencent.qnet.ui.float_window.FWService.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        if (LocalVpnService.Instance == null) {
                                            return;
                                        }
                                        TextView textView = (TextView) FWService.this.m_float_window_info.findViewById(R.id.txt_ping);
                                        int realPing = LocalVpnService.Instance.getRealPing();
                                        int ping = LocalVpnService.Instance.getPing();
                                        if (ping <= 0 || realPing <= 0) {
                                            return;
                                        }
                                        int i = (ping - 3) * 2;
                                        int i2 = realPing - i;
                                        int delay = NetworkConfig.Instnace().getDelay(false) + NetworkConfig.Instnace().getDelay(true);
                                        if (delay >= i) {
                                            i = delay;
                                        }
                                        int i3 = i + i2;
                                        textView.setText(String.format("%dms", Integer.valueOf(i3)));
                                        if (i3 < 100) {
                                            textView.setTextColor(FWService.this.getResources().getColor(android.R.color.holo_green_dark));
                                        } else if (i3 < 200) {
                                            textView.setTextColor(FWService.this.getResources().getColor(android.R.color.holo_orange_dark));
                                        } else {
                                            textView.setTextColor(FWService.this.getResources().getColor(android.R.color.holo_red_dark));
                                        }
                                    }
                                });
                            } catch (Exception e2) {
                                e = e2;
                                e.printStackTrace();
                            }
                            j = jCurrentTimeMillis;
                        } else {
                            Thread.sleep(100L);
                        }
                    }
                } catch (Exception e3) {
                    long j2 = j;
                    e = e3;
                    jCurrentTimeMillis = j2;
                }
            }
        }
    };

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return true;
    }

    public FWService() {
        Instance = this;
    }

    public static FWService getInstance() {
        return Instance;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (GlobalSettings.getInstance().showFWInfo()) {
            create_qnet_fw_info();
        }
        if (GlobalSettings.getInstance().showFWCtrl()) {
            create_qnet_fw();
        }
        this.m_update_ping_thread.start();
        onProfileChanged();
    }

    private void create_fw(boolean z, int i) {
        this.m_fw_params = new WindowManager.LayoutParams();
        this.m_window_manager = (WindowManager) getApplication().getSystemService("window");
        this.m_fw_params.type = i;
        this.m_fw_params.format = 1;
        this.m_fw_params.flags = 8;
        SharedPreferences sharedPreferences = getSharedPreferences("FW_PRES", 0);
        this.m_fw_params.gravity = 51;
        this.m_fw_params.x = sharedPreferences.getInt("FW_X", 0);
        this.m_fw_params.y = sharedPreferences.getInt("FW_Y", 0);
        this.m_fw_params.width = -2;
        this.m_fw_params.height = -2;
        this.m_float_window = (LinearLayout) LayoutInflater.from(getApplication()).inflate(R.layout.layout_float_window, (ViewGroup) null);
        this.m_window_manager.addView(this.m_float_window, this.m_fw_params);
        this.m_float_window.measure(0, 0);
        this.m_root = (LinearLayout) this.m_float_window.findViewById(R.id.fw_root);
    }

    private void create_fw_info(int i) {
        this.m_fw_params_info = new WindowManager.LayoutParams();
        if (this.m_window_manager == null) {
            this.m_window_manager = (WindowManager) getApplication().getSystemService("window");
        }
        this.m_fw_params_info.type = i;
        this.m_fw_params_info.format = 1;
        this.m_fw_params_info.flags = 8;
        getSharedPreferences("FW_PRES", 0);
        this.m_fw_params_info.gravity = 53;
        this.m_fw_params_info.x = 0;
        this.m_fw_params_info.y = 0;
        this.m_fw_params_info.width = (int) ((getResources().getDisplayMetrics().density * 150.0f) + 0.5f);
        this.m_fw_params_info.height = -2;
        this.m_float_window_info = (LinearLayout) LayoutInflater.from(getApplication()).inflate(R.layout.layout_float_window_info, (ViewGroup) null);
        this.m_window_manager.addView(this.m_float_window_info, this.m_fw_params_info);
        this.m_float_window_info.measure(0, 0);
        this.m_info_root = (LinearLayout) this.m_float_window_info.findViewById(R.id.fw_info_root);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    private void create_qnet_fw() {
        try {
            try {
                create_fw(this.m_is_expanded, 2038);
            } catch (Exception unused) {
                create_fw(this.m_is_expanded, 2003);
            }
            init_events();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void create_qnet_fw_info() {
        try {
            try {
                create_fw_info(2038);
            } catch (Exception unused) {
                create_fw_info(2003);
            }
            init_events_info();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void save_fw_pos(int i, int i2, boolean z) {
        try {
            SharedPreferences.Editor editorEdit = getSharedPreferences("FW_PRES", 0).edit();
            editorEdit.putInt("FW_X", i);
            editorEdit.putInt("FW_Y", i2);
            editorEdit.putBoolean("FW_MODE", z);
            editorEdit.commit();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void init_events() {
        this.m_img_icon = (ImageView) this.m_float_window.findViewById(R.id.img_icon);
        this.m_img_icon.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.float_window.FWService.2
            long[] hints = new long[2];

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                System.arraycopy(this.hints, 1, this.hints, 0, this.hints.length - 1);
                this.hints[this.hints.length - 1] = SystemClock.uptimeMillis();
                if (SystemClock.uptimeMillis() - this.hints[0] < 500) {
                    FWService.this.m_qnet_activity = !FWService.this.m_qnet_activity;
                    String appLabel = "QNET";
                    String packageName = FWService.this.getPackageName();
                    FWService.this.getDrawable(R.drawable.image_qnet);
                    if (!FWService.this.m_qnet_activity && AppProxyManager.Instance.getProxyApp() != null) {
                        packageName = AppProxyManager.Instance.getProxyApp().getPkgName();
                        appLabel = AppProxyManager.Instance.getProxyApp().getAppLabel();
                    }
                    Toast.makeText(FWService.this.getApplicationContext(), String.format("%s %s", FWService.this.getResources().getString(R.string.fw_process_switch), appLabel), 0).show();
                    FWService.this.startActivity(FWService.this.getPackageManager().getLaunchIntentForPackage(packageName));
                }
            }
        });
        this.m_img_icon.setOnTouchListener(new View.OnTouchListener() { // from class: com.tencent.qnet.ui.float_window.FWService.3
            private long m_last_click_time = 0;
            private int m_x = 0;
            private int m_y = 0;
            private int m_pos_x = 0;
            private int m_pos_y = 0;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.m_last_click_time > 500) {
                    this.m_x = (int) motionEvent.getRawX();
                    this.m_y = (int) motionEvent.getRawY();
                    this.m_pos_x = FWService.this.m_fw_params.x;
                    this.m_pos_y = FWService.this.m_fw_params.y;
                }
                this.m_last_click_time = jCurrentTimeMillis;
                FWService.this.m_fw_params.x = (this.m_pos_x + ((int) motionEvent.getRawX())) - this.m_x;
                FWService.this.m_fw_params.y = (this.m_pos_y + ((int) motionEvent.getRawY())) - this.m_y;
                FWService.this.m_window_manager.updateViewLayout(FWService.this.m_float_window, FWService.this.m_fw_params);
                FWService.this.save_fw_pos(FWService.this.m_fw_params.x, FWService.this.m_fw_params.y, FWService.this.m_status_bar_visible);
                return false;
            }
        });
        this.m_img_start = (ImageView) this.m_float_window.findViewById(R.id.img_start);
        LocalVpnService.IsActive = true;
        this.m_is_started = LocalVpnService.IsActive;
        updateInfoActiveStatus(this.m_is_started);
        this.m_img_start.setImageDrawable(getDrawable(this.m_is_started ? R.drawable.ic_pause : R.drawable.ic_play_arrow));
        this.m_img_start.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.float_window.FWService.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FWService.this.m_is_started = !FWService.this.m_is_started;
                FWService.this.updateInfoActiveStatus(FWService.this.m_is_started);
                FWService.this.m_img_start.setImageDrawable(FWService.this.getDrawable(FWService.this.m_is_started ? R.drawable.ic_pause : R.drawable.ic_play_arrow));
                LocalVpnService.IsActive = FWService.this.m_is_started;
                Toast.makeText(FWService.this.getApplicationContext(), FWService.this.getResources().getString(FWService.this.m_is_started ? R.string.fw_config_active : R.string.fw_config_inactive), 0).show();
            }
        });
        this.m_img_expand = (ImageView) this.m_float_window.findViewById(R.id.img_expand);
        this.m_img_expand.setOnClickListener(new View.OnClickListener() { // from class: com.tencent.qnet.ui.float_window.FWService.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FWService.this.m_is_expanded = !FWService.this.m_is_expanded;
                FWService.this.m_img_expand.setImageDrawable(FWService.this.getDrawable(FWService.this.m_is_expanded ? R.drawable.ic_expand_less : R.drawable.ic_expand_more));
                if (FWService.this.m_is_expanded) {
                    WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
                    layoutParams.gravity = 51;
                    layoutParams.x = 0;
                    layoutParams.y = 0;
                    layoutParams.width = -2;
                    layoutParams.height = -2;
                    FWService.this.m_expand = (LinearLayout) LayoutInflater.from(FWService.this.getApplication()).inflate(R.layout.layout_float_window_expand, (ViewGroup) null);
                    FWService.this.onProfileChanged();
                    FWService.this.m_root.addView(FWService.this.m_expand, layoutParams);
                    return;
                }
                if (FWService.this.m_expand != null) {
                    FWService.this.m_root.removeView(FWService.this.m_expand);
                    FWService.this.m_expand = null;
                }
            }
        });
    }

    private void init_events_info() {
        this.m_info_root.setOnTouchListener(new View.OnTouchListener() { // from class: com.tencent.qnet.ui.float_window.FWService.6
            private long m_last_click_time = 0;
            private int m_x = 0;
            private int m_y = 0;
            private int m_pos_x = 0;
            private int m_pos_y = 0;

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - this.m_last_click_time > 500) {
                    this.m_x = (int) motionEvent.getRawX();
                    this.m_y = (int) motionEvent.getRawY();
                    this.m_pos_x = FWService.this.m_fw_params_info.x;
                    this.m_pos_y = FWService.this.m_fw_params_info.y;
                }
                this.m_last_click_time = jCurrentTimeMillis;
                FWService.this.m_fw_params_info.x = (this.m_pos_x - ((int) motionEvent.getRawX())) + this.m_x;
                FWService.this.m_fw_params_info.y = (this.m_pos_y + ((int) motionEvent.getRawY())) - this.m_y;
                FWService.this.m_window_manager.updateViewLayout(FWService.this.m_float_window_info, FWService.this.m_fw_params_info);
                return false;
            }
        });
    }

    private void createHelperWnd() {
        try {
            final WindowManager windowManager = (WindowManager) getSystemService("window");
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.type = 2038;
            layoutParams.gravity = 53;
            layoutParams.flags = 8;
            layoutParams.width = 1;
            layoutParams.height = -1;
            layoutParams.format = -2;
            this.m_helperWnd = new View(this);
            windowManager.addView(this.m_helperWnd, layoutParams);
            this.m_helperWnd.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.tencent.qnet.ui.float_window.FWService.7
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                    int i = displayMetrics.heightPixels;
                    int i2 = displayMetrics.widthPixels;
                    FWService.this.m_status_bar_visible = i != FWService.this.m_helperWnd.getHeight();
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // java.lang.Runnable
    public synchronized void run() {
    }

    @Override // android.app.Service
    public void onDestroy() {
        Instance = null;
        this.m_ping_running = false;
        if (this.m_float_window != null) {
            this.m_window_manager.removeView(this.m_float_window);
        }
        if (this.m_float_window_info != null) {
            this.m_window_manager.removeView(this.m_float_window_info);
        }
        super.onDestroy();
    }

    public void onProfileChanged() {
        try {
            List<String> profileList = ProposalManager.GetInstance().getProfileList();
            int iGetSelectedProfileID = ProposalManager.GetInstance().GetSelectedProfileID();
            if (this.m_expand != null) {
                ListView listView = (ListView) this.m_expand.findViewById(R.id.lv_profileName);
                final QnetListViewAdapter qnetListViewAdapter = new QnetListViewAdapter(getApplication(), profileList);
                qnetListViewAdapter.setSelectPosition(iGetSelectedProfileID);
                listView.setAdapter((ListAdapter) qnetListViewAdapter);
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.tencent.qnet.ui.float_window.FWService.8
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                        ProposalManager.GetInstance().OnSelectedProfileChanged(i, false);
                        qnetListViewAdapter.setSelectPosition(i);
                        FWService.this.updateFWInfo(i);
                    }
                });
            }
            updateFWInfo(iGetSelectedProfileID);
        } catch (Exception e) {
            e.printStackTrace();
            Log.e(GlobalSettings.LOG_TAG, "onProfileChanged : " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateFWInfo(int i) {
        if (this.m_float_window_info != null) {
            NetProfile netProfile = ProposalManager.GetInstance().GetProposal().get(i);
            ((TextView) this.m_float_window_info.findViewById(R.id.txt_profile)).setText(String.format("%s", netProfile.Name));
            ((TextView) this.m_float_window_info.findViewById(R.id.txt_info)).setText(getProfileOutInfo(netProfile));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateInfoActiveStatus(boolean z) {
        if (this.m_float_window_info == null) {
            return;
        }
        TextView textView = (TextView) this.m_float_window_info.findViewById(R.id.txt_active);
        if (z) {
            textView.setText(getResources().getString(R.string.fw_info_profile_active));
            textView.setTextColor(getResources().getColor(android.R.color.holo_green_dark));
        } else {
            textView.setText(getResources().getString(R.string.fw_info_profile_inactive));
            textView.setTextColor(getResources().getColor(android.R.color.holo_red_dark));
        }
    }

    private String getProfileOutInfo(NetProfile netProfile) {
        StringBuilder sb = new StringBuilder();
        if (GlobalSettings.getInstance().dumpPcap()) {
            sb.append(String.format("%s %s\n", getString(R.string.fw_dump_ping), getString(R.string.fw_dump_ping_on)));
        }
        int paramIntValue = netProfile.getParamIntValue("OutDelay");
        int paramIntValue2 = netProfile.getParamIntValue("InDelay");
        if (paramIntValue > 0 || paramIntValue2 > 0) {
            sb.append(String.format("%s: %d / %d ms\n", getResources().getString(R.string.fw_info_delay), Integer.valueOf(paramIntValue), Integer.valueOf(paramIntValue2)));
        }
        int paramIntValue3 = netProfile.getParamIntValue("OutDelayBias");
        int paramIntValue4 = netProfile.getParamIntValue("InDelayBias");
        if (paramIntValue3 > 0 || paramIntValue4 > 0) {
            sb.append(String.format("%s: %d / %d ms\n", getResources().getString(R.string.fw_info_bias), Integer.valueOf(paramIntValue3), Integer.valueOf(paramIntValue4)));
        }
        int paramIntValue5 = netProfile.getParamIntValue("OutRate");
        int paramIntValue6 = netProfile.getParamIntValue("InRate");
        if (paramIntValue5 > 0 || paramIntValue6 > 0) {
            sb.append(String.format("%s: %d / %d %%\n", getResources().getString(R.string.fw_info_rate), Integer.valueOf(paramIntValue5), Integer.valueOf(paramIntValue6)));
        }
        int paramIntValue7 = netProfile.getParamIntValue("OutBandwidth");
        int paramIntValue8 = netProfile.getParamIntValue("InBandwidth");
        if (paramIntValue7 > 0 || paramIntValue8 > 0) {
            sb.append(String.format("%s: %d / %d kbps\n", getResources().getString(R.string.fw_info_bandwidth), Integer.valueOf(paramIntValue7), Integer.valueOf(paramIntValue8)));
        }
        int paramIntValue9 = netProfile.getParamIntValue("OutPass");
        int paramIntValue10 = netProfile.getParamIntValue("OutLoss");
        if (paramIntValue9 > 0 || paramIntValue10 > 0) {
            sb.append(String.format("%s: %d / %d ms\n", getResources().getString(R.string.fw_info_out_pass_loss), Integer.valueOf(paramIntValue9), Integer.valueOf(paramIntValue10)));
        }
        int paramIntValue11 = netProfile.getParamIntValue("InPass");
        int paramIntValue12 = netProfile.getParamIntValue("InLoss");
        if (paramIntValue11 > 0 || paramIntValue12 > 0) {
            sb.append(String.format("%s: %d / %d ms\n", getResources().getString(R.string.fw_info_in_pass_loss), Integer.valueOf(paramIntValue11), Integer.valueOf(paramIntValue12)));
        }
        int paramIntValue13 = netProfile.getParamIntValue("Protocol");
        if (paramIntValue13 != 3) {
            if ((paramIntValue13 & 1) > 0) {
                sb.append(String.format("%s: %s\n", getResources().getString(R.string.fw_info_protocol), "TCP"));
            } else if ((paramIntValue13 & 2) > 0) {
                sb.append(String.format("%s: %s\n", getResources().getString(R.string.fw_info_protocol), "UDP"));
            }
        }
        if (sb.length() > 0 && sb.charAt(sb.length() - 1) == '\n') {
            sb.deleteCharAt(sb.length() - 1);
        } else {
            sb.append(getResources().getString(R.string.fw_info_no_config));
        }
        return sb.toString();
    }
}
