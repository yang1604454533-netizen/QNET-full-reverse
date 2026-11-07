package com.tencent.qnet.pcap;

import android.content.Context;
import com.tencent.qnet.global.QnetApplication;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class PcapDump {
    public static boolean DUMP;
    private Context m_context = QnetApplication.getContext();
    private File m_log_file;
    private DataOutputStream m_out;

    public PcapDump(String str) {
        try {
            String str2 = String.format("%s_%s.pcap", str, new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss").format(new Date()));
            if (this.m_context != null) {
                this.m_log_file = new File(this.m_context.getExternalCacheDir(), str2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public boolean open() {
        try {
            if (this.m_log_file != null) {
                this.m_out = new DataOutputStream(new FileOutputStream(this.m_log_file));
                byte[] buff = PcapHeader.getDefault().getBuff();
                this.m_out.write(buff, 0, buff.length);
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
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

    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    public void write(byte[] bArr, int i, int i2) {
        try {
            if (this.m_out != null) {
                this.m_out.write(bArr, i, i2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
