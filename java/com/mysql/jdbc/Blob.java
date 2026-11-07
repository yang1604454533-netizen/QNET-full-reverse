package com.mysql.jdbc;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes.dex */
public class Blob implements java.sql.Blob, OutputStreamWatcher {
    private ExceptionInterceptor exceptionInterceptor;
    private byte[] binaryData = null;
    private boolean isClosed = false;

    Blob(ExceptionInterceptor exceptionInterceptor) {
        setBinaryData(Constants.EMPTY_BYTE_ARRAY);
        this.exceptionInterceptor = exceptionInterceptor;
    }

    Blob(byte[] bArr, ExceptionInterceptor exceptionInterceptor) {
        setBinaryData(bArr);
        this.exceptionInterceptor = exceptionInterceptor;
    }

    Blob(byte[] bArr, ResultSetInternalMethods resultSetInternalMethods, int i) {
        setBinaryData(bArr);
    }

    private synchronized byte[] getBinaryData() {
        return this.binaryData;
    }

    @Override // java.sql.Blob
    public synchronized InputStream getBinaryStream() throws SQLException {
        checkClosed();
        return new ByteArrayInputStream(getBinaryData());
    }

    @Override // java.sql.Blob
    public synchronized byte[] getBytes(long j, int i) throws SQLException {
        byte[] bArr;
        checkClosed();
        if (j < 1) {
            throw SQLError.createSQLException(Messages.getString("Blob.2"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        long j2 = j - 1;
        if (j2 > this.binaryData.length) {
            throw SQLError.createSQLException("\"pos\" argument can not be larger than the BLOB's length.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        if (((long) i) + j2 > this.binaryData.length) {
            throw SQLError.createSQLException("\"pos\" + \"length\" arguments can not be larger than the BLOB's length.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        bArr = new byte[i];
        System.arraycopy(getBinaryData(), (int) j2, bArr, 0, i);
        return bArr;
    }

    @Override // java.sql.Blob
    public synchronized long length() throws SQLException {
        checkClosed();
        return getBinaryData().length;
    }

    @Override // java.sql.Blob
    public synchronized long position(byte[] bArr, long j) throws SQLException {
        throw SQLError.createSQLException("Not implemented", this.exceptionInterceptor);
    }

    @Override // java.sql.Blob
    public synchronized long position(java.sql.Blob blob, long j) throws SQLException {
        checkClosed();
        return position(blob.getBytes(0L, (int) blob.length()), j);
    }

    private synchronized void setBinaryData(byte[] bArr) {
        this.binaryData = bArr;
    }

    @Override // java.sql.Blob
    public synchronized OutputStream setBinaryStream(long j) throws SQLException {
        WatchableOutputStream watchableOutputStream;
        checkClosed();
        if (j < 1) {
            throw SQLError.createSQLException(Messages.getString("Blob.0"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        watchableOutputStream = new WatchableOutputStream();
        watchableOutputStream.setWatcher(this);
        if (j > 0) {
            watchableOutputStream.write(this.binaryData, 0, (int) (j - 1));
        }
        return watchableOutputStream;
    }

    @Override // java.sql.Blob
    public synchronized int setBytes(long j, byte[] bArr) throws SQLException {
        checkClosed();
        return setBytes(j, bArr, 0, bArr.length);
    }

    @Override // java.sql.Blob
    public synchronized int setBytes(long j, byte[] bArr, int i, int i2) throws SQLException {
        checkClosed();
        OutputStream binaryStream = setBinaryStream(j);
        try {
            try {
                binaryStream.write(bArr, i, i2);
                try {
                    binaryStream.close();
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                try {
                    binaryStream.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (IOException e) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("Blob.1"), SQLError.SQL_STATE_GENERAL_ERROR, this.exceptionInterceptor);
            sQLExceptionCreateSQLException.initCause(e);
            throw sQLExceptionCreateSQLException;
        }
        return i2;
    }

    public synchronized void streamClosed(byte[] bArr) {
        this.binaryData = bArr;
    }

    @Override // com.mysql.jdbc.OutputStreamWatcher
    public synchronized void streamClosed(WatchableOutputStream watchableOutputStream) {
        int size = watchableOutputStream.size();
        if (size < this.binaryData.length) {
            watchableOutputStream.write(this.binaryData, size, this.binaryData.length - size);
        }
        this.binaryData = watchableOutputStream.toByteArray();
    }

    @Override // java.sql.Blob
    public synchronized void truncate(long j) throws SQLException {
        checkClosed();
        if (j < 0) {
            throw SQLError.createSQLException("\"len\" argument can not be < 1.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        if (j > this.binaryData.length) {
            throw SQLError.createSQLException("\"len\" argument can not be larger than the BLOB's length.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        int i = (int) j;
        byte[] bArr = new byte[i];
        System.arraycopy(getBinaryData(), 0, bArr, 0, i);
        this.binaryData = bArr;
    }

    @Override // java.sql.Blob
    public synchronized void free() throws SQLException {
        this.binaryData = null;
        this.isClosed = true;
    }

    @Override // java.sql.Blob
    public synchronized InputStream getBinaryStream(long j, long j2) throws SQLException {
        long j3;
        checkClosed();
        if (j < 1) {
            throw SQLError.createSQLException("\"pos\" argument can not be < 1.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        j3 = j - 1;
        if (j3 > this.binaryData.length) {
            throw SQLError.createSQLException("\"pos\" argument can not be larger than the BLOB's length.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        if (j3 + j2 > this.binaryData.length) {
            throw SQLError.createSQLException("\"pos\" + \"length\" arguments can not be larger than the BLOB's length.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
        return new ByteArrayInputStream(getBinaryData(), (int) j3, (int) j2);
    }

    private synchronized void checkClosed() throws SQLException {
        if (this.isClosed) {
            throw SQLError.createSQLException("Invalid operation on closed BLOB", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
        }
    }
}
