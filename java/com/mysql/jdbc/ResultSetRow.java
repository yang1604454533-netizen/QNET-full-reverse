package com.mysql.jdbc;

import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.SQLWarning;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.Calendar;
import java.util.StringTokenizer;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public abstract class ResultSetRow {
    protected ExceptionInterceptor exceptionInterceptor;
    protected Field[] metadata;

    public abstract void closeOpenStreams();

    public abstract InputStream getBinaryInputStream(int i) throws SQLException;

    public abstract int getBytesSize();

    public abstract byte[] getColumnValue(int i) throws SQLException;

    public abstract Date getDateFast(int i, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl, Calendar calendar) throws SQLException;

    public abstract int getInt(int i) throws SQLException;

    public abstract long getLong(int i) throws SQLException;

    public abstract Date getNativeDate(int i, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl, Calendar calendar) throws SQLException;

    public abstract Object getNativeDateTimeValue(int i, Calendar calendar, int i2, int i3, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException;

    public abstract double getNativeDouble(int i) throws SQLException;

    public abstract float getNativeFloat(int i) throws SQLException;

    public abstract int getNativeInt(int i) throws SQLException;

    public abstract long getNativeLong(int i) throws SQLException;

    public abstract short getNativeShort(int i) throws SQLException;

    public abstract Time getNativeTime(int i, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException;

    public abstract Timestamp getNativeTimestamp(int i, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException;

    public abstract Reader getReader(int i) throws SQLException;

    public abstract String getString(int i, String str, MySQLConnection mySQLConnection) throws SQLException;

    public abstract Time getTimeFast(int i, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException;

    public abstract Timestamp getTimestampFast(int i, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException;

    public abstract boolean isFloatingPointNumber(int i) throws SQLException;

    public abstract boolean isNull(int i) throws SQLException;

    public abstract long length(int i) throws SQLException;

    public abstract void setColumnValue(int i, byte[] bArr) throws SQLException;

    protected ResultSetRow(ExceptionInterceptor exceptionInterceptor) {
        this.exceptionInterceptor = exceptionInterceptor;
    }

    protected final Date getDateFast(int i, byte[] bArr, int i2, int i3, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl, Calendar calendar) throws SQLException {
        boolean z;
        boolean z2;
        int i4;
        int i5;
        int i6;
        int i7;
        if (bArr == null) {
            return null;
        }
        int i8 = 0;
        while (true) {
            if (i8 >= i3) {
                z = false;
                break;
            }
            try {
                if (bArr[i2 + i8] == 58) {
                    z = true;
                    break;
                }
                i8++;
            } catch (SQLException e) {
                throw e;
            } catch (Exception e2) {
                SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("ResultSet.Bad_format_for_Date", new Object[]{StringUtils.toString(bArr), Integer.valueOf(i + 1)}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
                sQLExceptionCreateSQLException.initCause(e2);
                throw sQLExceptionCreateSQLException;
            }
        }
        boolean z3 = z;
        int i9 = 0;
        while (true) {
            if (i9 < i3) {
                byte b = bArr[i2 + i9];
                if (b == 32 || b == 45 || b == 47) {
                    z3 = false;
                }
                if (b != 48 && b != 32 && b != 58 && b != 45 && b != 47 && b != 46) {
                    z2 = false;
                    break;
                }
                i9++;
            } else {
                z2 = true;
                break;
            }
        }
        int i10 = 0;
        while (true) {
            if (i10 >= i3) {
                i10 = -1;
                break;
            }
            if (bArr[i2 + i10] == 46) {
                break;
            }
            i10++;
        }
        if (i10 <= -1) {
            i10 = i3;
        }
        if (!z3 && z2) {
            if ("convertToNull".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                return null;
            }
            if ("exception".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                throw SQLError.createSQLException("Value '" + StringUtils.toString(bArr) + "' can not be represented as java.sql.Date", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            }
            return resultSetImpl.fastDateCreate(calendar, 1, 1, 1);
        }
        if (this.metadata[i].getMysqlType() != 7) {
            if (this.metadata[i].getMysqlType() == 13) {
                if (i10 == 2 || i10 == 1) {
                    int i11 = StringUtils.getInt(bArr, i2, i2 + i10);
                    if (i11 <= 69) {
                        i11 += 100;
                    }
                    i7 = i11 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP;
                } else {
                    i7 = StringUtils.getInt(bArr, i2 + 0, i2 + 4);
                }
                return resultSetImpl.fastDateCreate(calendar, i7, 1, 1);
            }
            if (this.metadata[i].getMysqlType() == 11) {
                return resultSetImpl.fastDateCreate(calendar, 1970, 1, 1);
            }
            if (i10 < 10) {
                if (i10 == 8) {
                    return resultSetImpl.fastDateCreate(calendar, 1970, 1, 1);
                }
                throw SQLError.createSQLException(Messages.getString("ResultSet.Bad_format_for_Date", new Object[]{StringUtils.toString(bArr), Integer.valueOf(i + 1)}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            }
            if (i10 != 18) {
                int i12 = StringUtils.getInt(bArr, i2 + 0, i2 + 4);
                i5 = StringUtils.getInt(bArr, i2 + 5, i2 + 7);
                i6 = StringUtils.getInt(bArr, i2 + 8, i2 + 10);
                i4 = i12;
            } else {
                StringTokenizer stringTokenizer = new StringTokenizer(StringUtils.toString(bArr, i2, i10, "ISO8859_1"), "- ");
                i4 = Integer.parseInt(stringTokenizer.nextToken());
                i5 = Integer.parseInt(stringTokenizer.nextToken());
                i6 = Integer.parseInt(stringTokenizer.nextToken());
            }
            return resultSetImpl.fastDateCreate(calendar, i4, i5, i6);
        }
        if (i10 == 2) {
            int i13 = StringUtils.getInt(bArr, i2 + 0, i2 + 2);
            if (i13 <= 69) {
                i13 += 100;
            }
            return resultSetImpl.fastDateCreate(calendar, i13 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP, 1, 1);
        }
        if (i10 != 4) {
            if (i10 != 6) {
                if (i10 != 8) {
                    if (i10 != 10 && i10 != 12) {
                        if (i10 != 14) {
                            if (i10 != 19 && i10 != 21 && i10 != 29) {
                                throw SQLError.createSQLException(Messages.getString("ResultSet.Bad_format_for_Date", new Object[]{StringUtils.toString(bArr), Integer.valueOf(i + 1)}), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
                            }
                            return resultSetImpl.fastDateCreate(calendar, StringUtils.getInt(bArr, i2 + 0, i2 + 4), StringUtils.getInt(bArr, i2 + 5, i2 + 7), StringUtils.getInt(bArr, i2 + 8, i2 + 10));
                        }
                    }
                }
                int i14 = i2 + 4;
                int i15 = i2 + 6;
                return resultSetImpl.fastDateCreate(calendar, StringUtils.getInt(bArr, i2 + 0, i14), StringUtils.getInt(bArr, i14, i15), StringUtils.getInt(bArr, i15, i2 + 8));
            }
            int i16 = i2 + 2;
            int i17 = StringUtils.getInt(bArr, i2 + 0, i16);
            if (i17 <= 69) {
                i17 += 100;
            }
            int i18 = i2 + 4;
            return resultSetImpl.fastDateCreate(calendar, i17 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP, StringUtils.getInt(bArr, i16, i18), StringUtils.getInt(bArr, i18, i2 + 6));
        }
        int i19 = i2 + 4;
        int i20 = StringUtils.getInt(bArr, i2 + 0, i19);
        if (i20 <= 69) {
            i20 += 100;
        }
        return resultSetImpl.fastDateCreate(calendar, i20 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP, StringUtils.getInt(bArr, i2 + 2, i19), 1);
    }

    protected Date getNativeDate(int i, byte[] bArr, int i2, int i3, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl, Calendar calendar) throws SQLException {
        int i4;
        int i5;
        int i6 = 0;
        if (i3 != 0) {
            i6 = (bArr[i2 + 0] & 255) | ((bArr[i2 + 1] & 255) << 8);
            i5 = bArr[i2 + 2];
            i4 = bArr[i2 + 3];
        } else {
            i4 = 0;
            i5 = 0;
        }
        int i7 = 1;
        if (i3 != 0 && (i6 != 0 || i5 != 0 || i4 != 0)) {
            i7 = i5;
        } else {
            if ("convertToNull".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                return null;
            }
            if ("exception".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                throw SQLError.createSQLException("Value '0000-00-00' can not be represented as java.sql.Date", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            }
            i6 = 1;
            i4 = 1;
        }
        if (!resultSetImpl.useLegacyDatetimeCode) {
            return TimeUtil.fastDateCreate(i6, i7, i4, calendar);
        }
        if (calendar == null) {
            calendar = resultSetImpl.getCalendarInstanceForSessionOrNew();
        }
        return resultSetImpl.fastDateCreate(calendar, i6, i7, i4);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x007c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x007e  */
    /* JADX WARN: Code duplicated, block: B:24:0x0098  */
    /* JADX WARN: Code duplicated, block: B:25:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:27:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:28:0x00da  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e5  */
    protected Object getNativeDateTimeValue(int i, byte[] bArr, int i2, int i3, Calendar calendar, int i4, int i5, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z2;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        if (bArr == null) {
            return null;
        }
        Calendar utcCalendar = mySQLConnection.getUseJDBCCompliantTimezoneShift() ? mySQLConnection.getUtcCalendar() : resultSetImpl.getCalendarInstanceForSessionOrNew();
        int i22 = 1;
        if (i5 != 7) {
            switch (i5) {
                case 10:
                    if (i3 == 0) {
                        i15 = 0;
                        i12 = 0;
                        i6 = 0;
                        z2 = true;
                        i7 = 0;
                        i14 = 0;
                        i16 = 0;
                        i13 = 0;
                    } else {
                        int i23 = (bArr[i2 + 0] & 255) | ((bArr[i2 + 1] & 255) << 8);
                        int i24 = bArr[i2 + 2];
                        i13 = bArr[i2 + 3];
                        i7 = i24;
                        i15 = 0;
                        z2 = true;
                        i14 = 0;
                        i16 = 0;
                        i6 = i23;
                        i12 = 0;
                    }
                    break;
                case 11:
                    if (i3 != 0) {
                        i12 = bArr[i2 + 5];
                        i21 = bArr[i2 + 6];
                        i20 = bArr[i2 + 7];
                    } else {
                        i20 = 0;
                        i12 = 0;
                        i21 = 0;
                    }
                    i15 = i20;
                    i14 = i21;
                    i6 = 1970;
                    z2 = true;
                    i7 = 1;
                    i16 = 0;
                    i13 = 1;
                    break;
                case 12:
                    if (i3 == 0) {
                        i15 = 0;
                        i12 = 0;
                        i6 = 0;
                        z2 = true;
                        i7 = 0;
                        i14 = 0;
                        i16 = 0;
                        i13 = 0;
                    } else {
                        i6 = (bArr[i2 + 0] & 255) | ((bArr[i2 + 1] & 255) << 8);
                        i7 = bArr[i2 + 2];
                        i8 = bArr[i2 + 3];
                        if (i3 > 4) {
                            i9 = bArr[i2 + 4];
                            i10 = bArr[i2 + 5];
                            i11 = bArr[i2 + 6];
                        } else {
                            i9 = 0;
                            i10 = 0;
                            i11 = 0;
                        }
                        if (i3 <= 7) {
                            i12 = i9;
                            i13 = i8;
                            i14 = i10;
                            i15 = i11;
                            z2 = true;
                            i16 = 0;
                        } else {
                            i12 = i9;
                            i13 = i8;
                            i14 = i10;
                            i15 = i11;
                            z2 = true;
                            i16 = (((bArr[i2 + 10] & 255) << 24) | (bArr[i2 + 7] & 255) | ((bArr[i2 + 8] & 255) << 8) | ((bArr[i2 + 9] & 255) << 16)) * 1000;
                        }
                    }
                    break;
                default:
                    i15 = 0;
                    i12 = 0;
                    i6 = 0;
                    z2 = false;
                    i7 = 0;
                    i14 = 0;
                    i16 = 0;
                    i13 = 0;
                    break;
            }
        } else if (i3 == 0) {
            i6 = (bArr[i2 + 0] & 255) | ((bArr[i2 + 1] & 255) << 8);
            i7 = bArr[i2 + 2];
            i8 = bArr[i2 + 3];
            if (i3 > 4) {
                i9 = bArr[i2 + 4];
                i10 = bArr[i2 + 5];
                i11 = bArr[i2 + 6];
            } else {
                i9 = 0;
                i10 = 0;
                i11 = 0;
            }
            if (i3 <= 7) {
                i12 = i9;
                i13 = i8;
                i14 = i10;
                i15 = i11;
                z2 = true;
                i16 = (((bArr[i2 + 10] & 255) << 24) | (bArr[i2 + 7] & 255) | ((bArr[i2 + 8] & 255) << 8) | ((bArr[i2 + 9] & 255) << 16)) * 1000;
            } else {
                i12 = i9;
                i13 = i8;
                i14 = i10;
                i15 = i11;
                z2 = true;
                i16 = 0;
            }
        } else {
            i15 = 0;
            i12 = 0;
            i6 = 0;
            z2 = true;
            i7 = 0;
            i14 = 0;
            i16 = 0;
            i13 = 0;
        }
        switch (i4) {
            case 91:
                if (z2) {
                    if (i6 == 0 && i7 == 0 && i13 == 0) {
                        if ("convertToNull".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                            return null;
                        }
                        if ("exception".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                            throw new SQLException("Value '0000-00-00' can not be represented as java.sql.Date", SQLError.SQL_STATE_ILLEGAL_ARGUMENT);
                        }
                        i17 = 1;
                        i6 = 1;
                    } else {
                        i22 = i7;
                        i17 = i13;
                    }
                    if (!resultSetImpl.useLegacyDatetimeCode) {
                        return TimeUtil.fastDateCreate(i6, i22, i17, calendar);
                    }
                    return resultSetImpl.fastDateCreate(resultSetImpl.getCalendarInstanceForSessionOrNew(), i6, i22, i17);
                }
                return resultSetImpl.getNativeDateViaParseConversion(i + 1);
            case 92:
                if (z2) {
                    if (!resultSetImpl.useLegacyDatetimeCode) {
                        return TimeUtil.fastTimeCreate(i12, i14, i15, calendar, this.exceptionInterceptor);
                    }
                    return TimeUtil.changeTimezone(mySQLConnection, utcCalendar, calendar, TimeUtil.fastTimeCreate(resultSetImpl.getCalendarInstanceForSessionOrNew(), i12, i14, i15, this.exceptionInterceptor), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
                }
                return resultSetImpl.getNativeTimeViaParseConversion(i + 1, calendar, timeZone, z);
            case 93:
                if (z2) {
                    if (i6 == 0 && i7 == 0 && i13 == 0) {
                        if ("convertToNull".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                            return null;
                        }
                        if ("exception".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                            throw new SQLException("Value '0000-00-00' can not be represented as java.sql.Timestamp", SQLError.SQL_STATE_ILLEGAL_ARGUMENT);
                        }
                        i18 = 1;
                        i19 = 1;
                    } else {
                        i18 = i6;
                        i19 = i7;
                        i22 = i13;
                    }
                    if (!resultSetImpl.useLegacyDatetimeCode) {
                        return TimeUtil.fastTimestampCreate(timeZone, i18, i19, i22, i12, i14, i15, i16);
                    }
                    return TimeUtil.changeTimezone(mySQLConnection, utcCalendar, calendar, resultSetImpl.fastTimestampCreate(resultSetImpl.getCalendarInstanceForSessionOrNew(), i18, i19, i22, i12, i14, i15, i16), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
                }
                return resultSetImpl.getNativeTimestampViaParseConversion(i + 1, calendar, timeZone, z);
            default:
                throw new SQLException("Internal error - conversion method doesn't support this type", SQLError.SQL_STATE_GENERAL_ERROR);
        }
    }

    protected double getNativeDouble(byte[] bArr, int i) {
        return Double.longBitsToDouble((((long) (bArr[i + 7] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 56) | ((long) (bArr[i + 0] & StatementImpl.USES_VARIABLES_UNKNOWN)) | (((long) (bArr[i + 1] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 8) | (((long) (bArr[i + 2] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 16) | (((long) (bArr[i + 3] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 24) | (((long) (bArr[i + 4] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 32) | (((long) (bArr[i + 5] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 40) | (((long) (bArr[i + 6] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 48));
    }

    protected float getNativeFloat(byte[] bArr, int i) {
        return Float.intBitsToFloat(((bArr[i + 3] & StatementImpl.USES_VARIABLES_UNKNOWN) << 24) | (bArr[i + 0] & StatementImpl.USES_VARIABLES_UNKNOWN) | ((bArr[i + 1] & StatementImpl.USES_VARIABLES_UNKNOWN) << 8) | ((bArr[i + 2] & StatementImpl.USES_VARIABLES_UNKNOWN) << 16));
    }

    protected int getNativeInt(byte[] bArr, int i) {
        return ((bArr[i + 3] & StatementImpl.USES_VARIABLES_UNKNOWN) << 24) | (bArr[i + 0] & StatementImpl.USES_VARIABLES_UNKNOWN) | ((bArr[i + 1] & StatementImpl.USES_VARIABLES_UNKNOWN) << 8) | ((bArr[i + 2] & StatementImpl.USES_VARIABLES_UNKNOWN) << 16);
    }

    protected long getNativeLong(byte[] bArr, int i) {
        return (((long) (bArr[i + 7] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 56) | ((long) (bArr[i + 0] & StatementImpl.USES_VARIABLES_UNKNOWN)) | (((long) (bArr[i + 1] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 8) | (((long) (bArr[i + 2] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 16) | (((long) (bArr[i + 3] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 24) | (((long) (bArr[i + 4] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 32) | (((long) (bArr[i + 5] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 40) | (((long) (bArr[i + 6] & StatementImpl.USES_VARIABLES_UNKNOWN)) << 48);
    }

    protected short getNativeShort(byte[] bArr, int i) {
        return (short) (((bArr[i + 1] & StatementImpl.USES_VARIABLES_UNKNOWN) << 8) | (bArr[i + 0] & StatementImpl.USES_VARIABLES_UNKNOWN));
    }

    protected Time getNativeTime(int i, byte[] bArr, int i2, int i3, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        byte b;
        byte b2;
        byte b3 = 0;
        if (i3 != 0) {
            b3 = bArr[i2 + 5];
            b2 = bArr[i2 + 6];
            b = bArr[i2 + 7];
        } else {
            b = 0;
            b2 = 0;
        }
        if (!resultSetImpl.useLegacyDatetimeCode) {
            return TimeUtil.fastTimeCreate(b3, b2, b, calendar, this.exceptionInterceptor);
        }
        Calendar calendarInstanceForSessionOrNew = resultSetImpl.getCalendarInstanceForSessionOrNew();
        return TimeUtil.changeTimezone(mySQLConnection, calendarInstanceForSessionOrNew, calendar, TimeUtil.fastTimeCreate(calendarInstanceForSessionOrNew, b3, b2, b, this.exceptionInterceptor), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0075  */
    /* JADX WARN: Code duplicated, block: B:23:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x0083  */
    /* JADX WARN: Code duplicated, block: B:27:0x008f  */
    /* JADX WARN: Code duplicated, block: B:30:0x0098  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:36:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d6  */
    protected Timestamp getNativeTimestamp(byte[] bArr, int i, int i2, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        Calendar calendarInstanceForSessionOrNew;
        int i13;
        int i14;
        int i15;
        if (i2 != 0) {
            i3 = (bArr[i + 0] & 255) | ((bArr[i + 1] & 255) << 8);
            i4 = bArr[i + 2];
            i5 = bArr[i + 3];
            if (i2 > 4) {
                i13 = bArr[i + 4];
                i14 = bArr[i + 5];
                i15 = bArr[i + 6];
            } else {
                i13 = 0;
                i14 = 0;
                i15 = 0;
            }
            if (i2 > 7) {
                i9 = (((bArr[i + 10] & 255) << 24) | (bArr[i + 7] & 255) | ((bArr[i + 8] & 255) << 8) | ((bArr[i + 9] & 255) << 16)) * 1000;
                i6 = i13;
                i7 = i14;
                i8 = i15;
            } else {
                i6 = i13;
                i7 = i14;
                i8 = i15;
            }
            if (i2 == 0 && (i3 != 0 || i4 != 0 || i5 != 0)) {
                i10 = i3;
                i11 = i4;
                i12 = i5;
            } else {
                if ("convertToNull".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                    return null;
                }
                if ("exception".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                    throw SQLError.createSQLException("Value '0000-00-00' can not be represented as java.sql.Timestamp", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
                }
                i10 = 1;
                i11 = 1;
                i12 = 1;
            }
            if (!resultSetImpl.useLegacyDatetimeCode) {
                return TimeUtil.fastTimestampCreate(timeZone, i10, i11, i12, i6, i7, i8, i9);
            }
            if (mySQLConnection.getUseJDBCCompliantTimezoneShift()) {
                calendarInstanceForSessionOrNew = mySQLConnection.getUtcCalendar();
            } else {
                calendarInstanceForSessionOrNew = resultSetImpl.getCalendarInstanceForSessionOrNew();
            }
            Calendar calendar2 = calendarInstanceForSessionOrNew;
            return TimeUtil.changeTimezone(mySQLConnection, calendar2, calendar, resultSetImpl.fastTimestampCreate(calendar2, i10, i11, i12, i6, i7, i8, i9), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
        }
        i3 = 0;
        i4 = 0;
        i5 = 0;
        i6 = 0;
        i7 = 0;
        i8 = 0;
        i9 = 0;
        if (i2 == 0) {
            if ("convertToNull".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                return null;
            }
            if ("exception".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                throw SQLError.createSQLException("Value '0000-00-00' can not be represented as java.sql.Timestamp", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            }
            i10 = 1;
            i11 = 1;
            i12 = 1;
        } else {
            if ("convertToNull".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                return null;
            }
            if ("exception".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                throw SQLError.createSQLException("Value '0000-00-00' can not be represented as java.sql.Timestamp", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            }
            i10 = 1;
            i11 = 1;
            i12 = 1;
        }
        if (!resultSetImpl.useLegacyDatetimeCode) {
            return TimeUtil.fastTimestampCreate(timeZone, i10, i11, i12, i6, i7, i8, i9);
        }
        if (mySQLConnection.getUseJDBCCompliantTimezoneShift()) {
            calendarInstanceForSessionOrNew = mySQLConnection.getUtcCalendar();
        } else {
            calendarInstanceForSessionOrNew = resultSetImpl.getCalendarInstanceForSessionOrNew();
        }
        Calendar calendar3 = calendarInstanceForSessionOrNew;
        return TimeUtil.changeTimezone(mySQLConnection, calendar3, calendar, resultSetImpl.fastTimestampCreate(calendar3, i10, i11, i12, i6, i7, i8, i9), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
    }

    protected String getString(String str, MySQLConnection mySQLConnection, byte[] bArr, int i, int i2) throws SQLException {
        String string;
        if (mySQLConnection != null && mySQLConnection.getUseUnicode()) {
            try {
                if (str == null) {
                    string = StringUtils.toString(bArr);
                } else {
                    SingleByteCharsetConverter charsetConverter = mySQLConnection.getCharsetConverter(str);
                    if (charsetConverter != null) {
                        string = charsetConverter.toString(bArr, i, i2);
                    } else {
                        string = StringUtils.toString(bArr, i, i2, str);
                    }
                }
                return string;
            } catch (UnsupportedEncodingException unused) {
                throw SQLError.createSQLException(Messages.getString("ResultSet.Unsupported_character_encoding____101") + str + "'.", "0S100", this.exceptionInterceptor);
            }
        }
        return StringUtils.toAsciiString(bArr, i, i2);
    }

    protected Time getTimeFast(int i, byte[] bArr, int i2, int i3, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        int i6;
        if (bArr == null) {
            return null;
        }
        int i7 = 0;
        while (true) {
            if (i7 >= i3) {
                z2 = false;
                break;
            }
            try {
                if (bArr[i2 + i7] == 58) {
                    z2 = true;
                    break;
                }
                i7++;
            } catch (RuntimeException e) {
                SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(e.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
                sQLExceptionCreateSQLException.initCause(e);
                throw sQLExceptionCreateSQLException;
            }
        }
        int i8 = 0;
        while (true) {
            if (i8 >= i3) {
                i8 = -1;
                break;
            }
            if (bArr[i2 + i8] == 46) {
                break;
            }
            i8++;
        }
        boolean z4 = z2;
        int i9 = 0;
        while (true) {
            if (i9 >= i3) {
                z3 = true;
                break;
            }
            byte b = bArr[i2 + i9];
            if (b == 32 || b == 45 || b == 47) {
                z4 = false;
            }
            if (b != 48 && b != 32 && b != 58 && b != 45 && b != 47) {
                if (b != 46) {
                    z3 = false;
                    break;
                }
            }
            i9++;
        }
        if (!z4 && z3) {
            if ("convertToNull".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                return null;
            }
            if ("exception".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                throw SQLError.createSQLException("Value '" + StringUtils.toString(bArr) + "' can not be represented as java.sql.Time", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            }
            return resultSetImpl.fastTimeCreate(calendar, 0, 0, 0);
        }
        Field field = this.metadata[i];
        if (i8 == -1) {
            i8 = i3;
        } else if (i8 + 2 <= i3) {
            StringUtils.getInt(bArr, i2 + i8 + 1, i2 + i3);
            int i10 = i3 - (i8 + 1);
            if (i10 < 9) {
                Math.pow(10.0d, 9 - i10);
            }
        } else {
            throw new IllegalArgumentException();
        }
        if (field.getMysqlType() == 7) {
            if (i8 == 10) {
                int i11 = i2 + 8;
                i5 = StringUtils.getInt(bArr, i2 + 6, i11);
                i6 = StringUtils.getInt(bArr, i11, i2 + 10);
                i4 = 0;
            } else if (i8 == 12 || i8 == 14) {
                int i12 = i2 + i8;
                int i13 = i12 - 4;
                i5 = StringUtils.getInt(bArr, i12 - 6, i13);
                int i14 = i12 - 2;
                i6 = StringUtils.getInt(bArr, i13, i14);
                i4 = StringUtils.getInt(bArr, i14, i12);
            } else if (i8 == 19) {
                int i15 = i2 + i8;
                i5 = StringUtils.getInt(bArr, i15 - 8, i15 - 6);
                i6 = StringUtils.getInt(bArr, i15 - 5, i15 - 3);
                i4 = StringUtils.getInt(bArr, i15 - 2, i15);
            } else {
                throw SQLError.createSQLException(Messages.getString("ResultSet.Timestamp_too_small_to_convert_to_Time_value_in_column__257") + (i + 1) + "(" + field + ").", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            }
            new SQLWarning(Messages.getString("ResultSet.Precision_lost_converting_TIMESTAMP_to_Time_with_getTime()_on_column__261") + i + "(" + field + ").");
        } else if (field.getMysqlType() == 12) {
            i5 = StringUtils.getInt(bArr, i2 + 11, i2 + 13);
            i6 = StringUtils.getInt(bArr, i2 + 14, i2 + 16);
            i4 = StringUtils.getInt(bArr, i2 + 17, i2 + 19);
            new SQLWarning(Messages.getString("ResultSet.Precision_lost_converting_DATETIME_to_Time_with_getTime()_on_column__264") + (i + 1) + "(" + field + ").");
        } else {
            if (field.getMysqlType() == 10) {
                return resultSetImpl.fastTimeCreate(null, 0, 0, 0);
            }
            if (i8 != 5 && i8 != 8) {
                throw SQLError.createSQLException(Messages.getString("ResultSet.Bad_format_for_Time____267") + StringUtils.toString(bArr) + Messages.getString("ResultSet.___in_column__268") + (i + 1), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            }
            int i16 = StringUtils.getInt(bArr, i2 + 0, i2 + 2);
            int i17 = StringUtils.getInt(bArr, i2 + 3, i2 + 5);
            i4 = i8 == 5 ? 0 : StringUtils.getInt(bArr, i2 + 6, i2 + 8);
            i5 = i16;
            i6 = i17;
        }
        Calendar calendarInstanceForSessionOrNew = resultSetImpl.getCalendarInstanceForSessionOrNew();
        if (!resultSetImpl.useLegacyDatetimeCode) {
            return resultSetImpl.fastTimeCreate(calendar, i5, i6, i4);
        }
        return TimeUtil.changeTimezone(mySQLConnection, calendarInstanceForSessionOrNew, calendar, resultSetImpl.fastTimeCreate(calendarInstanceForSessionOrNew, i5, i6, i4), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01e2 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:104:0x0215 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:106:0x021f A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0249  */
    /* JADX WARN: Code duplicated, block: B:110:0x024c A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:113:0x0254 A[Catch: RuntimeException -> 0x0386, LOOP:3: B:109:0x024a->B:113:0x0254, LOOP_END, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:124:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:126:0x02b1 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:129:0x02bb A[Catch: RuntimeException -> 0x0386, LOOP:4: B:125:0x02af->B:129:0x02bb, LOOP_END, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:132:0x02c1 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:133:0x02e8 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0306 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:137:0x0310 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:139:0x0326 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0330 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:143:0x033c A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:145:0x0345 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:152:0x0359 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:154:0x0360 A[Catch: RuntimeException -> 0x0386, TRY_LEAVE, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:172:0x0257 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:173:0x0252 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:174:0x02be A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:175:0x02b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:85:0x015c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:86:0x015e  */
    /* JADX WARN: Code duplicated, block: B:88:0x0161  */
    /* JADX WARN: Code duplicated, block: B:90:0x0165  */
    /* JADX WARN: Code duplicated, block: B:92:0x0169  */
    /* JADX WARN: Code duplicated, block: B:94:0x016d  */
    /* JADX WARN: Code duplicated, block: B:96:0x0171  */
    /* JADX WARN: Code duplicated, block: B:98:0x0175 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:99:0x0178 A[Catch: RuntimeException -> 0x0386, TryCatch #0 {RuntimeException -> 0x0386, blocks: (B:3:0x000d, B:5:0x0013, B:10:0x0022, B:18:0x0034, B:39:0x0061, B:43:0x006f, B:45:0x007b, B:47:0x007f, B:49:0x008d, B:51:0x009d, B:52:0x00bf, B:53:0x00c0, B:55:0x00cd, B:57:0x00d1, B:59:0x00e8, B:64:0x010f, B:69:0x011c, B:71:0x0122, B:98:0x0175, B:99:0x0178, B:100:0x01a3, B:101:0x01a4, B:150:0x0355, B:152:0x0359, B:154:0x0360, B:102:0x01e2, B:104:0x0215, B:106:0x021f, B:107:0x0221, B:110:0x024c, B:115:0x0258, B:119:0x0265, B:121:0x026f, B:122:0x0271, B:123:0x0296, B:113:0x0254, B:126:0x02b1, B:132:0x02c1, B:133:0x02e8, B:129:0x02bb, B:135:0x0306, B:137:0x0310, B:138:0x0312, B:139:0x0326, B:141:0x0330, B:142:0x0332, B:143:0x033c, B:145:0x0345, B:146:0x0347, B:74:0x0129, B:76:0x012d, B:78:0x013b, B:81:0x0151, B:82:0x0156, B:67:0x0118, B:35:0x0059, B:13:0x002a, B:6:0x0018), top: B:159:0x000d }] */
    /* JADX WARN: Instruction removed from duplicated block: B:99:0x0178, please report this as an issue */
    protected Timestamp getTimestampFast(int i, byte[] bArr, int i2, int i3, Calendar calendar, TimeZone timeZone, boolean z, MySQLConnection mySQLConnection, ResultSetImpl resultSetImpl) throws SQLException {
        boolean z2;
        boolean z3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z4;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean z5;
        int i19;
        int i20;
        int i21;
        int i22 = i3;
        try {
            Calendar utcCalendar = mySQLConnection.getUseJDBCCompliantTimezoneShift() ? mySQLConnection.getUtcCalendar() : resultSetImpl.getCalendarInstanceForSessionOrNew();
            int i23 = 0;
            while (true) {
                if (i23 >= i22) {
                    z2 = false;
                    break;
                }
                if (bArr[i2 + i23] == 58) {
                    z2 = true;
                    break;
                }
                i23++;
            }
            boolean z6 = z2;
            int i24 = 0;
            while (true) {
                if (i24 >= i22) {
                    z3 = true;
                    break;
                }
                byte b = bArr[i2 + i24];
                if (b == 32 || b == 45 || b == 47) {
                    z6 = false;
                }
                if (b != 48 && b != 32 && b != 58 && b != 45 && b != 47 && b != 46) {
                    z3 = false;
                    break;
                }
                i24++;
            }
            if (!z6 && z3) {
                if ("convertToNull".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                    return null;
                }
                if ("exception".equals(mySQLConnection.getZeroDateTimeBehavior())) {
                    throw SQLError.createSQLException("Value '" + StringUtils.toString(bArr) + "' can not be represented as java.sql.Timestamp", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
                }
                if (!resultSetImpl.useLegacyDatetimeCode) {
                    return TimeUtil.fastTimestampCreate(timeZone, 1, 1, 1, 0, 0, 0, 0);
                }
                return resultSetImpl.fastTimestampCreate(null, 1, 1, 1, 0, 0, 0, 0);
            }
            if (this.metadata[i].getMysqlType() == 13) {
                if (!resultSetImpl.useLegacyDatetimeCode) {
                    return TimeUtil.fastTimestampCreate(timeZone, StringUtils.getInt(bArr, i2, 4), 1, 1, 0, 0, 0, 0);
                }
                return TimeUtil.changeTimezone(mySQLConnection, utcCalendar, calendar, resultSetImpl.fastTimestampCreate(utcCalendar, StringUtils.getInt(bArr, i2, 4), 1, 1, 0, 0, 0, 0), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
            }
            int i25 = 0;
            while (true) {
                if (i25 >= i22) {
                    i25 = -1;
                    break;
                }
                if (bArr[i2 + i25] == 46) {
                    break;
                }
                i25++;
            }
            int i26 = i2 + i22;
            if (i25 != i26 - 1) {
                if (i25 != -1) {
                    if (i25 + 2 <= i22) {
                        int iPow = StringUtils.getInt(bArr, i2 + i25 + 1, i26);
                        int i27 = i22 - (i25 + 1);
                        if (i27 < 9) {
                            iPow *= (int) Math.pow(10.0d, 9 - i27);
                        }
                        i4 = iPow;
                        i22 = i25;
                    } else {
                        throw new IllegalArgumentException();
                    }
                }
                if (i22 != 2) {
                    i5 = StringUtils.getInt(bArr, i2 + 0, i2 + 2);
                    if (i5 <= 69) {
                        i5 += 100;
                    }
                    i6 = i5 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP;
                    i7 = 1;
                } else {
                    if (i22 != 4) {
                        if (i22 != 6) {
                            int i28 = i2 + 2;
                            i13 = StringUtils.getInt(bArr, i2 + 0, i28);
                            if (i13 <= 69) {
                                i13 += 100;
                            }
                            int i29 = i13 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP;
                            int i30 = i2 + 4;
                            int i31 = StringUtils.getInt(bArr, i28, i30);
                            i8 = StringUtils.getInt(bArr, i30, i2 + 6);
                            i6 = i29;
                            i7 = i31;
                        } else if (i22 != 8) {
                            i14 = 0;
                            while (true) {
                                if (i14 < i22) {
                                    z4 = false;
                                    break;
                                }
                                if (bArr[i2 + i14] == 58) {
                                    z4 = true;
                                    break;
                                }
                                i14++;
                            }
                            if (z4) {
                                int i32 = StringUtils.getInt(bArr, i2 + 0, i2 + 2);
                                int i33 = StringUtils.getInt(bArr, i2 + 3, i2 + 5);
                                i11 = StringUtils.getInt(bArr, i2 + 6, i2 + 8);
                                i9 = i32;
                                i10 = i33;
                                i6 = 1970;
                                i7 = 1;
                                i8 = 1;
                            } else {
                                int i34 = i2 + 4;
                                int i35 = StringUtils.getInt(bArr, i2 + 0, i34);
                                int i36 = i2 + 6;
                                int i37 = StringUtils.getInt(bArr, i34, i36);
                                i15 = StringUtils.getInt(bArr, i36, i2 + 8);
                                i16 = i35 - 1900;
                                i17 = i37 - 1;
                                i8 = i15;
                                i6 = i16;
                                i7 = i17;
                            }
                        } else if (i22 != 10) {
                            if (i22 != 12) {
                                int i38 = i2 + 2;
                                i19 = StringUtils.getInt(bArr, i2 + 0, i38);
                                if (i19 <= 69) {
                                    i19 += 100;
                                }
                                int i39 = i19 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP;
                                int i40 = i2 + 4;
                                int i41 = StringUtils.getInt(bArr, i38, i40);
                                int i42 = i2 + 6;
                                int i43 = StringUtils.getInt(bArr, i40, i42);
                                int i44 = i2 + 8;
                                i20 = StringUtils.getInt(bArr, i42, i44);
                                int i45 = i2 + 10;
                                i21 = StringUtils.getInt(bArr, i44, i45);
                                i11 = StringUtils.getInt(bArr, i45, i2 + 12);
                                i6 = i39;
                                i8 = i43;
                                i7 = i41;
                            } else if (i22 != 14) {
                                if (i22 != 29) {
                                    switch (i22) {
                                        case 19:
                                        case 20:
                                        case 21:
                                        case 22:
                                        case 23:
                                        case 24:
                                        case 25:
                                        case 26:
                                            break;
                                        default:
                                            throw new SQLException("Bad format for Timestamp '" + StringUtils.toString(bArr) + "' in column " + (i + 1) + ".", SQLError.SQL_STATE_ILLEGAL_ARGUMENT);
                                    }
                                }
                                int i46 = StringUtils.getInt(bArr, i2 + 0, i2 + 4);
                                int i47 = StringUtils.getInt(bArr, i2 + 5, i2 + 7);
                                int i48 = StringUtils.getInt(bArr, i2 + 8, i2 + 10);
                                int i49 = StringUtils.getInt(bArr, i2 + 11, i2 + 13);
                                int i50 = StringUtils.getInt(bArr, i2 + 14, i2 + 16);
                                i11 = StringUtils.getInt(bArr, i2 + 17, i2 + 19);
                                i6 = i46;
                                i7 = i47;
                                i8 = i48;
                                i9 = i49;
                                i10 = i50;
                            } else {
                                int i51 = i2 + 4;
                                int i52 = StringUtils.getInt(bArr, i2 + 0, i51);
                                int i53 = i2 + 6;
                                int i54 = StringUtils.getInt(bArr, i51, i53);
                                int i55 = i2 + 8;
                                int i56 = StringUtils.getInt(bArr, i53, i55);
                                int i57 = i2 + 10;
                                i20 = StringUtils.getInt(bArr, i55, i57);
                                int i58 = i2 + 12;
                                i21 = StringUtils.getInt(bArr, i57, i58);
                                i11 = StringUtils.getInt(bArr, i58, i2 + 14);
                                i6 = i52;
                                i7 = i54;
                                i8 = i56;
                            }
                            i9 = i20;
                            i10 = i21;
                        } else {
                            i18 = 0;
                            while (true) {
                                if (i18 < i22) {
                                    z5 = false;
                                    break;
                                }
                                if (bArr[i2 + i18] == 45) {
                                    z5 = true;
                                    break;
                                }
                                i18++;
                            }
                            if (this.metadata[i].getMysqlType() != 10 || z5) {
                                i16 = StringUtils.getInt(bArr, i2 + 0, i2 + 4);
                                i17 = StringUtils.getInt(bArr, i2 + 5, i2 + 7);
                                i15 = StringUtils.getInt(bArr, i2 + 8, i2 + 10);
                                i8 = i15;
                                i6 = i16;
                                i7 = i17;
                            } else {
                                int i59 = i2 + 2;
                                int i60 = StringUtils.getInt(bArr, i2 + 0, i59);
                                if (i60 <= 69) {
                                    i60 += 100;
                                }
                                int i61 = i2 + 4;
                                int i62 = StringUtils.getInt(bArr, i59, i61);
                                int i63 = i2 + 6;
                                int i64 = StringUtils.getInt(bArr, i61, i63);
                                int i65 = i2 + 8;
                                int i66 = StringUtils.getInt(bArr, i63, i65);
                                i10 = StringUtils.getInt(bArr, i65, i2 + 10);
                                i6 = i60 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP;
                                i8 = i64;
                                i7 = i62;
                                i9 = i66;
                            }
                            i11 = 0;
                        }
                        i9 = 0;
                        i10 = 0;
                        i11 = 0;
                    } else {
                        int i67 = i2 + 2;
                        i12 = StringUtils.getInt(bArr, i2 + 0, i67);
                        if (i12 <= 69) {
                            i12 += 100;
                        }
                        i7 = StringUtils.getInt(bArr, i67, i2 + 4);
                        i6 = i12;
                    }
                    if (!resultSetImpl.useLegacyDatetimeCode) {
                        return TimeUtil.fastTimestampCreate(timeZone, i6, i7, i8, i9, i10, i11, i4);
                    }
                    return TimeUtil.changeTimezone(mySQLConnection, utcCalendar, calendar, resultSetImpl.fastTimestampCreate(utcCalendar, i6, i7, i8, i9, i10, i11, i4), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
                }
                i8 = 1;
                i9 = 0;
                i10 = 0;
                i11 = 0;
                if (!resultSetImpl.useLegacyDatetimeCode) {
                    return TimeUtil.fastTimestampCreate(timeZone, i6, i7, i8, i9, i10, i11, i4);
                }
                return TimeUtil.changeTimezone(mySQLConnection, utcCalendar, calendar, resultSetImpl.fastTimestampCreate(utcCalendar, i6, i7, i8, i9, i10, i11, i4), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
            }
            i22--;
            i4 = 0;
            if (i22 != 2) {
                i5 = StringUtils.getInt(bArr, i2 + 0, i2 + 2);
                if (i5 <= 69) {
                    i5 += 100;
                }
                i6 = i5 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP;
                i7 = 1;
            } else {
                if (i22 != 4) {
                    if (i22 != 6) {
                        int i210 = i2 + 2;
                        i13 = StringUtils.getInt(bArr, i2 + 0, i210);
                        if (i13 <= 69) {
                            i13 += 100;
                        }
                        int i211 = i13 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP;
                        int i310 = i2 + 4;
                        int i311 = StringUtils.getInt(bArr, i210, i310);
                        i8 = StringUtils.getInt(bArr, i310, i2 + 6);
                        i6 = i211;
                        i7 = i311;
                    } else if (i22 != 8) {
                        i14 = 0;
                        while (true) {
                            if (i14 < i22) {
                                z4 = false;
                                break;
                            }
                            if (bArr[i2 + i14] == 58) {
                                z4 = true;
                                break;
                            }
                            i14++;
                        }
                        if (z4) {
                            int i312 = StringUtils.getInt(bArr, i2 + 0, i2 + 2);
                            int i313 = StringUtils.getInt(bArr, i2 + 3, i2 + 5);
                            i11 = StringUtils.getInt(bArr, i2 + 6, i2 + 8);
                            i9 = i312;
                            i10 = i313;
                            i6 = 1970;
                            i7 = 1;
                            i8 = 1;
                        } else {
                            int i314 = i2 + 4;
                            int i315 = StringUtils.getInt(bArr, i2 + 0, i314);
                            int i316 = i2 + 6;
                            int i317 = StringUtils.getInt(bArr, i314, i316);
                            i15 = StringUtils.getInt(bArr, i316, i2 + 8);
                            i16 = i315 - 1900;
                            i17 = i317 - 1;
                            i8 = i15;
                            i6 = i16;
                            i7 = i17;
                        }
                    } else if (i22 != 10) {
                        if (i22 != 12) {
                            int i318 = i2 + 2;
                            i19 = StringUtils.getInt(bArr, i2 + 0, i318);
                            if (i19 <= 69) {
                                i19 += 100;
                            }
                            int i319 = i19 + MysqlErrorNumbers.ER_SLAVE_SQL_THREAD_MUST_STOP;
                            int i410 = i2 + 4;
                            int i411 = StringUtils.getInt(bArr, i318, i410);
                            int i412 = i2 + 6;
                            int i413 = StringUtils.getInt(bArr, i410, i412);
                            int i414 = i2 + 8;
                            i20 = StringUtils.getInt(bArr, i412, i414);
                            int i415 = i2 + 10;
                            i21 = StringUtils.getInt(bArr, i414, i415);
                            i11 = StringUtils.getInt(bArr, i415, i2 + 12);
                            i6 = i319;
                            i8 = i413;
                            i7 = i411;
                        } else if (i22 != 14) {
                            if (i22 != 29) {
                                switch (i22) {
                                    case 19:
                                    case 20:
                                    case 21:
                                    case 22:
                                    case 23:
                                    case 24:
                                    case 25:
                                    case 26:
                                        break;
                                    default:
                                        throw new SQLException("Bad format for Timestamp '" + StringUtils.toString(bArr) + "' in column " + (i + 1) + ".", SQLError.SQL_STATE_ILLEGAL_ARGUMENT);
                                }
                            }
                            int i416 = StringUtils.getInt(bArr, i2 + 0, i2 + 4);
                            int i417 = StringUtils.getInt(bArr, i2 + 5, i2 + 7);
                            int i418 = StringUtils.getInt(bArr, i2 + 8, i2 + 10);
                            int i419 = StringUtils.getInt(bArr, i2 + 11, i2 + 13);
                            int i510 = StringUtils.getInt(bArr, i2 + 14, i2 + 16);
                            i11 = StringUtils.getInt(bArr, i2 + 17, i2 + 19);
                            i6 = i416;
                            i7 = i417;
                            i8 = i418;
                            i9 = i419;
                            i10 = i510;
                        } else {
                            int i511 = i2 + 4;
                            int i512 = StringUtils.getInt(bArr, i2 + 0, i511);
                            int i513 = i2 + 6;
                            int i514 = StringUtils.getInt(bArr, i511, i513);
                            int i515 = i2 + 8;
                            int i516 = StringUtils.getInt(bArr, i513, i515);
                            int i517 = i2 + 10;
                            i20 = StringUtils.getInt(bArr, i515, i517);
                            int i518 = i2 + 12;
                            i21 = StringUtils.getInt(bArr, i517, i518);
                            i11 = StringUtils.getInt(bArr, i518, i2 + 14);
                            i6 = i512;
                            i7 = i514;
                            i8 = i516;
                        }
                        i9 = i20;
                        i10 = i21;
                    } else {
                        i18 = 0;
                        while (true) {
                            if (i18 < i22) {
                                z5 = false;
                                break;
                            }
                            if (bArr[i2 + i18] == 45) {
                                z5 = true;
                                break;
                            }
                            i18++;
                        }
                        if (this.metadata[i].getMysqlType() != 10) {
                        }
                        i16 = StringUtils.getInt(bArr, i2 + 0, i2 + 4);
                        i17 = StringUtils.getInt(bArr, i2 + 5, i2 + 7);
                        i15 = StringUtils.getInt(bArr, i2 + 8, i2 + 10);
                        i8 = i15;
                        i6 = i16;
                        i7 = i17;
                    }
                    i9 = 0;
                    i10 = 0;
                    i11 = 0;
                } else {
                    int i68 = i2 + 2;
                    i12 = StringUtils.getInt(bArr, i2 + 0, i68);
                    if (i12 <= 69) {
                        i12 += 100;
                    }
                    i7 = StringUtils.getInt(bArr, i68, i2 + 4);
                    i6 = i12;
                }
                if (!resultSetImpl.useLegacyDatetimeCode) {
                    return TimeUtil.fastTimestampCreate(timeZone, i6, i7, i8, i9, i10, i11, i4);
                }
                return TimeUtil.changeTimezone(mySQLConnection, utcCalendar, calendar, resultSetImpl.fastTimestampCreate(utcCalendar, i6, i7, i8, i9, i10, i11, i4), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
            }
            i8 = 1;
            i9 = 0;
            i10 = 0;
            i11 = 0;
            if (!resultSetImpl.useLegacyDatetimeCode) {
                return TimeUtil.fastTimestampCreate(timeZone, i6, i7, i8, i9, i10, i11, i4);
            }
            return TimeUtil.changeTimezone(mySQLConnection, utcCalendar, calendar, resultSetImpl.fastTimestampCreate(utcCalendar, i6, i7, i8, i9, i10, i11, i4), mySQLConnection.getServerTimezoneTZ(), timeZone, z);
        } catch (RuntimeException e) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException("Cannot convert value '" + getString(i, "ISO8859_1", mySQLConnection) + "' from column " + (i + 1) + " to TIMESTAMP.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.exceptionInterceptor);
            sQLExceptionCreateSQLException.initCause(e);
            throw sQLExceptionCreateSQLException;
        }
    }

    public ResultSetRow setMetadata(Field[] fieldArr) throws SQLException {
        this.metadata = fieldArr;
        return this;
    }
}
