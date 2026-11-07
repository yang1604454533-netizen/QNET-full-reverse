package com.mysql.jdbc;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public class ByteArrayRow extends ResultSetRow {
    byte[][] internalRowData;

    @Override // com.mysql.jdbc.ResultSetRow
    public void closeOpenStreams() {
    }

    public ByteArrayRow(byte[][] bArr, ExceptionInterceptor exceptionInterceptor) {
        super(exceptionInterceptor);
        this.internalRowData = bArr;
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public byte[] getColumnValue(int i) throws SQLException {
        return this.internalRowData[i];
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public void setColumnValue(int i, byte[] bArr) throws SQLException {
        this.internalRowData[i] = bArr;
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public String getString(int i, String str, MySQLConnection mySQLConnection) throws SQLException {
        byte[] bArr = this.internalRowData[i];
        if (bArr == null) {
            return null;
        }
        return getString(str, mySQLConnection, bArr, 0, bArr.length);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public boolean isNull(int i) throws SQLException {
        return this.internalRowData[i] == null;
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public boolean isFloatingPointNumber(int i) throws SQLException {
        byte[] bArr = this.internalRowData[i];
        if (this.internalRowData[i] == null || this.internalRowData[i].length == 0) {
            return false;
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            if (((char) bArr[i2]) == 'e' || ((char) bArr[i2]) == 'E') {
                return true;
            }
        }
        return false;
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public long length(int i) throws SQLException {
        if (this.internalRowData[i] == null) {
            return 0L;
        }
        return this.internalRowData[i].length;
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public int getInt(int i) {
        if (this.internalRowData[i] == null) {
            return 0;
        }
        return StringUtils.getInt(this.internalRowData[i]);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public long getLong(int i) {
        if (this.internalRowData[i] == null) {
            return 0L;
        }
        return StringUtils.getLong(this.internalRowData[i]);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public Timestamp getTimestampFast(int i, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        byte[] bArr = this.internalRowData[i];
        if (bArr == null) {
            return null;
        }
        return getTimestampFast(i, this.internalRowData[i], 0, bArr.length, calendar, timeZone, z, mySQLConnection, resultSetImpl);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public double getNativeDouble(int i) throws SQLException {
        if (this.internalRowData[i] == null) {
            return 0.0d;
        }
        return getNativeDouble(this.internalRowData[i], 0);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public float getNativeFloat(int i) throws SQLException {
        if (this.internalRowData[i] == null) {
            return 0.0f;
        }
        return getNativeFloat(this.internalRowData[i], 0);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public int getNativeInt(int i) throws SQLException {
        if (this.internalRowData[i] == null) {
            return 0;
        }
        return getNativeInt(this.internalRowData[i], 0);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public long getNativeLong(int i) throws SQLException {
        if (this.internalRowData[i] == null) {
            return 0L;
        }
        return getNativeLong(this.internalRowData[i], 0);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public short getNativeShort(int i) throws SQLException {
        if (this.internalRowData[i] == null) {
            return (short) 0;
        }
        return getNativeShort(this.internalRowData[i], 0);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public Timestamp getNativeTimestamp(int i, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        byte[] bArr = this.internalRowData[i];
        if (bArr == null) {
            return null;
        }
        return getNativeTimestamp(bArr, 0, bArr.length, calendar, timeZone, z, mySQLConnection, resultSetImpl);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public InputStream getBinaryInputStream(int i) throws SQLException {
        if (this.internalRowData[i] == null) {
            return null;
        }
        return new ByteArrayInputStream(this.internalRowData[i]);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public Reader getReader(int i) throws SQLException {
        InputStream binaryInputStream = getBinaryInputStream(i);
        if (binaryInputStream == null) {
            return null;
        }
        try {
            return new InputStreamReader(binaryInputStream, this.metadata[i].getEncoding());
        } catch (UnsupportedEncodingException e) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException("", this.exceptionInterceptor);
            sQLExceptionCreateSQLException.initCause(e);
            throw sQLExceptionCreateSQLException;
        }
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public Time getTimeFast(int i, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        byte[] bArr = this.internalRowData[i];
        if (bArr == null) {
            return null;
        }
        return getTimeFast(i, this.internalRowData[i], 0, bArr.length, calendar, timeZone, z, mySQLConnection, resultSetImpl);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public Date getDateFast(int i, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl, Calendar calendar) throws SQLException {
        byte[] bArr = this.internalRowData[i];
        if (bArr == null) {
            return null;
        }
        return getDateFast(i, this.internalRowData[i], 0, bArr.length, mySQLConnection, resultSetImpl, calendar);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public Object getNativeDateTimeValue(int i, Calendar calendar, int i2, int i3, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        byte[] bArr = this.internalRowData[i];
        if (bArr == null) {
            return null;
        }
        return getNativeDateTimeValue(i, bArr, 0, bArr.length, calendar, i2, i3, timeZone, z, mySQLConnection, resultSetImpl);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public Date getNativeDate(int i, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl, Calendar calendar) throws SQLException {
        byte[] bArr = this.internalRowData[i];
        if (bArr == null) {
            return null;
        }
        return getNativeDate(i, bArr, 0, bArr.length, mySQLConnection, resultSetImpl, calendar);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public Time getNativeTime(int i, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        byte[] bArr = this.internalRowData[i];
        if (bArr == null) {
            return null;
        }
        return getNativeTime(i, bArr, 0, bArr.length, calendar, timeZone, z, mySQLConnection, resultSetImpl);
    }

    @Override // com.mysql.jdbc.ResultSetRow
    public int getBytesSize() {
        if (this.internalRowData == null) {
            return 0;
        }
        int length = 0;
        for (int i = 0; i < this.internalRowData.length; i++) {
            if (this.internalRowData[i] != null) {
                length += this.internalRowData[i].length;
            }
        }
        return length;
    }
}
