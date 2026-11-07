package com.google.gson.internal.bind.util;

import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes.dex */
public class ISO8601Utils {
    private static final String UTC_ID = "UTC";
    private static final TimeZone TIMEZONE_UTC = TimeZone.getTimeZone(UTC_ID);

    public static String format(Date date) {
        return format(date, false, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z) {
        return format(date, z, TIMEZONE_UTC);
    }

    public static String format(Date date, boolean z, TimeZone timeZone) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        StringBuilder sb = new StringBuilder("yyyy-MM-ddThh:mm:ss".length() + (z ? ".sss".length() : 0) + (timeZone.getRawOffset() == 0 ? "Z" : "+hh:mm").length());
        padInt(sb, gregorianCalendar.get(1), "yyyy".length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(2) + 1, "MM".length());
        sb.append('-');
        padInt(sb, gregorianCalendar.get(5), "dd".length());
        sb.append('T');
        padInt(sb, gregorianCalendar.get(11), "hh".length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(12), "mm".length());
        sb.append(':');
        padInt(sb, gregorianCalendar.get(13), "ss".length());
        if (z) {
            sb.append('.');
            padInt(sb, gregorianCalendar.get(14), "sss".length());
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i = offset / 60000;
            int iAbs = Math.abs(i / 60);
            int iAbs2 = Math.abs(i % 60);
            sb.append(offset >= 0 ? '+' : '-');
            padInt(sb, iAbs, "hh".length());
            sb.append(':');
            padInt(sb, iAbs2, "mm".length());
        } else {
            sb.append(Matrix.MATRIX_TYPE_ZERO);
        }
        return sb.toString();
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00c4 A[Catch: IllegalArgumentException -> 0x01b1, NumberFormatException -> 0x01b3, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x004f, B:19:0x005f, B:20:0x0061, B:22:0x006d, B:23:0x006f, B:25:0x0075, B:29:0x007f, B:35:0x008f, B:37:0x0097, B:38:0x00aa, B:46:0x00be, B:48:0x00c4, B:50:0x00cb, B:74:0x0178, B:54:0x00d5, B:55:0x00f0, B:56:0x00f1, B:60:0x010d, B:62:0x011a, B:65:0x0123, B:67:0x0142, B:70:0x0151, B:71:0x0173, B:73:0x0176, B:59:0x00fc, B:76:0x01a9, B:77:0x01b0, B:40:0x00ae, B:41:0x00b1), top: B:93:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00cb A[Catch: IllegalArgumentException -> 0x01b1, NumberFormatException -> 0x01b3, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x004f, B:19:0x005f, B:20:0x0061, B:22:0x006d, B:23:0x006f, B:25:0x0075, B:29:0x007f, B:35:0x008f, B:37:0x0097, B:38:0x00aa, B:46:0x00be, B:48:0x00c4, B:50:0x00cb, B:74:0x0178, B:54:0x00d5, B:55:0x00f0, B:56:0x00f1, B:60:0x010d, B:62:0x011a, B:65:0x0123, B:67:0x0142, B:70:0x0151, B:71:0x0173, B:73:0x0176, B:59:0x00fc, B:76:0x01a9, B:77:0x01b0, B:40:0x00ae, B:41:0x00b1), top: B:93:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:59:0x00fc A[Catch: IllegalArgumentException -> 0x01b1, NumberFormatException -> 0x01b3, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x004f, B:19:0x005f, B:20:0x0061, B:22:0x006d, B:23:0x006f, B:25:0x0075, B:29:0x007f, B:35:0x008f, B:37:0x0097, B:38:0x00aa, B:46:0x00be, B:48:0x00c4, B:50:0x00cb, B:74:0x0178, B:54:0x00d5, B:55:0x00f0, B:56:0x00f1, B:60:0x010d, B:62:0x011a, B:65:0x0123, B:67:0x0142, B:70:0x0151, B:71:0x0173, B:73:0x0176, B:59:0x00fc, B:76:0x01a9, B:77:0x01b0, B:40:0x00ae, B:41:0x00b1), top: B:93:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0176 A[Catch: IllegalArgumentException -> 0x01b1, NumberFormatException -> 0x01b3, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x004f, B:19:0x005f, B:20:0x0061, B:22:0x006d, B:23:0x006f, B:25:0x0075, B:29:0x007f, B:35:0x008f, B:37:0x0097, B:38:0x00aa, B:46:0x00be, B:48:0x00c4, B:50:0x00cb, B:74:0x0178, B:54:0x00d5, B:55:0x00f0, B:56:0x00f1, B:60:0x010d, B:62:0x011a, B:65:0x0123, B:67:0x0142, B:70:0x0151, B:71:0x0173, B:73:0x0176, B:59:0x00fc, B:76:0x01a9, B:77:0x01b0, B:40:0x00ae, B:41:0x00b1), top: B:93:0x0004 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01a9 A[Catch: IllegalArgumentException -> 0x01b1, NumberFormatException -> 0x01b3, IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, TryCatch #2 {IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException -> 0x01b5, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0035, B:13:0x003b, B:17:0x004f, B:19:0x005f, B:20:0x0061, B:22:0x006d, B:23:0x006f, B:25:0x0075, B:29:0x007f, B:35:0x008f, B:37:0x0097, B:38:0x00aa, B:46:0x00be, B:48:0x00c4, B:50:0x00cb, B:74:0x0178, B:54:0x00d5, B:55:0x00f0, B:56:0x00f1, B:60:0x010d, B:62:0x011a, B:65:0x0123, B:67:0x0142, B:70:0x0151, B:71:0x0173, B:73:0x0176, B:59:0x00fc, B:76:0x01a9, B:77:0x01b0, B:40:0x00ae, B:41:0x00b1), top: B:93:0x0004 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:59:0x00fc, please report this as an issue */
    public static Date parse(String str, ParsePosition parsePosition) throws ParseException {
        String str2;
        int iIndexOfNonDigit;
        int i;
        int i2;
        int i3;
        int i4;
        char cCharAt;
        String strSubstring;
        int length;
        TimeZone timeZone;
        char cCharAt2;
        try {
            int index = parsePosition.getIndex();
            int i5 = index + 4;
            int i6 = parseInt(str, index, i5);
            if (checkOffset(str, i5, '-')) {
                i5++;
            }
            int i7 = i5 + 2;
            int i8 = parseInt(str, i5, i7);
            if (checkOffset(str, i7, '-')) {
                i7++;
            }
            int i9 = i7 + 2;
            int i10 = parseInt(str, i7, i9);
            boolean zCheckOffset = checkOffset(str, i9, 'T');
            if (!zCheckOffset && str.length() <= i9) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar(i6, i8 - 1, i10);
                parsePosition.setIndex(i9);
                return gregorianCalendar.getTime();
            }
            if (zCheckOffset) {
                int i11 = i9 + 1;
                int i12 = i11 + 2;
                i = parseInt(str, i11, i12);
                if (checkOffset(str, i12, ':')) {
                    i12++;
                }
                iIndexOfNonDigit = i12 + 2;
                i2 = parseInt(str, i12, iIndexOfNonDigit);
                if (checkOffset(str, iIndexOfNonDigit, ':')) {
                    iIndexOfNonDigit++;
                }
                if (str.length() > iIndexOfNonDigit && (cCharAt2 = str.charAt(iIndexOfNonDigit)) != 'Z' && cCharAt2 != '+' && cCharAt2 != '-') {
                    int i13 = iIndexOfNonDigit + 2;
                    int i14 = parseInt(str, iIndexOfNonDigit, i13);
                    i4 = 59;
                    if (i14 <= 59 || i14 >= 63) {
                        i4 = i14;
                    }
                    if (checkOffset(str, i13, '.')) {
                        int i15 = i13 + 1;
                        iIndexOfNonDigit = indexOfNonDigit(str, i15 + 1);
                        int iMin = Math.min(iIndexOfNonDigit, i15 + 3);
                        int i16 = parseInt(str, i15, iMin);
                        switch (iMin - i15) {
                            case 1:
                                i16 *= 100;
                                break;
                            case 2:
                                i16 *= 10;
                                break;
                        }
                        i3 = i16;
                    } else {
                        iIndexOfNonDigit = i13;
                        i3 = 0;
                    }
                }
                if (str.length() > iIndexOfNonDigit) {
                    throw new IllegalArgumentException("No time zone indicator");
                }
                cCharAt = str.charAt(iIndexOfNonDigit);
                if (cCharAt == 'Z') {
                    timeZone = TIMEZONE_UTC;
                    length = iIndexOfNonDigit + 1;
                } else {
                    if (cCharAt != '+' && cCharAt != '-') {
                        throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                    }
                    strSubstring = str.substring(iIndexOfNonDigit);
                    if (strSubstring.length() >= 5) {
                        strSubstring = strSubstring + "00";
                    }
                    length = iIndexOfNonDigit + strSubstring.length();
                    if (!"+0000".equals(strSubstring) || "+00:00".equals(strSubstring)) {
                        timeZone = TIMEZONE_UTC;
                    } else {
                        String str3 = "GMT" + strSubstring;
                        TimeZone timeZone2 = TimeZone.getTimeZone(str3);
                        String id = timeZone2.getID();
                        if (!id.equals(str3) && !id.replace(":", "").equals(str3)) {
                            throw new IndexOutOfBoundsException("Mismatching time zone indicator: " + str3 + " given, resolves to " + timeZone2.getID());
                        }
                        timeZone = timeZone2;
                    }
                }
                GregorianCalendar gregorianCalendar2 = new GregorianCalendar(timeZone);
                gregorianCalendar2.setLenient(false);
                gregorianCalendar2.set(1, i6);
                gregorianCalendar2.set(2, i8 - 1);
                gregorianCalendar2.set(5, i10);
                gregorianCalendar2.set(11, i);
                gregorianCalendar2.set(12, i2);
                gregorianCalendar2.set(13, i4);
                gregorianCalendar2.set(14, i3);
                parsePosition.setIndex(length);
                return gregorianCalendar2.getTime();
            }
            iIndexOfNonDigit = i9;
            i = 0;
            i2 = 0;
            i3 = 0;
            i4 = 0;
            if (str.length() > iIndexOfNonDigit) {
                throw new IllegalArgumentException("No time zone indicator");
            }
            cCharAt = str.charAt(iIndexOfNonDigit);
            if (cCharAt == 'Z') {
                timeZone = TIMEZONE_UTC;
                length = iIndexOfNonDigit + 1;
            } else {
                if (cCharAt != '+') {
                    throw new IndexOutOfBoundsException("Invalid time zone indicator '" + cCharAt + "'");
                }
                strSubstring = str.substring(iIndexOfNonDigit);
                if (strSubstring.length() >= 5) {
                    strSubstring = strSubstring + "00";
                }
                length = iIndexOfNonDigit + strSubstring.length();
                if (!"+0000".equals(strSubstring)) {
                    timeZone = TIMEZONE_UTC;
                } else {
                    timeZone = TIMEZONE_UTC;
                }
            }
            GregorianCalendar gregorianCalendar3 = new GregorianCalendar(timeZone);
            gregorianCalendar3.setLenient(false);
            gregorianCalendar3.set(1, i6);
            gregorianCalendar3.set(2, i8 - 1);
            gregorianCalendar3.set(5, i10);
            gregorianCalendar3.set(11, i);
            gregorianCalendar3.set(12, i2);
            gregorianCalendar3.set(13, i4);
            gregorianCalendar3.set(14, i3);
            parsePosition.setIndex(length);
            return gregorianCalendar3.getTime();
        } catch (IndexOutOfBoundsException | NumberFormatException | IllegalArgumentException e) {
            if (str == null) {
                str2 = null;
            } else {
                str2 = '\"' + str + "'";
            }
            String message = e.getMessage();
            if (message == null || message.isEmpty()) {
                message = "(" + e.getClass().getName() + ")";
            }
            ParseException parseException = new ParseException("Failed to parse date [" + str2 + "]: " + message, parsePosition.getIndex());
            parseException.initCause(e);
            throw parseException;
        }
    }

    private static boolean checkOffset(String str, int i, char c) {
        return i < str.length() && str.charAt(i) == c;
    }

    private static int parseInt(String str, int i, int i2) throws NumberFormatException {
        int i3;
        int i4;
        if (i < 0 || i2 > str.length() || i > i2) {
            throw new NumberFormatException(str);
        }
        if (i < i2) {
            i3 = i + 1;
            int iDigit = Character.digit(str.charAt(i), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i4 = -iDigit;
        } else {
            i3 = i;
            i4 = 0;
        }
        while (i3 < i2) {
            int i5 = i3 + 1;
            int iDigit2 = Character.digit(str.charAt(i3), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i, i2));
            }
            i4 = (i4 * 10) - iDigit2;
            i3 = i5;
        }
        return -i4;
    }

    private static void padInt(StringBuilder sb, int i, int i2) {
        String string = Integer.toString(i);
        for (int length = i2 - string.length(); length > 0; length--) {
            sb.append('0');
        }
        sb.append(string);
    }

    private static int indexOfNonDigit(String str, int i) {
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt < '0' || cCharAt > '9') {
                return i;
            }
            i++;
        }
        return str.length();
    }
}
