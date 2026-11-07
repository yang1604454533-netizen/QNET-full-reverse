package com.tencent.qnet.net;

import android.content.Context;
import com.tencent.qnet.global.QnetApplication;
import java.io.File;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes.dex */
public class NetLog {
    private Context m_context = QnetApplication.getContext();
    private File m_log_file;
    private FileOutputStream m_out;

    public NetLog(String str) {
        try {
            if (this.m_context != null) {
                this.m_log_file = new File(this.m_context.getExternalCacheDir(), str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean open() {
        try {
            if (this.m_log_file == null) {
                return false;
            }
            this.m_out = new FileOutputStream(this.m_log_file);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void close() {
        try {
            if (this.m_out != null) {
                this.m_out.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void write(String str) {
        try {
            if (this.m_out != null) {
                this.m_out.write(str.getBytes());
                this.m_out.write(10);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
