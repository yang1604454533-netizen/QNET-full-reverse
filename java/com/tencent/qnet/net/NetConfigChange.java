package com.tencent.qnet.net;

import android.util.Log;
import com.tencent.qnet.global.GlobalSettings;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NetConfigChange implements Runnable {
    public static NetConfigChange Instance = new NetConfigChange();
    private NetworkConfig m_config;
    private Thread m_thread;
    private boolean m_running = true;
    private NetProfile m_profile = null;

    private NetConfigChange() {
        this.m_config = null;
        this.m_config = NetworkConfig.Instnace();
    }

    public void setCurrentProfile(NetProfile netProfile) {
        this.m_profile = netProfile.m7clone();
    }

    public void start() {
        if (this.m_thread == null) {
            this.m_thread = new Thread(this);
            this.m_thread.start();
            this.m_running = true;
        }
    }

    public void stop() {
        this.m_running = false;
        this.m_thread = null;
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> list;
        long j;
        long jCurrentTimeMillis = System.currentTimeMillis();
        while (this.m_running) {
            try {
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                List<String> sortedList = NetProfile.getSortedList();
                int i = 0;
                while (i < sortedList.size()) {
                    NetProfile.Param param = this.m_profile.getParam(sortedList.get(i));
                    NetProfile.Param.Change change = param.getChange();
                    if (change != null) {
                        Field field = this.m_config.getClass().getField(param.Name);
                        int i2 = field.getInt(this.m_config);
                        if (change.Max <= param.getIntValue()) {
                            list = sortedList;
                            j = jCurrentTimeMillis;
                        } else {
                            int intValue = param.getIntValue();
                            long j2 = jCurrentTimeMillis;
                            while (true) {
                                list = sortedList;
                                j = jCurrentTimeMillis;
                                if (jCurrentTimeMillis2 - j2 <= change.Interval) {
                                    break;
                                }
                                j2 += (long) change.Interval;
                                intValue += change.Delta;
                                if (intValue > change.Max) {
                                    intValue = param.getIntValue();
                                }
                                sortedList = list;
                                jCurrentTimeMillis = j;
                            }
                            if (intValue != i2) {
                                field.setInt(this.m_config, intValue);
                            }
                        }
                    } else {
                        list = sortedList;
                        j = jCurrentTimeMillis;
                    }
                    i++;
                    sortedList = list;
                    jCurrentTimeMillis = j;
                }
                long j3 = jCurrentTimeMillis;
                Thread.sleep(1L);
                jCurrentTimeMillis = j3;
            } catch (Exception e) {
                e.printStackTrace();
                Log.e(GlobalSettings.LOG_TAG, "exce : " + e.getMessage());
                return;
            }
        }
    }
}
