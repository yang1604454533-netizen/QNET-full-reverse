package com.tencent.open.utils;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.ProtocolException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Properties;
import java.util.zip.ZipException;

/* JADX INFO: compiled from: ProGuard */
/* JADX INFO: loaded from: classes.dex */
public final class a {
    private static final l a = new l(101010256);
    private static final m b = new m(38651);

    /* JADX INFO: renamed from: com.tencent.open.utils.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ProGuard */
    private static class C0011a {
        Properties a;
        byte[] b;

        private C0011a() {
            this.a = new Properties();
        }

        void a(byte[] bArr) throws IOException {
            if (bArr == null) {
                return;
            }
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            int length = a.b.a().length;
            byte[] bArr2 = new byte[length];
            byteBufferWrap.get(bArr2);
            if (!a.b.equals(new m(bArr2))) {
                throw new ProtocolException("unknow protocl [" + Arrays.toString(bArr) + "]");
            }
            if (bArr.length - length <= 2) {
                return;
            }
            byte[] bArr3 = new byte[2];
            byteBufferWrap.get(bArr3);
            int iB = new m(bArr3).b();
            if ((bArr.length - length) - 2 < iB) {
                return;
            }
            byte[] bArr4 = new byte[iB];
            byteBufferWrap.get(bArr4);
            this.a.load(new ByteArrayInputStream(bArr4));
            int length2 = ((bArr.length - length) - iB) - 2;
            if (length2 > 0) {
                this.b = new byte[length2];
                byteBufferWrap.get(this.b);
            }
        }

        public String toString() {
            return "ApkExternalInfo [p=" + this.a + ", otherData=" + Arrays.toString(this.b) + "]";
        }
    }

    public static String a(File file, String str) throws Throwable {
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(file, "r");
            try {
                byte[] bArrA = a(randomAccessFile);
                if (bArrA != null) {
                    C0011a c0011a = new C0011a();
                    c0011a.a(bArrA);
                    String property = c0011a.a.getProperty(str);
                    randomAccessFile.close();
                    return property;
                }
                randomAccessFile.close();
                return null;
            } catch (Throwable th) {
                th = th;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile = null;
        }
    }

    public static String a(File file) throws IOException {
        return a(file, "channelNo");
    }

    private static byte[] a(RandomAccessFile randomAccessFile) throws IOException {
        boolean z;
        long length = randomAccessFile.length() - 22;
        randomAccessFile.seek(length);
        byte[] bArrA = a.a();
        int i = randomAccessFile.read();
        while (true) {
            z = true;
            if (i == -1) {
                z = false;
                break;
            }
            if (i == bArrA[0] && randomAccessFile.read() == bArrA[1] && randomAccessFile.read() == bArrA[2] && randomAccessFile.read() == bArrA[3]) {
                break;
            }
            length--;
            randomAccessFile.seek(length);
            i = randomAccessFile.read();
        }
        if (!z) {
            throw new ZipException("archive is not a ZIP archive");
        }
        randomAccessFile.seek(length + 16 + 4);
        byte[] bArr = new byte[2];
        randomAccessFile.readFully(bArr);
        int iB = new m(bArr).b();
        if (iB == 0) {
            return null;
        }
        byte[] bArr2 = new byte[iB];
        randomAccessFile.read(bArr2);
        return bArr2;
    }
}
