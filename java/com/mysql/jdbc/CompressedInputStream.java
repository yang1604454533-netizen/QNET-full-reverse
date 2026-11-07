package com.mysql.jdbc;

import com.mysql.jdbc.log.Log;
import com.mysql.jdbc.log.NullLogger;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes.dex */
class CompressedInputStream extends InputStream {
    private byte[] buffer;
    private InputStream in;
    private Inflater inflater;
    private Log log;
    private byte[] packetHeaderBuffer = new byte[7];
    private int pos = 0;
    private ConnectionPropertiesImpl.BooleanConnectionProperty traceProtocol;

    /* JADX WARN: Multi-variable type inference failed */
    public CompressedInputStream(Connection connection, InputStream inputStream) {
        this.traceProtocol = ((ConnectionPropertiesImpl) connection).traceProtocol;
        try {
            this.log = connection.getLog();
        } catch (SQLException unused) {
            this.log = new NullLogger(null);
        }
        this.in = inputStream;
        this.inflater = new Inflater();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.buffer == null) {
            return this.in.available();
        }
        return (this.buffer.length - this.pos) + this.in.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
        this.buffer = null;
        this.inflater.end();
        this.inflater = null;
        this.traceProtocol = null;
        this.log = null;
    }

    private void getNextPacketFromServer() throws IOException {
        byte[] bArr;
        byte[] bArr2;
        if (readFully(this.packetHeaderBuffer, 0, 7) < 7) {
            throw new IOException("Unexpected end of input stream");
        }
        int i = (this.packetHeaderBuffer[0] & 255) + ((this.packetHeaderBuffer[1] & 255) << 8) + ((this.packetHeaderBuffer[2] & 255) << 16);
        int i2 = (this.packetHeaderBuffer[4] & 255) + ((this.packetHeaderBuffer[5] & 255) << 8) + ((this.packetHeaderBuffer[6] & 255) << 16);
        boolean valueAsBoolean = this.traceProtocol.getValueAsBoolean();
        if (valueAsBoolean) {
            this.log.logTrace("Reading compressed packet of length " + i + " uncompressed to " + i2);
        }
        if (i2 > 0) {
            bArr = new byte[i2];
            byte[] bArr3 = new byte[i];
            readFully(bArr3, 0, i);
            this.inflater.reset();
            this.inflater.setInput(bArr3);
            try {
                this.inflater.inflate(bArr);
                i = i2;
            } catch (DataFormatException unused) {
                throw new IOException("Error while uncompressing packet from server.");
            }
        } else {
            if (valueAsBoolean) {
                this.log.logTrace("Packet didn't meet compression threshold, not uncompressing...");
            }
            bArr = new byte[i];
            readFully(bArr, 0, i);
        }
        if (valueAsBoolean) {
            if (i > 1024) {
                this.log.logTrace("Uncompressed packet: \n" + StringUtils.dumpAsHex(bArr, 256));
                byte[] bArr4 = new byte[256];
                System.arraycopy(bArr, i - 256, bArr4, 0, 256);
                this.log.logTrace("Uncompressed packet: \n" + StringUtils.dumpAsHex(bArr4, 256));
                this.log.logTrace("Large packet dump truncated. Showing first and last 256 bytes.");
            } else {
                this.log.logTrace("Uncompressed packet: \n" + StringUtils.dumpAsHex(bArr, i));
            }
        }
        if (this.buffer == null || this.pos >= this.buffer.length) {
            bArr2 = bArr;
        } else {
            if (valueAsBoolean) {
                this.log.logTrace("Combining remaining packet with new: ");
            }
            int length = this.buffer.length - this.pos;
            bArr2 = new byte[bArr.length + length];
            System.arraycopy(this.buffer, this.pos, bArr2, 0, length);
            System.arraycopy(bArr, 0, bArr2, length, bArr.length);
        }
        this.pos = 0;
        this.buffer = bArr2;
    }

    private void getNextPacketIfRequired(int i) throws IOException {
        if (this.buffer == null || this.pos + i > this.buffer.length) {
            getNextPacketFromServer();
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            getNextPacketIfRequired(1);
            byte[] bArr = this.buffer;
            int i = this.pos;
            this.pos = i + 1;
            return bArr[i] & StatementImpl.USES_VARIABLES_UNKNOWN;
        } catch (IOException unused) {
            return -1;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (bArr == null) {
            throw new NullPointerException();
        }
        if (i < 0 || i > bArr.length || i2 < 0 || (i3 = i + i2) > bArr.length || i3 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i2 <= 0) {
            return 0;
        }
        try {
            getNextPacketIfRequired(i2);
            int iMin = Math.min(this.buffer.length - this.pos, i2);
            System.arraycopy(this.buffer, this.pos, bArr, i, iMin);
            this.pos += iMin;
            return iMin;
        } catch (IOException unused) {
            return -1;
        }
    }

    private final int readFully(byte[] bArr, int i, int i2) throws IOException {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        int i3 = 0;
        while (i3 < i2) {
            int i4 = this.in.read(bArr, i + i3, i2 - i3);
            if (i4 < 0) {
                throw new EOFException();
            }
            i3 += i4;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long j2 = 0;
        for (long j3 = 0; j3 < j && read() != -1; j3++) {
            j2++;
        }
        return j2;
    }
}
