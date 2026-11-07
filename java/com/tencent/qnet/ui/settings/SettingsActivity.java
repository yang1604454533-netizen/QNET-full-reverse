package com.tencent.qnet.ui.settings;

import android.app.Activity;
import android.content.pm.PackageInfo;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.RingtonePreference;
import android.preference.SwitchPreference;
import android.text.TextUtils;
import android.util.Log;
import android.view.MenuItem;
import com.tencent.qim.R;
import com.tencent.qnet.common.SystemUtil;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.global.QnetApplication;
import com.tencent.qnet.profile.PersonalNetProposal;
import com.tencent.qnet.ui.AppCompatPreferenceActivity;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends AppCompatPreferenceActivity {
    private static final String TAG = "SettingsActivity";
    private static Preference.OnPreferenceChangeListener sBindPreferenceSummaryToValueListener = new Preference.OnPreferenceChangeListener() { // from class: com.tencent.qnet.ui.settings.SettingsActivity.1
        @Override // android.preference.Preference.OnPreferenceChangeListener
        public boolean onPreferenceChange(Preference preference, Object obj) {
            String string = obj.toString();
            if (preference instanceof ListPreference) {
                ListPreference listPreference = (ListPreference) preference;
                int iFindIndexOfValue = listPreference.findIndexOfValue(string);
                preference.setSummary(iFindIndexOfValue >= 0 ? listPreference.getEntries()[iFindIndexOfValue] : null);
                return true;
            }
            if (preference instanceof RingtonePreference) {
                if (TextUtils.isEmpty(string)) {
                    preference.setSummary(R.string.menu_settings);
                    return true;
                }
                Ringtone ringtone = RingtoneManager.getRingtone(preference.getContext(), Uri.parse(string));
                if (ringtone == null) {
                    preference.setSummary(R.string.menu_settings);
                    return true;
                }
                preference.setSummary(ringtone.getTitle(preference.getContext()));
                return true;
            }
            if (preference instanceof EditTextPreference) {
                if (!preference.getKey().equals("key_gallery_name")) {
                    return true;
                }
                preference.setSummary(string);
                return true;
            }
            preference.setSummary(string);
            return true;
        }
    };

    @Override // com.tencent.qnet.ui.AppCompatPreferenceActivity, android.preference.PreferenceActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        getFragmentManager().beginTransaction().replace(android.R.id.content, new MainPreferenceFragment()).commit();
    }

    public static class MainPreferenceFragment extends PreferenceFragment {
        Preference.OnPreferenceChangeListener m_switchChangeListner = new Preference.OnPreferenceChangeListener() { // from class: com.tencent.qnet.ui.settings.SettingsActivity.MainPreferenceFragment.1
            @Override // android.preference.Preference.OnPreferenceChangeListener
            public boolean onPreferenceChange(Preference preference, Object obj) {
                if (preference.getKey().equals(MainPreferenceFragment.this.getString(R.string.setting_key_fw_info))) {
                    GlobalSettings.getInstance().setShowFWInfo(((Boolean) obj).booleanValue());
                    return true;
                }
                if (preference.getKey().equals(MainPreferenceFragment.this.getString(R.string.setting_key_fw_ctrl))) {
                    GlobalSettings.getInstance().setShowFWCtrl(((Boolean) obj).booleanValue());
                    return true;
                }
                if (!preference.getKey().equals(MainPreferenceFragment.this.getString(R.string.setting_key_dump_pcap))) {
                    return true;
                }
                GlobalSettings.getInstance().setDumpPcap(((Boolean) obj).booleanValue());
                return true;
            }
        };

        @Override // android.preference.PreferenceFragment, android.app.Fragment
        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            addPreferencesFromResource(R.xml.pref_main);
            try {
                Preference preferenceFindPreference = findPreference(getString(R.string.setting_key_version));
                PackageInfo appVersionInfo = SystemUtil.getAppVersionInfo(getActivity());
                preferenceFindPreference.setSummary(String.format("v%s", appVersionInfo.versionName));
                SwitchPreference switchPreference = (SwitchPreference) findPreference(getString(R.string.setting_key_fw_ctrl));
                switchPreference.setChecked(GlobalSettings.getInstance().showFWCtrl());
                switchPreference.setOnPreferenceChangeListener(this.m_switchChangeListner);
                SwitchPreference switchPreference2 = (SwitchPreference) findPreference(getString(R.string.setting_key_fw_info));
                switchPreference2.setChecked(GlobalSettings.getInstance().showFWInfo());
                switchPreference2.setOnPreferenceChangeListener(this.m_switchChangeListner);
                getAboutDataFromDB(appVersionInfo.versionCode, getActivity());
                SwitchPreference switchPreference3 = (SwitchPreference) findPreference(getString(R.string.setting_key_dump_pcap));
                switchPreference3.setChecked(GlobalSettings.getInstance().dumpPcap());
                switchPreference3.setOnPreferenceChangeListener(this.m_switchChangeListner);
                switchPreference3.setSummary(String.format(getString(R.string.setting_summary_dump_pcap), QnetApplication.getContext().getExternalCacheDir()));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        private void getAboutDataFromDB(final int i, final Activity activity) {
            new Thread(new Runnable() { // from class: com.tencent.qnet.ui.settings.SettingsActivity.MainPreferenceFragment.2
                @Override // java.lang.Runnable
                public void run() throws Throwable {
                    try {
                        final String strQueryVersionUpdate = PersonalNetProposal.QueryVersionUpdate(String.format("%d", Integer.valueOf(i)));
                        if (strQueryVersionUpdate == null || strQueryVersionUpdate.length() <= 0) {
                            return;
                        }
                        activity.runOnUiThread(new Runnable() { // from class: com.tencent.qnet.ui.settings.SettingsActivity.MainPreferenceFragment.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MainPreferenceFragment.this.findPreference(MainPreferenceFragment.this.getString(R.string.setting_key_release_note)).setSummary(strQueryVersionUpdate);
                            }
                        });
                    } catch (Exception unused) {
                        Log.d(GlobalSettings.LOG_TAG, "Failed To get updateLog from db !");
                    }
                }
            }).start();
        }
    }

    @Override // android.preference.PreferenceActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private static void bindPreferenceSummaryToValue(Preference preference) {
        preference.setOnPreferenceChangeListener(sBindPreferenceSummaryToValueListener);
        sBindPreferenceSummaryToValueListener.onPreferenceChange(preference, PreferenceManager.getDefaultSharedPreferences(preference.getContext()).getString(preference.getKey(), ""));
    }
}
