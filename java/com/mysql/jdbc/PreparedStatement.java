package com.mysql.jdbc;

import com.mysql.jdbc.exceptions.MySQLStatementCancelledException;
import com.mysql.jdbc.exceptions.MySQLTimeoutException;
import com.mysql.jdbc.profiler.ProfilerEvent;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Constructor;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.sql.Array;
import java.sql.ParameterMetaData;
import java.sql.Ref;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.TimeZone;
import org.bouncycastle.pqc.math.linearalgebra.Matrix;

/* JADX INFO: loaded from: classes.dex */
public class PreparedStatement extends StatementImpl implements java.sql.PreparedStatement {
    private static final byte[] HEX_DIGITS;
    private static final Constructor<?> JDBC_4_PSTMT_2_ARG_CTOR;
    private static final Constructor<?> JDBC_4_PSTMT_3_ARG_CTOR;
    private static final Constructor<?> JDBC_4_PSTMT_4_ARG_CTOR;
    protected int batchCommandIndex;
    protected boolean batchHasPlainStatements;
    protected String batchedValuesClause;
    private CharsetEncoder charsetEncoder;
    private boolean compensateForOnDuplicateKeyUpdate;
    private java.sql.DatabaseMetaData dbmd;
    private SimpleDateFormat ddf;
    private boolean doPingInstead;
    protected char firstCharOfStmt;
    protected boolean isLoadDataQuery;
    protected boolean[] isNull;
    private boolean[] isStream;
    protected int numberOfExecutions;
    protected String originalSql;
    protected int parameterCount;
    protected MysqlParameterMetadata parameterMetaData;
    private InputStream[] parameterStreams;
    protected int[] parameterTypes;
    private byte[][] parameterValues;
    protected ParseInfo parseInfo;
    private java.sql.ResultSetMetaData pstmtResultMetaData;
    protected int rewrittenBatchSize;
    protected boolean serverSupportsFracSecs;
    private byte[][] staticSqlStrings;
    private byte[] streamConvertBuf;
    private int[] streamLengths;
    private SimpleDateFormat tdf;
    private SimpleDateFormat tsdf;
    protected boolean useTrueBoolean;
    protected boolean usingAnsiMode;

    interface BatchVisitor {
        BatchVisitor append(byte[] bArr);

        BatchVisitor decrement();

        BatchVisitor increment();

        BatchVisitor merge(byte[] bArr, byte[] bArr2);
    }

    private final char getSuccessor(char c, int i) {
        if (c == 'y' && i == 2) {
            return 'X';
        }
        if (c == 'y' && i < 4) {
            return 'y';
        }
        if (c != 'y') {
            if (c == 'M' && i == 2) {
                return 'Y';
            }
            if (c != 'M' || i >= 3) {
                if (c == 'M' || (c == 'd' && i < 2)) {
                    return 'd';
                }
                if (c == 'd' || (c == 'H' && i < 2)) {
                    return 'H';
                }
                if (c == 'H' || (c == 'm' && i < 2)) {
                    return 'm';
                }
                if (c == 'm') {
                    return 's';
                }
                return (c != 's' || i >= 2) ? 'W' : 's';
            }
        }
        return 'M';
    }

    protected int getParameterIndexOffset() {
        return 0;
    }

    static {
        if (Util.isJdbc4()) {
            try {
                String str = Util.isJdbc42() ? "com.mysql.jdbc.JDBC42PreparedStatement" : "com.mysql.jdbc.JDBC4PreparedStatement";
                JDBC_4_PSTMT_2_ARG_CTOR = Class.forName(str).getConstructor(MySQLConnection.class, String.class);
                JDBC_4_PSTMT_3_ARG_CTOR = Class.forName(str).getConstructor(MySQLConnection.class, String.class, String.class);
                JDBC_4_PSTMT_4_ARG_CTOR = Class.forName(str).getConstructor(MySQLConnection.class, String.class, String.class, ParseInfo.class);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        } else {
            JDBC_4_PSTMT_2_ARG_CTOR = null;
            JDBC_4_PSTMT_3_ARG_CTOR = null;
            JDBC_4_PSTMT_4_ARG_CTOR = null;
        }
        HEX_DIGITS = new byte[]{48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
    }

    public class BatchParams {
        public boolean[] isNull;
        public boolean[] isStream;
        public InputStream[] parameterStreams;
        public byte[][] parameterStrings;
        public int[] streamLengths;

        BatchParams(byte[][] bArr, InputStream[] inputStreamArr, boolean[] zArr, int[] iArr, boolean[] zArr2) {
            this.isNull = null;
            this.isStream = null;
            this.parameterStreams = null;
            this.parameterStrings = (byte[][]) null;
            this.streamLengths = null;
            this.parameterStrings = new byte[bArr.length][];
            this.parameterStreams = new InputStream[inputStreamArr.length];
            this.isStream = new boolean[zArr.length];
            this.streamLengths = new int[iArr.length];
            this.isNull = new boolean[zArr2.length];
            System.arraycopy(bArr, 0, this.parameterStrings, 0, bArr.length);
            System.arraycopy(inputStreamArr, 0, this.parameterStreams, 0, inputStreamArr.length);
            System.arraycopy(zArr, 0, this.isStream, 0, zArr.length);
            System.arraycopy(iArr, 0, this.streamLengths, 0, iArr.length);
            System.arraycopy(zArr2, 0, this.isNull, 0, zArr2.length);
        }
    }

    class EndPoint {
        int begin;
        int end;

        EndPoint(int i, int i2) {
            this.begin = i;
            this.end = i2;
        }
    }

    public static final class ParseInfo {
        private ParseInfo batchHead;
        private ParseInfo batchODKUClause;
        private ParseInfo batchValues;
        boolean canRewriteAsMultiValueInsert;
        String charEncoding;
        char firstStmtChar;
        boolean foundLoadData;
        boolean isOnDuplicateKeyUpdate;
        long lastUsed;
        int locationOfOnDuplicateKeyUpdate;
        boolean parametersInDuplicateKeyClause;
        int statementLength;
        int statementStartPos;
        byte[][] staticSql;
        String valuesClause;

        ParseInfo(String str, MySQLConnection mySQLConnection, java.sql.DatabaseMetaData databaseMetaData, String str2, SingleByteCharsetConverter singleByteCharsetConverter) throws SQLException {
            this(str, mySQLConnection, databaseMetaData, str2, singleByteCharsetConverter, true);
        }

        public ParseInfo(String str, MySQLConnection mySQLConnection, java.sql.DatabaseMetaData databaseMetaData, String str2, SingleByteCharsetConverter singleByteCharsetConverter, boolean z) throws SQLException {
            char c;
            int i;
            int i2;
            int i3;
            this.firstStmtChar = (char) 0;
            this.foundLoadData = false;
            this.lastUsed = 0L;
            this.statementLength = 0;
            this.statementStartPos = 0;
            this.canRewriteAsMultiValueInsert = false;
            this.staticSql = (byte[][]) null;
            this.isOnDuplicateKeyUpdate = false;
            int i4 = -1;
            this.locationOfOnDuplicateKeyUpdate = -1;
            this.parametersInDuplicateKeyClause = false;
            try {
                if (str == null) {
                    throw SQLError.createSQLException(Messages.getString("PreparedStatement.61"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, mySQLConnection.getExceptionInterceptor());
                }
                this.charEncoding = str2;
                this.lastUsed = System.currentTimeMillis();
                String identifierQuoteString = databaseMetaData.getIdentifierQuoteString();
                char cCharAt = (identifierQuoteString == null || identifierQuoteString.equals(" ") || identifierQuoteString.length() <= 0) ? (char) 0 : identifierQuoteString.charAt(0);
                this.statementLength = str.length();
                ArrayList arrayList = new ArrayList();
                boolean zIsNoBackslashEscapesSet = mySQLConnection.isNoBackslashEscapesSet();
                this.statementStartPos = StatementImpl.findStartOfStatement(str);
                int i5 = this.statementStartPos;
                int i6 = 0;
                boolean z2 = false;
                char c2 = 0;
                boolean z3 = false;
                while (i5 < this.statementLength) {
                    char cCharAt2 = str.charAt(i5);
                    if (this.firstStmtChar == 0 && Character.isLetter(cCharAt2)) {
                        this.firstStmtChar = Character.toUpperCase(cCharAt2);
                        if (this.firstStmtChar == 'I') {
                            this.locationOfOnDuplicateKeyUpdate = StatementImpl.getOnDuplicateKeyLocation(str, mySQLConnection.getDontCheckOnDuplicateKeyUpdateInSQL(), mySQLConnection.getRewriteBatchedStatements(), mySQLConnection.isNoBackslashEscapesSet());
                            this.isOnDuplicateKeyUpdate = this.locationOfOnDuplicateKeyUpdate != i4;
                        }
                    }
                    if (zIsNoBackslashEscapesSet || cCharAt2 != '\\' || i5 >= this.statementLength - 1) {
                        if (!z2 && cCharAt != 0 && cCharAt2 == cCharAt) {
                            z3 = !z3;
                        } else if (!z3) {
                            if (z2) {
                                if ((cCharAt2 == '\'' || cCharAt2 == '\"') && cCharAt2 == c2) {
                                    if (i5 < this.statementLength - 1) {
                                        int i7 = i5 + 1;
                                        if (str.charAt(i7) == c2) {
                                            i5 = i7;
                                        }
                                    }
                                    z2 = !z2;
                                } else {
                                    z2 = ((cCharAt2 == '\'' || cCharAt2 == '\"') && cCharAt2 == c2) ? !z2 : z2;
                                }
                                c2 = 0;
                            } else if (cCharAt2 == '#' || (cCharAt2 == '-' && (i3 = i5 + 1) < this.statementLength && str.charAt(i3) == '-')) {
                                int i8 = this.statementLength - 1;
                                while (i5 < i8) {
                                    char cCharAt3 = str.charAt(i5);
                                    if (cCharAt3 == '\r' || cCharAt3 == '\n') {
                                        break;
                                        break;
                                    }
                                    i5++;
                                }
                            } else if (cCharAt2 == '/' && (i = i5 + 1) < this.statementLength) {
                                char c3 = '*';
                                if (str.charAt(i) == '*') {
                                    int i9 = i5 + 2;
                                    int i10 = i9;
                                    while (i9 < this.statementLength) {
                                        i10++;
                                        if (str.charAt(i9) == c3 && (i2 = i9 + 1) < this.statementLength && str.charAt(i2) == '/') {
                                            i10++;
                                            if (i10 >= this.statementLength) {
                                                break;
                                            }
                                            cCharAt2 = str.charAt(i10);
                                            break;
                                        }
                                        i9++;
                                        c3 = '*';
                                    }
                                    i5 = i10;
                                }
                            } else if (cCharAt2 == '\'' || cCharAt2 == '\"') {
                                c2 = cCharAt2;
                                z2 = true;
                            }
                        }
                        if (cCharAt2 == '?' && !z2 && !z3) {
                            arrayList.add(new int[]{i6, i5});
                            int i11 = i5 + 1;
                            if (this.isOnDuplicateKeyUpdate && i5 > this.locationOfOnDuplicateKeyUpdate) {
                                this.parametersInDuplicateKeyClause = true;
                            }
                            i6 = i11;
                        }
                    } else {
                        i5++;
                    }
                    i5++;
                    i4 = -1;
                }
                if (this.firstStmtChar == 'L' && StringUtils.startsWithIgnoreCaseAndWs(str, "LOAD DATA")) {
                    this.foundLoadData = true;
                    c = 0;
                } else {
                    c = 0;
                    this.foundLoadData = false;
                }
                int[] iArr = new int[2];
                iArr[c] = i6;
                iArr[1] = this.statementLength;
                arrayList.add(iArr);
                this.staticSql = new byte[arrayList.size()][];
                for (int i12 = 0; i12 < this.staticSql.length; i12++) {
                    int[] iArr2 = (int[]) arrayList.get(i12);
                    int i13 = iArr2[1];
                    int i14 = iArr2[0];
                    int i15 = i13 - i14;
                    if (this.foundLoadData) {
                        this.staticSql[i12] = StringUtils.getBytes(str, i14, i15);
                    } else if (str2 == null) {
                        byte[] bArr = new byte[i15];
                        for (int i16 = 0; i16 < i15; i16++) {
                            bArr[i16] = (byte) str.charAt(i14 + i16);
                        }
                        this.staticSql[i12] = bArr;
                    } else if (singleByteCharsetConverter != null) {
                        this.staticSql[i12] = StringUtils.getBytes(str, singleByteCharsetConverter, str2, mySQLConnection.getServerCharset(), i14, i15, mySQLConnection.parserKnowsUnicode(), mySQLConnection.getExceptionInterceptor());
                    } else {
                        this.staticSql[i12] = StringUtils.getBytes(str, str2, mySQLConnection.getServerCharset(), i14, i15, mySQLConnection.parserKnowsUnicode(), mySQLConnection, mySQLConnection.getExceptionInterceptor());
                    }
                }
                if (z) {
                    this.canRewriteAsMultiValueInsert = PreparedStatement.canRewrite(str, this.isOnDuplicateKeyUpdate, this.locationOfOnDuplicateKeyUpdate, this.statementStartPos) && !this.parametersInDuplicateKeyClause;
                    if (this.canRewriteAsMultiValueInsert && mySQLConnection.getRewriteBatchedStatements()) {
                        buildRewriteBatchedParams(str, mySQLConnection, databaseMetaData, str2, singleByteCharsetConverter);
                    }
                }
            } catch (StringIndexOutOfBoundsException e) {
                SQLException sQLException = new SQLException("Parse error for " + str);
                sQLException.initCause(e);
                throw sQLException;
            }
        }

        private void buildRewriteBatchedParams(String str, MySQLConnection mySQLConnection, java.sql.DatabaseMetaData databaseMetaData, String str2, SingleByteCharsetConverter singleByteCharsetConverter) throws SQLException {
            String strSubstring = str;
            this.valuesClause = extractValuesClause(strSubstring, mySQLConnection.getMetaData().getIdentifierQuoteString());
            String strSubstring2 = this.isOnDuplicateKeyUpdate ? strSubstring.substring(this.locationOfOnDuplicateKeyUpdate) : null;
            if (this.isOnDuplicateKeyUpdate) {
                strSubstring = strSubstring.substring(0, this.locationOfOnDuplicateKeyUpdate);
            }
            this.batchHead = new ParseInfo(strSubstring, mySQLConnection, databaseMetaData, str2, singleByteCharsetConverter, false);
            this.batchValues = new ParseInfo("," + this.valuesClause, mySQLConnection, databaseMetaData, str2, singleByteCharsetConverter, false);
            this.batchODKUClause = null;
            if (strSubstring2 == null || strSubstring2.length() <= 0) {
                return;
            }
            this.batchODKUClause = new ParseInfo("," + this.valuesClause + " " + strSubstring2, mySQLConnection, databaseMetaData, str2, singleByteCharsetConverter, false);
        }

        private String extractValuesClause(String str, String str2) throws SQLException {
            int iIndexOfIgnoreCase;
            int iIndexOf;
            int iLastIndexOf;
            int i = this.statementStartPos;
            loop0: while (true) {
                int i2 = i;
                while (true) {
                    iIndexOfIgnoreCase = -1;
                    while (true) {
                        if (iIndexOfIgnoreCase == -1) {
                            if (str2.length() > 0) {
                                iIndexOfIgnoreCase = StringUtils.indexOfIgnoreCase(i2, str, "VALUES", str2, str2, StringUtils.SEARCH_MODE__MRK_COM_WS);
                            } else {
                                iIndexOfIgnoreCase = StringUtils.indexOfIgnoreCase(i2, str, "VALUES");
                            }
                            if (iIndexOfIgnoreCase <= 0) {
                                break loop0;
                            }
                            char cCharAt = str.charAt(iIndexOfIgnoreCase - 1);
                            if (Character.isWhitespace(cCharAt) || cCharAt == ')' || cCharAt == '`') {
                                int i3 = iIndexOfIgnoreCase + 6;
                                char cCharAt2 = str.charAt(i3);
                                if (!Character.isWhitespace(cCharAt2) && cCharAt2 != '(') {
                                    i2 = i3;
                                }
                            }
                        } else {
                            break loop0;
                        }
                    }
                }
                i = iIndexOfIgnoreCase + 6;
            }
            if (iIndexOfIgnoreCase == -1 || (iIndexOf = str.indexOf(40, iIndexOfIgnoreCase + 6)) == -1 || (iLastIndexOf = str.lastIndexOf(41)) == -1) {
                return null;
            }
            if (this.isOnDuplicateKeyUpdate) {
                iLastIndexOf = this.locationOfOnDuplicateKeyUpdate - 1;
            }
            return str.substring(iIndexOf, iLastIndexOf + 1);
        }

        synchronized ParseInfo getParseInfoForBatch(int i) {
            AppendingBatchVisitor appendingBatchVisitor;
            appendingBatchVisitor = new AppendingBatchVisitor();
            buildInfoForBatch(i, appendingBatchVisitor);
            return new ParseInfo(appendingBatchVisitor.getStaticSqlStrings(), this.firstStmtChar, this.foundLoadData, this.isOnDuplicateKeyUpdate, this.locationOfOnDuplicateKeyUpdate, this.statementLength, this.statementStartPos);
        }

        String getSqlForBatch(int i) throws UnsupportedEncodingException {
            return getSqlForBatch(getParseInfoForBatch(i));
        }

        String getSqlForBatch(ParseInfo parseInfo) throws UnsupportedEncodingException {
            byte[][] bArr = parseInfo.staticSql;
            int length = bArr.length;
            int i = 0;
            int length2 = 0;
            for (byte[] bArr2 : bArr) {
                length2 = length2 + bArr2.length + 1;
            }
            StringBuilder sb = new StringBuilder(length2);
            while (true) {
                int i2 = length - 1;
                if (i < i2) {
                    sb.append(StringUtils.toString(bArr[i], this.charEncoding));
                    sb.append("?");
                    i++;
                } else {
                    sb.append(StringUtils.toString(bArr[i2]));
                    return sb.toString();
                }
            }
        }

        private void buildInfoForBatch(int i, BatchVisitor batchVisitor) {
            byte[][] bArr = this.batchHead.staticSql;
            int length = bArr.length;
            if (length > 1) {
                for (int i2 = 0; i2 < length - 1; i2++) {
                    batchVisitor.append(bArr[i2]).increment();
                }
            }
            byte[] bArr2 = bArr[length - 1];
            byte[][] bArr3 = this.batchValues.staticSql;
            byte[] bArr4 = bArr3[0];
            batchVisitor.merge(bArr2, bArr4).increment();
            int i3 = i - 1;
            if (this.batchODKUClause != null) {
                i3--;
            }
            int length2 = bArr3.length - 1;
            byte[] bArr5 = bArr3[length2];
            for (int i4 = 0; i4 < i3; i4++) {
                for (int i5 = 1; i5 < length2; i5++) {
                    batchVisitor.append(bArr3[i5]).increment();
                }
                batchVisitor.merge(bArr5, bArr4).increment();
            }
            if (this.batchODKUClause != null) {
                byte[][] bArr6 = this.batchODKUClause.staticSql;
                batchVisitor.decrement().merge(bArr5, bArr6[0]).increment();
                int length3 = bArr6.length;
                if (i <= 1) {
                    batchVisitor.decrement().append(bArr6[length3 - 1]);
                    return;
                }
                for (int i6 = 1; i6 < length3; i6++) {
                    batchVisitor.append(bArr6[i6]).increment();
                }
                return;
            }
            batchVisitor.decrement().append(this.staticSql[this.staticSql.length - 1]);
        }

        private ParseInfo(byte[][] bArr, char c, boolean z, boolean z2, int i, int i2, int i3) {
            this.firstStmtChar = (char) 0;
            this.foundLoadData = false;
            this.lastUsed = 0L;
            this.statementLength = 0;
            this.statementStartPos = 0;
            this.canRewriteAsMultiValueInsert = false;
            this.staticSql = (byte[][]) null;
            this.isOnDuplicateKeyUpdate = false;
            this.locationOfOnDuplicateKeyUpdate = -1;
            this.parametersInDuplicateKeyClause = false;
            this.firstStmtChar = c;
            this.foundLoadData = z;
            this.isOnDuplicateKeyUpdate = z2;
            this.locationOfOnDuplicateKeyUpdate = i;
            this.statementLength = i2;
            this.statementStartPos = i3;
            this.staticSql = bArr;
        }
    }

    static class AppendingBatchVisitor implements BatchVisitor {
        LinkedList<byte[]> statementComponents = new LinkedList<>();

        @Override // com.mysql.jdbc.PreparedStatement.BatchVisitor
        public BatchVisitor increment() {
            return this;
        }

        AppendingBatchVisitor() {
        }

        @Override // com.mysql.jdbc.PreparedStatement.BatchVisitor
        public BatchVisitor append(byte[] bArr) {
            this.statementComponents.addLast(bArr);
            return this;
        }

        @Override // com.mysql.jdbc.PreparedStatement.BatchVisitor
        public BatchVisitor decrement() {
            this.statementComponents.removeLast();
            return this;
        }

        @Override // com.mysql.jdbc.PreparedStatement.BatchVisitor
        public BatchVisitor merge(byte[] bArr, byte[] bArr2) {
            byte[] bArr3 = new byte[bArr.length + bArr2.length];
            System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
            System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
            this.statementComponents.addLast(bArr3);
            return this;
        }

        public byte[][] getStaticSqlStrings() {
            byte[][] bArr = new byte[this.statementComponents.size()][];
            this.statementComponents.toArray(bArr);
            return bArr;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Iterator<byte[]> it = this.statementComponents.iterator();
            while (it.hasNext()) {
                sb.append(StringUtils.toString(it.next()));
            }
            return sb.toString();
        }
    }

    protected static int readFully(Reader reader, char[] cArr, int i) throws IOException {
        int i2 = 0;
        while (i2 < i) {
            int i3 = reader.read(cArr, i2, i - i2);
            if (i3 < 0) {
                break;
            }
            i2 += i3;
        }
        return i2;
    }

    protected static PreparedStatement getInstance(MySQLConnection mySQLConnection, String str) throws SQLException {
        return !Util.isJdbc4() ? new PreparedStatement(mySQLConnection, str) : (PreparedStatement) Util.handleNewInstance(JDBC_4_PSTMT_2_ARG_CTOR, new Object[]{mySQLConnection, str}, mySQLConnection.getExceptionInterceptor());
    }

    protected static PreparedStatement getInstance(MySQLConnection mySQLConnection, String str, String str2) throws SQLException {
        return !Util.isJdbc4() ? new PreparedStatement(mySQLConnection, str, str2) : (PreparedStatement) Util.handleNewInstance(JDBC_4_PSTMT_3_ARG_CTOR, new Object[]{mySQLConnection, str, str2}, mySQLConnection.getExceptionInterceptor());
    }

    protected static PreparedStatement getInstance(MySQLConnection mySQLConnection, String str, String str2, ParseInfo parseInfo) throws SQLException {
        return !Util.isJdbc4() ? new PreparedStatement(mySQLConnection, str, str2, parseInfo) : (PreparedStatement) Util.handleNewInstance(JDBC_4_PSTMT_4_ARG_CTOR, new Object[]{mySQLConnection, str, str2, parseInfo}, mySQLConnection.getExceptionInterceptor());
    }

    public PreparedStatement(MySQLConnection mySQLConnection, String str) throws SQLException {
        super(mySQLConnection, str);
        this.batchHasPlainStatements = false;
        this.dbmd = null;
        this.firstCharOfStmt = (char) 0;
        this.isLoadDataQuery = false;
        this.isNull = null;
        this.isStream = null;
        this.numberOfExecutions = 0;
        this.originalSql = null;
        this.parameterStreams = null;
        byte[][] bArr = (byte[][]) null;
        this.parameterValues = bArr;
        this.parameterTypes = null;
        this.staticSqlStrings = bArr;
        this.streamConvertBuf = null;
        this.streamLengths = null;
        this.tsdf = null;
        this.useTrueBoolean = false;
        this.compensateForOnDuplicateKeyUpdate = false;
        this.batchCommandIndex = -1;
        this.rewrittenBatchSize = 0;
        detectFractionalSecondsSupport();
        this.compensateForOnDuplicateKeyUpdate = this.connection.getCompensateOnDuplicateKeyUpdateCounts();
    }

    protected void detectFractionalSecondsSupport() throws SQLException {
        this.serverSupportsFracSecs = this.connection != null && this.connection.versionMeetsMinimum(5, 6, 4);
    }

    public PreparedStatement(MySQLConnection mySQLConnection, String str, String str2) throws SQLException {
        super(mySQLConnection, str2);
        this.batchHasPlainStatements = false;
        this.dbmd = null;
        this.firstCharOfStmt = (char) 0;
        this.isLoadDataQuery = false;
        this.isNull = null;
        this.isStream = null;
        this.numberOfExecutions = 0;
        this.originalSql = null;
        this.parameterStreams = null;
        byte[][] bArr = (byte[][]) null;
        this.parameterValues = bArr;
        this.parameterTypes = null;
        this.staticSqlStrings = bArr;
        this.streamConvertBuf = null;
        this.streamLengths = null;
        this.tsdf = null;
        this.useTrueBoolean = false;
        this.compensateForOnDuplicateKeyUpdate = false;
        this.batchCommandIndex = -1;
        this.rewrittenBatchSize = 0;
        if (str == null) {
            throw SQLError.createSQLException(Messages.getString("PreparedStatement.0"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
        }
        detectFractionalSecondsSupport();
        this.originalSql = str;
        this.doPingInstead = this.originalSql.startsWith("/* ping */");
        this.dbmd = this.connection.getMetaData();
        this.useTrueBoolean = this.connection.versionMeetsMinimum(3, 21, 23);
        this.parseInfo = new ParseInfo(str, this.connection, this.dbmd, this.charEncoding, this.charConverter);
        initializeFromParseInfo();
        this.compensateForOnDuplicateKeyUpdate = this.connection.getCompensateOnDuplicateKeyUpdateCounts();
        if (mySQLConnection.getRequiresEscapingEncoder()) {
            this.charsetEncoder = Charset.forName(mySQLConnection.getEncoding()).newEncoder();
        }
    }

    public PreparedStatement(MySQLConnection mySQLConnection, String str, String str2, ParseInfo parseInfo) throws SQLException {
        super(mySQLConnection, str2);
        this.batchHasPlainStatements = false;
        this.dbmd = null;
        this.firstCharOfStmt = (char) 0;
        this.isLoadDataQuery = false;
        this.isNull = null;
        this.isStream = null;
        this.numberOfExecutions = 0;
        this.originalSql = null;
        this.parameterStreams = null;
        byte[][] bArr = (byte[][]) null;
        this.parameterValues = bArr;
        this.parameterTypes = null;
        this.staticSqlStrings = bArr;
        this.streamConvertBuf = null;
        this.streamLengths = null;
        this.tsdf = null;
        this.useTrueBoolean = false;
        this.compensateForOnDuplicateKeyUpdate = false;
        this.batchCommandIndex = -1;
        this.rewrittenBatchSize = 0;
        if (str == null) {
            throw SQLError.createSQLException(Messages.getString("PreparedStatement.1"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
        }
        detectFractionalSecondsSupport();
        this.originalSql = str;
        this.dbmd = this.connection.getMetaData();
        this.useTrueBoolean = this.connection.versionMeetsMinimum(3, 21, 23);
        this.parseInfo = parseInfo;
        this.usingAnsiMode = !this.connection.useAnsiQuotedIdentifiers();
        initializeFromParseInfo();
        this.compensateForOnDuplicateKeyUpdate = this.connection.getCompensateOnDuplicateKeyUpdateCounts();
        if (mySQLConnection.getRequiresEscapingEncoder()) {
            this.charsetEncoder = Charset.forName(mySQLConnection.getEncoding()).newEncoder();
        }
    }

    public void addBatch() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.batchedArgs == null) {
                this.batchedArgs = new ArrayList();
            }
            for (int i = 0; i < this.parameterValues.length; i++) {
                checkAllParametersSet(this.parameterValues[i], this.parameterStreams[i], i);
            }
            this.batchedArgs.add(new BatchParams(this.parameterValues, this.parameterStreams, this.isStream, this.streamLengths, this.isNull));
        }
    }

    @Override // com.mysql.jdbc.StatementImpl, java.sql.Statement
    public void addBatch(String str) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            this.batchHasPlainStatements = true;
            super.addBatch(str);
        }
    }

    public String asSql() throws SQLException {
        return asSql(false);
    }

    public String asSql(boolean z) throws SQLException {
        String string;
        byte[] bArr;
        boolean z2;
        synchronized (checkClosed().getConnectionMutex()) {
            StringBuilder sb = new StringBuilder();
            try {
                int parameterIndexOffset = this.parameterCount + getParameterIndexOffset();
                Object obj = this.batchCommandIndex != -1 ? this.batchedArgs.get(this.batchCommandIndex) : null;
                for (int i = 0; i < parameterIndexOffset; i++) {
                    if (this.charEncoding != null) {
                        sb.append(StringUtils.toString(this.staticSqlStrings[i], this.charEncoding));
                    } else {
                        sb.append(StringUtils.toString(this.staticSqlStrings[i]));
                    }
                    if (obj != null && (obj instanceof String)) {
                        sb.append((String) obj);
                    } else {
                        if (this.batchCommandIndex == -1) {
                            bArr = this.parameterValues[i];
                        } else {
                            bArr = ((BatchParams) obj).parameterStrings[i];
                        }
                        if (this.batchCommandIndex == -1) {
                            z2 = this.isStream[i];
                        } else {
                            z2 = ((BatchParams) obj).isStream[i];
                        }
                        if (bArr == null && !z2) {
                            if (z) {
                                sb.append("'");
                            }
                            sb.append("** NOT SPECIFIED **");
                            if (z) {
                                sb.append("'");
                            }
                        } else if (z2) {
                            if (z) {
                                sb.append("'");
                            }
                            sb.append("** STREAM DATA **");
                            if (z) {
                                sb.append("'");
                            }
                        } else if (this.charConverter != null) {
                            sb.append(this.charConverter.toString(bArr));
                        } else if (this.charEncoding != null) {
                            sb.append(new String(bArr, this.charEncoding));
                        } else {
                            sb.append(StringUtils.toAsciiString(bArr));
                        }
                    }
                }
                if (this.charEncoding != null) {
                    sb.append(StringUtils.toString(this.staticSqlStrings[this.parameterCount + getParameterIndexOffset()], this.charEncoding));
                } else {
                    sb.append(StringUtils.toAsciiString(this.staticSqlStrings[this.parameterCount + getParameterIndexOffset()]));
                }
                string = sb.toString();
            } catch (UnsupportedEncodingException unused) {
                throw new RuntimeException(Messages.getString("PreparedStatement.32") + this.charEncoding + Messages.getString("PreparedStatement.33"));
            }
        }
        return string;
    }

    @Override // com.mysql.jdbc.StatementImpl, java.sql.Statement
    public void clearBatch() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            this.batchHasPlainStatements = false;
            super.clearBatch();
        }
    }

    public void clearParameters() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            for (int i = 0; i < this.parameterValues.length; i++) {
                this.parameterValues[i] = null;
                this.parameterStreams[i] = null;
                this.isStream[i] = false;
                this.isNull[i] = false;
                this.parameterTypes[i] = 0;
            }
        }
    }

    private final void escapeblockFast(byte[] bArr, Buffer buffer, int i) throws SQLException {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            byte b = bArr[i3];
            if (b == 0) {
                if (i3 > i2) {
                    buffer.writeBytesNoNull(bArr, i2, i3 - i2);
                }
                buffer.writeByte((byte) 92);
                buffer.writeByte((byte) 48);
                i2 = i3 + 1;
            } else if (b == 92 || b == 39 || (!this.usingAnsiMode && b == 34)) {
                if (i3 > i2) {
                    buffer.writeBytesNoNull(bArr, i2, i3 - i2);
                }
                buffer.writeByte((byte) 92);
                i2 = i3;
            }
        }
        if (i2 < i) {
            buffer.writeBytesNoNull(bArr, i2, i - i2);
        }
    }

    private final void escapeblockFast(byte[] bArr, ByteArrayOutputStream byteArrayOutputStream, int i) {
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            byte b = bArr[i3];
            if (b == 0) {
                if (i3 > i2) {
                    byteArrayOutputStream.write(bArr, i2, i3 - i2);
                }
                byteArrayOutputStream.write(92);
                byteArrayOutputStream.write(48);
                i2 = i3 + 1;
            } else if (b == 92 || b == 39 || (!this.usingAnsiMode && b == 34)) {
                if (i3 > i2) {
                    byteArrayOutputStream.write(bArr, i2, i3 - i2);
                }
                byteArrayOutputStream.write(92);
                i2 = i3;
            }
        }
        if (i2 < i) {
            byteArrayOutputStream.write(bArr, i2, i - i2);
        }
    }

    protected boolean checkReadOnlySafeStatement() throws SQLException {
        boolean z;
        synchronized (checkClosed().getConnectionMutex()) {
            z = this.firstCharOfStmt == 'S' || !this.connection.isReadOnly();
        }
        return z;
    }

    public boolean execute() throws SQLException {
        String str;
        boolean z;
        synchronized (checkClosed().getConnectionMutex()) {
            MySQLConnection mySQLConnection = this.connection;
            if (!this.doPingInstead && !checkReadOnlySafeStatement()) {
                throw SQLError.createSQLException(Messages.getString("PreparedStatement.20") + Messages.getString("PreparedStatement.21"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            boolean z2 = false;
            this.lastQueryIsOnDupKeyUpdate = false;
            if (this.retrieveGeneratedKeys) {
                this.lastQueryIsOnDupKeyUpdate = containsOnDuplicateKeyUpdateInSQL();
            }
            this.batchedGeneratedKeys = null;
            resetCancelledState();
            implicitlyCloseAllOpenResults();
            clearWarnings();
            if (this.doPingInstead) {
                doPingInstead();
                return true;
            }
            setupStreamingTimeout(mySQLConnection);
            Buffer bufferFillSendPacket = fillSendPacket();
            if (mySQLConnection.getCatalog().equals(this.currentCatalog)) {
                str = null;
            } else {
                String catalog = mySQLConnection.getCatalog();
                mySQLConnection.setCatalog(this.currentCatalog);
                str = catalog;
            }
            CachedResultSetMetaData cachedMetaData = mySQLConnection.getCacheResultSetMetadata() ? mySQLConnection.getCachedMetaData(this.originalSql) : null;
            Field[] fieldArr = cachedMetaData != null ? cachedMetaData.fields : null;
            if (this.retrieveGeneratedKeys) {
                boolean zIsReadInfoMsgEnabled = mySQLConnection.isReadInfoMsgEnabled();
                mySQLConnection.setReadInfoMsgEnabled(true);
                z = zIsReadInfoMsgEnabled;
            } else {
                z = false;
            }
            mySQLConnection.setSessionMaxRows(this.firstCharOfStmt == 'S' ? this.maxRows : -1);
            ResultSetInternalMethods resultSetInternalMethodsExecuteInternal = executeInternal(this.maxRows, bufferFillSendPacket, createStreamingResultSet(), this.firstCharOfStmt == 'S', fieldArr, false);
            if (cachedMetaData != null) {
                mySQLConnection.initializeResultsMetadataFromCache(this.originalSql, cachedMetaData, resultSetInternalMethodsExecuteInternal);
            } else if (resultSetInternalMethodsExecuteInternal.reallyResult() && mySQLConnection.getCacheResultSetMetadata()) {
                mySQLConnection.initializeResultsMetadataFromCache(this.originalSql, null, resultSetInternalMethodsExecuteInternal);
            }
            if (this.retrieveGeneratedKeys) {
                mySQLConnection.setReadInfoMsgEnabled(z);
                resultSetInternalMethodsExecuteInternal.setFirstCharOfQuery(this.firstCharOfStmt);
            }
            if (str != null) {
                mySQLConnection.setCatalog(str);
            }
            if (resultSetInternalMethodsExecuteInternal != null) {
                this.lastInsertId = resultSetInternalMethodsExecuteInternal.getUpdateID();
                this.results = resultSetInternalMethodsExecuteInternal;
            }
            if (resultSetInternalMethodsExecuteInternal != null && resultSetInternalMethodsExecuteInternal.reallyResult()) {
                z2 = true;
            }
            return z2;
        }
    }

    @Override // com.mysql.jdbc.StatementImpl
    protected long[] executeBatchInternal() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.connection.isReadOnly()) {
                throw new SQLException(Messages.getString("PreparedStatement.25") + Messages.getString("PreparedStatement.26"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT);
            }
            if (this.batchedArgs != null && this.batchedArgs.size() != 0) {
                int i = this.timeoutInMillis;
                this.timeoutInMillis = 0;
                resetCancelledState();
                try {
                    statementBegins();
                    clearWarnings();
                    if (!this.batchHasPlainStatements && this.connection.getRewriteBatchedStatements()) {
                        if (canRewriteAsMultiValueInsertAtSqlLevel()) {
                            long[] jArrExecuteBatchedInserts = executeBatchedInserts(i);
                            this.statementExecuting.set(false);
                            clearBatch();
                            return jArrExecuteBatchedInserts;
                        }
                        if (this.connection.versionMeetsMinimum(4, 1, 0) && !this.batchHasPlainStatements && this.batchedArgs != null && this.batchedArgs.size() > 3) {
                            long[] jArrExecutePreparedBatchAsMultiStatement = executePreparedBatchAsMultiStatement(i);
                            this.statementExecuting.set(false);
                            clearBatch();
                            return jArrExecutePreparedBatchAsMultiStatement;
                        }
                    }
                    long[] jArrExecuteBatchSerially = executeBatchSerially(i);
                    this.statementExecuting.set(false);
                    clearBatch();
                    return jArrExecuteBatchSerially;
                } catch (Throwable th) {
                    this.statementExecuting.set(false);
                    clearBatch();
                    throw th;
                }
            }
            return new long[0];
        }
    }

    public boolean canRewriteAsMultiValueInsertAtSqlLevel() throws SQLException {
        return this.parseInfo.canRewriteAsMultiValueInsert;
    }

    protected int getLocationOfOnDuplicateKeyUpdate() throws SQLException {
        return this.parseInfo.locationOfOnDuplicateKeyUpdate;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0196 A[Catch: all -> 0x01a5, TRY_ENTER, TryCatch #3 {all -> 0x01a5, blocks: (B:89:0x016a, B:102:0x0196, B:103:0x0199, B:109:0x01a1, B:112:0x01a7), top: B:130:0x0049 }] */
    /* JADX WARN: Code duplicated, block: B:109:0x01a1 A[Catch: all -> 0x01a5, TryCatch #3 {all -> 0x01a5, blocks: (B:89:0x016a, B:102:0x0196, B:103:0x0199, B:109:0x01a1, B:112:0x01a7), top: B:130:0x0049 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.mysql.jdbc.PreparedStatement, com.mysql.jdbc.StatementImpl] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v13, types: [java.sql.PreparedStatement] */
    /* JADX WARN: Type inference failed for: r9v14, types: [java.sql.PreparedStatement] */
    /* JADX WARN: Type inference failed for: r9v15, types: [java.sql.PreparedStatement] */
    /* JADX WARN: Type inference failed for: r9v23 */
    protected long[] executePreparedBatchAsMultiStatement(int i) throws SQLException {
        StatementImpl.CancelTask cancelTask;
        long[] jArr;
        java.sql.PreparedStatement preparedStatement;
        java.sql.PreparedStatement preparedStatement2;
        StatementImpl.CancelTask cancelTask2;
        java.sql.PreparedStatement preparedStatementPrepareStatement;
        StatementImpl.CancelTask cancelTask3;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.batchedValuesClause == null) {
                this.batchedValuesClause = this.originalSql + ";";
            }
            MySQLConnection mySQLConnection = this.connection;
            boolean allowMultiQueries = mySQLConnection.getAllowMultiQueries();
            try {
                clearWarnings();
                int size = this.batchedArgs.size();
                if (this.retrieveGeneratedKeys) {
                    this.batchedGeneratedKeys = new ArrayList<>(size);
                }
                int iComputeBatchSize = computeBatchSize(size);
                if (size < iComputeBatchSize) {
                    iComputeBatchSize = size;
                }
                jArr = new long[size];
                try {
                    if (!allowMultiQueries) {
                        try {
                            mySQLConnection.getIO().enableMultiQueries();
                        } catch (Throwable th) {
                            th = th;
                            preparedStatement = null;
                            if (preparedStatement != null) {
                                preparedStatement.close();
                            }
                            throw th;
                        }
                    }
                    if (this.retrieveGeneratedKeys) {
                        preparedStatement2 = (java.sql.PreparedStatement) ((Wrapper) mySQLConnection.prepareStatement(generateMultiStatementForBatch(iComputeBatchSize), 1)).unwrap(java.sql.PreparedStatement.class);
                    } else {
                        preparedStatement2 = (java.sql.PreparedStatement) ((Wrapper) mySQLConnection.prepareStatement(generateMultiStatementForBatch(iComputeBatchSize))).unwrap(java.sql.PreparedStatement.class);
                    }
                    try {
                        int i2 = 0;
                        if (mySQLConnection.getEnableQueryTimeouts() && i != 0 && mySQLConnection.versionMeetsMinimum(5, 0, 0)) {
                            cancelTask2 = new StatementImpl.CancelTask((StatementImpl) preparedStatement2);
                            try {
                                mySQLConnection.getCancelTimer().schedule(cancelTask2, i);
                            } catch (Throwable th2) {
                                th = th2;
                                preparedStatement = preparedStatement2;
                                if (preparedStatement != null) {
                                    preparedStatement.close();
                                }
                                throw th;
                            }
                        } else {
                            cancelTask2 = null;
                        }
                        int i3 = (size < iComputeBatchSize ? size : size / iComputeBatchSize) * iComputeBatchSize;
                        int oneBatchedParameterSet = 1;
                        int i4 = 0;
                        int i5 = 0;
                        SQLException sQLExceptionHandleExceptionForBatch = null;
                        while (i2 < i3) {
                            if (i2 != 0 && i2 % iComputeBatchSize == 0) {
                                try {
                                    preparedStatement2.execute();
                                } catch (SQLException e) {
                                    sQLExceptionHandleExceptionForBatch = handleExceptionForBatch(i4, iComputeBatchSize, jArr, e);
                                }
                                int iProcessMultiCountsAndKeys = processMultiCountsAndKeys((StatementImpl) preparedStatement2, i5, jArr);
                                preparedStatement2.clearParameters();
                                i5 = iProcessMultiCountsAndKeys;
                                oneBatchedParameterSet = 1;
                            }
                            int i6 = i4 + 1;
                            oneBatchedParameterSet = setOneBatchedParameterSet(preparedStatement2, oneBatchedParameterSet, this.batchedArgs.get(i4));
                            i2++;
                            i4 = i6;
                        }
                        try {
                            preparedStatement2.execute();
                        } catch (SQLException e2) {
                            sQLExceptionHandleExceptionForBatch = handleExceptionForBatch(i4 - 1, iComputeBatchSize, jArr, e2);
                        }
                        int iProcessMultiCountsAndKeys2 = processMultiCountsAndKeys((StatementImpl) preparedStatement2, i5, jArr);
                        preparedStatement2.clearParameters();
                        int i7 = size - i4;
                        ?? r9 = preparedStatement2;
                        if (preparedStatement2 != null) {
                            try {
                                preparedStatement2.close();
                                r9 = 0;
                            } catch (Throwable th3) {
                                th = th3;
                                cancelTask = cancelTask2;
                                if (cancelTask != null) {
                                    cancelTask.cancel();
                                    mySQLConnection.getCancelTimer().purge();
                                }
                                resetCancelledState();
                                if (!allowMultiQueries) {
                                    mySQLConnection.getIO().disableMultiQueries();
                                }
                                clearBatch();
                                throw th;
                            }
                        }
                        if (i7 > 0) {
                            try {
                                if (this.retrieveGeneratedKeys) {
                                    preparedStatementPrepareStatement = mySQLConnection.prepareStatement(generateMultiStatementForBatch(i7), 1);
                                } else {
                                    preparedStatementPrepareStatement = mySQLConnection.prepareStatement(generateMultiStatementForBatch(i7));
                                }
                                r9 = preparedStatementPrepareStatement;
                                if (cancelTask2 != null) {
                                    cancelTask2.toCancel = (StatementImpl) r9;
                                }
                                int oneBatchedParameterSet2 = 1;
                                while (i4 < size) {
                                    int i8 = i4 + 1;
                                    oneBatchedParameterSet2 = setOneBatchedParameterSet(r9, oneBatchedParameterSet2, this.batchedArgs.get(i4));
                                    i4 = i8;
                                }
                                try {
                                    r9.execute();
                                } catch (SQLException e3) {
                                    sQLExceptionHandleExceptionForBatch = handleExceptionForBatch(i4 - 1, i7, jArr, e3);
                                }
                                processMultiCountsAndKeys((StatementImpl) r9, iProcessMultiCountsAndKeys2, jArr);
                                r9.clearParameters();
                            } catch (Throwable th4) {
                                th = th4;
                                if (r9 != 0) {
                                    r9.close();
                                }
                                throw th;
                            }
                        }
                        SQLException sQLException = sQLExceptionHandleExceptionForBatch;
                        if (cancelTask2 == null) {
                            cancelTask3 = cancelTask2;
                        } else {
                            if (cancelTask2.caughtWhileCancelling != null) {
                                throw cancelTask2.caughtWhileCancelling;
                            }
                            cancelTask2.cancel();
                            mySQLConnection.getCancelTimer().purge();
                            cancelTask3 = null;
                        }
                        if (sQLException != null) {
                            try {
                                throw SQLError.createBatchUpdateException(sQLException, jArr, getExceptionInterceptor());
                            } catch (Throwable th5) {
                                th = th5;
                                if (r9 != 0) {
                                    r9.close();
                                }
                                throw th;
                            }
                        }
                        if (r9 != 0) {
                            r9.close();
                        }
                        if (cancelTask3 != null) {
                            cancelTask3.cancel();
                            mySQLConnection.getCancelTimer().purge();
                        }
                        resetCancelledState();
                        if (!allowMultiQueries) {
                            mySQLConnection.getIO().disableMultiQueries();
                        }
                        clearBatch();
                    } catch (Throwable th6) {
                        th = th6;
                        preparedStatement = preparedStatement2;
                    }
                } catch (Throwable th7) {
                    th = th7;
                }
            } catch (Throwable th8) {
                th = th8;
                cancelTask = null;
            }
        }
        return jArr;
    }

    private String generateMultiStatementForBatch(int i) throws SQLException {
        String string;
        synchronized (checkClosed().getConnectionMutex()) {
            StringBuilder sb = new StringBuilder((this.originalSql.length() + 1) * i);
            sb.append(this.originalSql);
            for (int i2 = 0; i2 < i - 1; i2++) {
                sb.append(';');
                sb.append(this.originalSql);
            }
            string = sb.toString();
        }
        return string;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0138 A[Catch: all -> 0x013c, TryCatch #5 {all -> 0x013c, blocks: (B:49:0x00b2, B:91:0x012b, B:92:0x012e, B:82:0x010c, B:101:0x0138, B:104:0x013e), top: B:122:0x0033, outer: #9 }] */
    /* JADX WARN: Not initialized variable reg: 9, insn: 0x013f: IF  (r9 I:??[int, boolean, OBJECT, ARRAY, byte, short, char]) == (0 ??[int, boolean, OBJECT, ARRAY, byte, short, char])  -> B:107:0x014b, block:B:105:0x013f */
    protected long[] executeBatchedInserts(int i) throws SQLException {
        StatementImpl.CancelTask cancelTask;
        PreparedStatement preparedStatementPrepareBatchedInsertSQL;
        StatementImpl.CancelTask cancelTask2;
        PreparedStatement preparedStatement;
        PreparedStatement preparedStatementPrepareBatchedInsertSQL2;
        synchronized (checkClosed().getConnectionMutex()) {
            String valuesClause = getValuesClause();
            MySQLConnection mySQLConnection = this.connection;
            if (valuesClause == null) {
                return executeBatchSerially(i);
            }
            int size = this.batchedArgs.size();
            if (this.retrieveGeneratedKeys) {
                this.batchedGeneratedKeys = new ArrayList<>(size);
            }
            int iComputeBatchSize = computeBatchSize(size);
            if (size < iComputeBatchSize) {
                iComputeBatchSize = size;
            }
            try {
                long[] jArr = new long[size];
                try {
                    preparedStatementPrepareBatchedInsertSQL = prepareBatchedInsertSQL(mySQLConnection, iComputeBatchSize);
                    try {
                        if (mySQLConnection.getEnableQueryTimeouts() && i != 0 && mySQLConnection.versionMeetsMinimum(5, 0, 0)) {
                            cancelTask2 = new StatementImpl.CancelTask(preparedStatementPrepareBatchedInsertSQL);
                            try {
                                mySQLConnection.getCancelTimer().schedule(cancelTask2, i);
                            } catch (Throwable th) {
                                th = th;
                                if (preparedStatementPrepareBatchedInsertSQL != null) {
                                    preparedStatementPrepareBatchedInsertSQL.close();
                                }
                                throw th;
                            }
                        } else {
                            cancelTask2 = null;
                        }
                        int i2 = (size < iComputeBatchSize ? size : size / iComputeBatchSize) * iComputeBatchSize;
                        long jExecuteLargeUpdate = 0;
                        int oneBatchedParameterSet = 1;
                        int i3 = 0;
                        int i4 = 0;
                        SQLException sQLExceptionHandleExceptionForBatch = null;
                        while (i4 < i2) {
                            if (i4 != 0 && i4 % iComputeBatchSize == 0) {
                                try {
                                    jExecuteLargeUpdate += preparedStatementPrepareBatchedInsertSQL.executeLargeUpdate();
                                } catch (SQLException e) {
                                    sQLExceptionHandleExceptionForBatch = handleExceptionForBatch(i3 - 1, iComputeBatchSize, jArr, e);
                                }
                                getBatchedGeneratedKeys(preparedStatementPrepareBatchedInsertSQL);
                                preparedStatementPrepareBatchedInsertSQL.clearParameters();
                                oneBatchedParameterSet = 1;
                            }
                            int i5 = i3 + 1;
                            oneBatchedParameterSet = setOneBatchedParameterSet(preparedStatementPrepareBatchedInsertSQL, oneBatchedParameterSet, this.batchedArgs.get(i3));
                            i4++;
                            i3 = i5;
                        }
                        try {
                            jExecuteLargeUpdate += preparedStatementPrepareBatchedInsertSQL.executeLargeUpdate();
                        } catch (SQLException e2) {
                            sQLExceptionHandleExceptionForBatch = handleExceptionForBatch(i3 - 1, iComputeBatchSize, jArr, e2);
                        }
                        getBatchedGeneratedKeys(preparedStatementPrepareBatchedInsertSQL);
                        int i6 = size - i3;
                        if (preparedStatementPrepareBatchedInsertSQL != null) {
                            preparedStatementPrepareBatchedInsertSQL.close();
                            preparedStatement = null;
                        } else {
                            preparedStatement = preparedStatementPrepareBatchedInsertSQL;
                        }
                        if (i6 > 0) {
                            try {
                                preparedStatementPrepareBatchedInsertSQL2 = prepareBatchedInsertSQL(mySQLConnection, i6);
                                if (cancelTask2 != null) {
                                    try {
                                        cancelTask2.toCancel = preparedStatementPrepareBatchedInsertSQL2;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        if (preparedStatementPrepareBatchedInsertSQL2 != null) {
                                            preparedStatementPrepareBatchedInsertSQL2.close();
                                        }
                                        throw th;
                                    }
                                }
                                int oneBatchedParameterSet2 = 1;
                                while (i3 < size) {
                                    int i7 = i3 + 1;
                                    oneBatchedParameterSet2 = setOneBatchedParameterSet(preparedStatementPrepareBatchedInsertSQL2, oneBatchedParameterSet2, this.batchedArgs.get(i3));
                                    i3 = i7;
                                }
                                try {
                                    jExecuteLargeUpdate += preparedStatementPrepareBatchedInsertSQL2.executeLargeUpdate();
                                } catch (SQLException e3) {
                                    sQLExceptionHandleExceptionForBatch = handleExceptionForBatch(i3 - 1, i6, jArr, e3);
                                }
                                getBatchedGeneratedKeys(preparedStatementPrepareBatchedInsertSQL2);
                                preparedStatement = preparedStatementPrepareBatchedInsertSQL2;
                            } catch (Throwable th3) {
                                th = th3;
                                preparedStatementPrepareBatchedInsertSQL2 = preparedStatement;
                            }
                        }
                        SQLException sQLException = sQLExceptionHandleExceptionForBatch;
                        if (sQLException != null) {
                            throw SQLError.createBatchUpdateException(sQLException, jArr, getExceptionInterceptor());
                        }
                        if (size > 1) {
                            long j = jExecuteLargeUpdate > 0 ? -2L : 0L;
                            for (int i8 = 0; i8 < size; i8++) {
                                jArr[i8] = j;
                            }
                        } else {
                            jArr[0] = jExecuteLargeUpdate;
                        }
                        if (preparedStatement != null) {
                            preparedStatement.close();
                        }
                        if (cancelTask2 != null) {
                            cancelTask2.cancel();
                            mySQLConnection.getCancelTimer().purge();
                        }
                        resetCancelledState();
                        return jArr;
                    } catch (Throwable th4) {
                        th = th4;
                        if (preparedStatementPrepareBatchedInsertSQL != null) {
                            preparedStatementPrepareBatchedInsertSQL.close();
                        }
                        throw th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    preparedStatementPrepareBatchedInsertSQL = null;
                }
            } catch (Throwable th6) {
                if (cancelTask != null) {
                    cancelTask.cancel();
                    mySQLConnection.getCancelTimer().purge();
                }
                resetCancelledState();
                throw th6;
            }
        }
    }

    protected String getValuesClause() throws SQLException {
        return this.parseInfo.valuesClause;
    }

    protected int computeBatchSize(int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            long[] jArrComputeMaxParameterSetSizeAndBatchSize = computeMaxParameterSetSizeAndBatchSize(i);
            long j = jArrComputeMaxParameterSetSizeAndBatchSize[0];
            long j2 = jArrComputeMaxParameterSetSizeAndBatchSize[1];
            int maxAllowedPacket = this.connection.getMaxAllowedPacket();
            if (j2 < maxAllowedPacket - this.originalSql.length()) {
                return i;
            }
            return (int) Math.max(1L, ((long) (maxAllowedPacket - this.originalSql.length())) / j);
        }
    }

    protected long[] computeMaxParameterSetSizeAndBatchSize(int i) throws SQLException {
        long[] jArr;
        long length;
        synchronized (checkClosed().getConnectionMutex()) {
            long j = 0;
            long j2 = 0;
            for (int i2 = 0; i2 < i; i2++) {
                try {
                    BatchParams batchParams = (BatchParams) this.batchedArgs.get(i2);
                    boolean[] zArr = batchParams.isNull;
                    boolean[] zArr2 = batchParams.isStream;
                    long length2 = 0;
                    for (int i3 = 0; i3 < zArr.length; i3++) {
                        if (zArr[i3]) {
                            length2 += 4;
                        } else if (zArr2[i3]) {
                            int i4 = batchParams.streamLengths[i3];
                            length2 = i4 != -1 ? length2 + ((long) (i4 * 2)) : length2 + ((long) batchParams.parameterStrings[i3].length);
                        } else {
                            length2 += (long) batchParams.parameterStrings[i3].length;
                        }
                    }
                    if (getValuesClause() != null) {
                        length = length2 + ((long) (getValuesClause().length() + 1));
                    } else {
                        length = length2 + ((long) (this.originalSql.length() + 1));
                    }
                    j2 += length;
                    if (length > j) {
                        j = length;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            jArr = new long[]{j, j2};
        }
        return jArr;
    }

    /* JADX WARN: Code duplicated, block: B:103:0x015f A[Catch: all -> 0x0174, TryCatch #9 {, blocks: (B:4:0x000d, B:6:0x0011, B:7:0x0014, B:9:0x001a, B:12:0x0027, B:72:0x010d, B:74:0x0111, B:75:0x011b, B:101:0x015b, B:103:0x015f, B:104:0x0169, B:105:0x016c, B:109:0x0172, B:108:0x0170), top: B:124:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:121:0x0060 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x005a  */
    /* JADX WARN: Code duplicated, block: B:40:0x0074 A[Catch: NullPointerException -> 0x0068, all -> 0x012e, TRY_ENTER, TRY_LEAVE, TryCatch #6 {NullPointerException -> 0x0068, blocks: (B:33:0x0060, B:40:0x0074, B:42:0x007d, B:44:0x0081, B:46:0x0098, B:50:0x00a3, B:67:0x00ef, B:51:0x00a9, B:53:0x00c6, B:59:0x00d9, B:61:0x00e1, B:63:0x00e5, B:65:0x00e9, B:68:0x00f8, B:69:0x0109), top: B:121:0x0060 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0081 A[Catch: NullPointerException -> 0x0068, SQLException -> 0x00d6, all -> 0x012e, TryCatch #4 {SQLException -> 0x00d6, blocks: (B:42:0x007d, B:44:0x0081, B:46:0x0098, B:50:0x00a3, B:51:0x00a9), top: B:119:0x007d }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a9 A[Catch: NullPointerException -> 0x0068, SQLException -> 0x00d6, all -> 0x012e, TRY_LEAVE, TryCatch #4 {SQLException -> 0x00d6, blocks: (B:42:0x007d, B:44:0x0081, B:46:0x0098, B:50:0x00a3, B:51:0x00a9), top: B:119:0x007d }] */
    /* JADX WARN: Code duplicated, block: B:71:0x010c  */
    /* JADX WARN: Code duplicated, block: B:74:0x0111 A[Catch: all -> 0x0174, TryCatch #9 {, blocks: (B:4:0x000d, B:6:0x0011, B:7:0x0014, B:9:0x001a, B:12:0x0027, B:72:0x010d, B:74:0x0111, B:75:0x011b, B:101:0x015b, B:103:0x015f, B:104:0x0169, B:105:0x016c, B:109:0x0172, B:108:0x0170), top: B:124:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0120  */
    protected long[] executeBatchSerially(int i) throws SQLException {
        long[] jArr;
        int i2;
        StatementImpl.CancelTask cancelTask;
        SQLException e;
        Object obj;
        int i3;
        synchronized (checkClosed().getConnectionMutex()) {
            MySQLConnection mySQLConnection = this.connection;
            if (mySQLConnection == null) {
                checkClosed();
            }
            jArr = null;
            cancelTask = null;
            StatementImpl.CancelTask cancelTask2 = null;
            if (this.batchedArgs != null) {
                int size = this.batchedArgs.size();
                long[] jArr2 = new long[size];
                for (int i4 = 0; i4 < size; i4++) {
                    jArr2[i4] = -3;
                }
                try {
                    try {
                        if (!mySQLConnection.getEnableQueryTimeouts() || i == 0) {
                            cancelTask = null;
                            try {
                                try {
                                    if (this.retrieveGeneratedKeys) {
                                        try {
                                            this.batchedGeneratedKeys = new ArrayList<>(size);
                                        } catch (NullPointerException e2) {
                                            e = e2;
                                            cancelTask2 = cancelTask;
                                            i2 = -1;
                                            try {
                                                try {
                                                    checkClosed();
                                                    throw e;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    cancelTask = cancelTask2;
                                                    this.batchCommandIndex = i2;
                                                    if (cancelTask != null) {
                                                        cancelTask.cancel();
                                                        mySQLConnection.getCancelTimer().purge();
                                                    }
                                                    resetCancelledState();
                                                    throw th;
                                                }
                                            } catch (SQLException e3) {
                                                jArr2[this.batchCommandIndex] = -3;
                                                long[] jArr3 = new long[this.batchCommandIndex];
                                                System.arraycopy(jArr2, 0, jArr3, 0, this.batchCommandIndex);
                                                throw SQLError.createBatchUpdateException(e3, jArr3, getExceptionInterceptor());
                                            }
                                        }
                                    }
                                    this.batchCommandIndex = 0;
                                    e = null;
                                    while (this.batchCommandIndex < size) {
                                        obj = this.batchedArgs.get(this.batchCommandIndex);
                                        try {
                                            if (obj instanceof String) {
                                                jArr2[this.batchCommandIndex] = executeUpdateInternal((String) obj, true, this.retrieveGeneratedKeys);
                                                if (this.results.getFirstCharOfQuery() == 'I' || !containsOnDuplicateKeyInString((String) obj)) {
                                                    i3 = 0;
                                                } else {
                                                    i3 = 1;
                                                }
                                                getBatchedGeneratedKeys(i3);
                                            } else {
                                                BatchParams batchParams = (BatchParams) obj;
                                                try {
                                                    jArr2[this.batchCommandIndex] = executeUpdateInternal(batchParams.parameterStrings, batchParams.parameterStreams, batchParams.isStream, batchParams.streamLengths, batchParams.isNull, true);
                                                    getBatchedGeneratedKeys(containsOnDuplicateKeyUpdateInSQL() ? 1 : 0);
                                                } catch (SQLException e4) {
                                                    e = e4;
                                                    jArr2[this.batchCommandIndex] = -3;
                                                    if (!this.continueBatchOnError || (e instanceof MySQLTimeoutException) || (e instanceof MySQLStatementCancelledException) || hasDeadlockOrTimeoutRolledBackTx(e)) {
                                                        long[] jArr4 = new long[this.batchCommandIndex];
                                                        System.arraycopy(jArr2, 0, jArr4, 0, this.batchCommandIndex);
                                                        throw SQLError.createBatchUpdateException(e, jArr4, getExceptionInterceptor());
                                                    }
                                                }
                                            }
                                        } catch (SQLException e5) {
                                            e = e5;
                                        }
                                        this.batchCommandIndex++;
                                    }
                                    if (e == null) {
                                        i2 = -1;
                                        try {
                                            throw SQLError.createBatchUpdateException(e, jArr2, getExceptionInterceptor());
                                        } catch (NullPointerException e6) {
                                            e = e6;
                                            cancelTask2 = cancelTask;
                                            checkClosed();
                                            throw e;
                                        } catch (Throwable th2) {
                                            th = th2;
                                        }
                                    } else {
                                        this.batchCommandIndex = -1;
                                        if (cancelTask != null) {
                                            cancelTask.cancel();
                                            mySQLConnection.getCancelTimer().purge();
                                        }
                                        resetCancelledState();
                                        jArr = jArr2;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    i2 = -1;
                                }
                            } catch (NullPointerException e7) {
                                e = e7;
                                i2 = -1;
                            }
                        } else {
                            try {
                                if (mySQLConnection.versionMeetsMinimum(5, 0, 0)) {
                                    StatementImpl.CancelTask cancelTask3 = new StatementImpl.CancelTask(this);
                                    try {
                                        mySQLConnection.getCancelTimer().schedule(cancelTask3, i);
                                        cancelTask = cancelTask3;
                                    } catch (NullPointerException e8) {
                                        e = e8;
                                        cancelTask2 = cancelTask3;
                                        i2 = -1;
                                        checkClosed();
                                        throw e;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        cancelTask = cancelTask3;
                                        i2 = -1;
                                        this.batchCommandIndex = i2;
                                        if (cancelTask != null) {
                                            cancelTask.cancel();
                                            mySQLConnection.getCancelTimer().purge();
                                        }
                                        resetCancelledState();
                                        throw th;
                                    }
                                } else {
                                    cancelTask = null;
                                }
                                if (this.retrieveGeneratedKeys) {
                                    this.batchedGeneratedKeys = new ArrayList<>(size);
                                }
                                this.batchCommandIndex = 0;
                                e = null;
                                while (this.batchCommandIndex < size) {
                                    obj = this.batchedArgs.get(this.batchCommandIndex);
                                    if (obj instanceof String) {
                                        jArr2[this.batchCommandIndex] = executeUpdateInternal((String) obj, true, this.retrieveGeneratedKeys);
                                        if (this.results.getFirstCharOfQuery() == 'I') {
                                            i3 = 0;
                                        } else {
                                            i3 = 0;
                                        }
                                        getBatchedGeneratedKeys(i3);
                                    } else {
                                        BatchParams batchParams2 = (BatchParams) obj;
                                        jArr2[this.batchCommandIndex] = executeUpdateInternal(batchParams2.parameterStrings, batchParams2.parameterStreams, batchParams2.isStream, batchParams2.streamLengths, batchParams2.isNull, true);
                                        getBatchedGeneratedKeys(containsOnDuplicateKeyUpdateInSQL() ? 1 : 0);
                                    }
                                    this.batchCommandIndex++;
                                }
                                if (e == null) {
                                    i2 = -1;
                                    throw SQLError.createBatchUpdateException(e, jArr2, getExceptionInterceptor());
                                }
                                this.batchCommandIndex = -1;
                                if (cancelTask != null) {
                                    cancelTask.cancel();
                                    mySQLConnection.getCancelTimer().purge();
                                }
                                resetCancelledState();
                                jArr = jArr2;
                            } catch (Throwable th5) {
                                th = th5;
                                cancelTask = null;
                            }
                        }
                    } catch (NullPointerException e9) {
                        e = e9;
                    }
                } catch (Throwable th6) {
                    th = th6;
                    i2 = -1;
                    cancelTask = cancelTask2;
                }
                this.batchCommandIndex = i2;
                if (cancelTask != null) {
                    cancelTask.cancel();
                    mySQLConnection.getCancelTimer().purge();
                }
                resetCancelledState();
                throw th;
            }
            if (jArr == null) {
                jArr = new long[0];
            }
        }
        return jArr;
    }

    public String getDateTime(String str) {
        return new SimpleDateFormat(str).format(new Date());
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x00b0 */
    /* JADX WARN: Code duplicated, block: B:20:0x003e  */
    /* JADX WARN: Code duplicated, block: B:30:0x0066 A[Catch: all -> 0x0037, TRY_ENTER, TryCatch #4 {all -> 0x0037, blocks: (B:13:0x002b, B:30:0x0066, B:33:0x0075, B:34:0x0077), top: B:86:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0074  */
    /* JADX WARN: Code duplicated, block: B:33:0x0075 A[Catch: all -> 0x0037, TryCatch #4 {all -> 0x0037, blocks: (B:13:0x002b, B:30:0x0066, B:33:0x0075, B:34:0x0077), top: B:86:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0078  */
    /* JADX WARN: Code duplicated, block: B:40:0x0080 A[Catch: all -> 0x00aa, TryCatch #7 {all -> 0x00aa, blocks: (B:38:0x007c, B:40:0x0080, B:42:0x0084, B:44:0x008f, B:45:0x0092, B:43:0x008a, B:46:0x0093), top: B:91:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:42:0x0084 A[Catch: all -> 0x00aa, TryCatch #7 {all -> 0x00aa, blocks: (B:38:0x007c, B:40:0x0080, B:42:0x0084, B:44:0x008f, B:45:0x0092, B:43:0x008a, B:46:0x0093), top: B:91:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:43:0x008a A[Catch: all -> 0x00aa, TryCatch #7 {all -> 0x00aa, blocks: (B:38:0x007c, B:40:0x0080, B:42:0x0084, B:44:0x008f, B:45:0x0092, B:43:0x008a, B:46:0x0093), top: B:91:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:46:0x0093 A[Catch: all -> 0x00aa, DONT_GENERATE, TRY_LEAVE, TryCatch #7 {all -> 0x00aa, blocks: (B:38:0x007c, B:40:0x0080, B:42:0x0084, B:44:0x008f, B:45:0x0092, B:43:0x008a, B:46:0x0093), top: B:91:0x007c }] */
    /* JADX WARN: Code duplicated, block: B:48:0x0096 A[Catch: all -> 0x00cd, NullPointerException -> 0x00cf, TRY_ENTER, TryCatch #5 {NullPointerException -> 0x00cf, blocks: (B:4:0x000b, B:48:0x0096, B:50:0x009e, B:67:0x00bb, B:69:0x00c2, B:70:0x00cc), top: B:88:0x000b, outer: #8 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x009e A[Catch: all -> 0x00cd, NullPointerException -> 0x00cf, TRY_LEAVE, TryCatch #5 {NullPointerException -> 0x00cf, blocks: (B:4:0x000b, B:48:0x0096, B:50:0x009e, B:67:0x00bb, B:69:0x00c2, B:70:0x00cc), top: B:88:0x000b, outer: #8 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x00bb A[Catch: all -> 0x00cd, NullPointerException -> 0x00cf, TRY_ENTER, TryCatch #5 {NullPointerException -> 0x00cf, blocks: (B:4:0x000b, B:48:0x0096, B:50:0x009e, B:67:0x00bb, B:69:0x00c2, B:70:0x00cc), top: B:88:0x000b, outer: #8 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x00c2 A[Catch: all -> 0x00cd, NullPointerException -> 0x00cf, TryCatch #5 {NullPointerException -> 0x00cf, blocks: (B:4:0x000b, B:48:0x0096, B:50:0x009e, B:67:0x00bb, B:69:0x00c2, B:70:0x00cc), top: B:88:0x000b, outer: #8 }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0041 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:91:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected com.mysql.jdbc.ResultSetInternalMethods executeInternal(int r18, com.mysql.jdbc.Buffer r19, boolean r20, boolean r21, com.mysql.jdbc.Field[] r22, boolean r23) throws java.sql.SQLException {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mysql.jdbc.PreparedStatement.executeInternal(int, com.mysql.jdbc.Buffer, boolean, boolean, com.mysql.jdbc.Field[], boolean):com.mysql.jdbc.ResultSetInternalMethods");
    }

    public ResultSet executeQuery() throws SQLException {
        String str;
        synchronized (checkClosed().getConnectionMutex()) {
            MySQLConnection mySQLConnection = this.connection;
            checkForDml(this.originalSql, this.firstCharOfStmt);
            this.batchedGeneratedKeys = null;
            resetCancelledState();
            implicitlyCloseAllOpenResults();
            clearWarnings();
            if (this.doPingInstead) {
                doPingInstead();
                return this.results;
            }
            setupStreamingTimeout(mySQLConnection);
            Buffer bufferFillSendPacket = fillSendPacket();
            if (mySQLConnection.getCatalog().equals(this.currentCatalog)) {
                str = null;
            } else {
                String catalog = mySQLConnection.getCatalog();
                mySQLConnection.setCatalog(this.currentCatalog);
                str = catalog;
            }
            CachedResultSetMetaData cachedMetaData = mySQLConnection.getCacheResultSetMetadata() ? mySQLConnection.getCachedMetaData(this.originalSql) : null;
            Field[] fieldArr = cachedMetaData != null ? cachedMetaData.fields : null;
            mySQLConnection.setSessionMaxRows(this.maxRows);
            this.results = executeInternal(this.maxRows, bufferFillSendPacket, createStreamingResultSet(), true, fieldArr, false);
            if (str != null) {
                mySQLConnection.setCatalog(str);
            }
            if (cachedMetaData != null) {
                mySQLConnection.initializeResultsMetadataFromCache(this.originalSql, cachedMetaData, this.results);
            } else if (mySQLConnection.getCacheResultSetMetadata()) {
                mySQLConnection.initializeResultsMetadataFromCache(this.originalSql, null, this.results);
            }
            this.lastInsertId = this.results.getUpdateID();
            return this.results;
        }
    }

    public int executeUpdate() throws SQLException {
        return Util.truncateAndConvertToInt(executeLargeUpdate());
    }

    protected long executeUpdateInternal(boolean z, boolean z2) throws SQLException {
        long jExecuteUpdateInternal;
        synchronized (checkClosed().getConnectionMutex()) {
            if (z) {
                try {
                    clearWarnings();
                    this.batchedGeneratedKeys = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
            jExecuteUpdateInternal = executeUpdateInternal(this.parameterValues, this.parameterStreams, this.isStream, this.streamLengths, this.isNull, z2);
        }
        return jExecuteUpdateInternal;
    }

    protected long executeUpdateInternal(byte[][] bArr, InputStream[] inputStreamArr, boolean[] zArr, int[] iArr, boolean[] zArr2, boolean z) throws SQLException {
        boolean z2;
        long j;
        synchronized (checkClosed().getConnectionMutex()) {
            MySQLConnection mySQLConnection = this.connection;
            if (mySQLConnection.isReadOnly(false)) {
                throw SQLError.createSQLException(Messages.getString("PreparedStatement.34") + Messages.getString("PreparedStatement.35"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            if (this.firstCharOfStmt == 'S' && isSelectQuery()) {
                throw SQLError.createSQLException(Messages.getString("PreparedStatement.37"), SQLError.SQL_STATE_NO_ROWS_UPDATED_OR_DELETED, getExceptionInterceptor());
            }
            resetCancelledState();
            implicitlyCloseAllOpenResults();
            Buffer bufferFillSendPacket = fillSendPacket(bArr, inputStreamArr, zArr, iArr);
            String catalog = null;
            if (!mySQLConnection.getCatalog().equals(this.currentCatalog)) {
                catalog = mySQLConnection.getCatalog();
                mySQLConnection.setCatalog(this.currentCatalog);
            }
            mySQLConnection.setSessionMaxRows(-1);
            if (this.retrieveGeneratedKeys) {
                boolean zIsReadInfoMsgEnabled = mySQLConnection.isReadInfoMsgEnabled();
                mySQLConnection.setReadInfoMsgEnabled(true);
                z2 = zIsReadInfoMsgEnabled;
            } else {
                z2 = false;
            }
            ResultSetInternalMethods resultSetInternalMethodsExecuteInternal = executeInternal(-1, bufferFillSendPacket, false, false, null, z);
            if (this.retrieveGeneratedKeys) {
                mySQLConnection.setReadInfoMsgEnabled(z2);
                resultSetInternalMethodsExecuteInternal.setFirstCharOfQuery(this.firstCharOfStmt);
            }
            if (catalog != null) {
                mySQLConnection.setCatalog(catalog);
            }
            this.results = resultSetInternalMethodsExecuteInternal;
            this.updateCount = resultSetInternalMethodsExecuteInternal.getUpdateCount();
            if (containsOnDuplicateKeyUpdateInSQL() && this.compensateForOnDuplicateKeyUpdate && (this.updateCount == 2 || this.updateCount == 0)) {
                this.updateCount = 1L;
            }
            this.lastInsertId = resultSetInternalMethodsExecuteInternal.getUpdateID();
            j = this.updateCount;
        }
        return j;
    }

    protected boolean containsOnDuplicateKeyUpdateInSQL() {
        return this.parseInfo.isOnDuplicateKeyUpdate;
    }

    protected Buffer fillSendPacket() throws SQLException {
        Buffer bufferFillSendPacket;
        synchronized (checkClosed().getConnectionMutex()) {
            bufferFillSendPacket = fillSendPacket(this.parameterValues, this.parameterStreams, this.isStream, this.streamLengths);
        }
        return bufferFillSendPacket;
    }

    protected Buffer fillSendPacket(byte[][] bArr, InputStream[] inputStreamArr, boolean[] zArr, int[] iArr) throws SQLException {
        Buffer sharedSendPacket;
        int length;
        synchronized (checkClosed().getConnectionMutex()) {
            sharedSendPacket = this.connection.getIO().getSharedSendPacket();
            sharedSendPacket.clear();
            sharedSendPacket.writeByte((byte) 3);
            boolean useStreamLengthsInPrepStmts = this.connection.getUseStreamLengthsInPrepStmts();
            String statementComment = this.connection.getStatementComment();
            byte[] bytes = null;
            if (statementComment != null) {
                if (this.charConverter != null) {
                    bytes = this.charConverter.toBytes(statementComment);
                } else {
                    bytes = StringUtils.getBytes(statementComment, this.charConverter, this.charEncoding, this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor());
                }
                length = bytes.length + 0 + 6;
            } else {
                length = 0;
            }
            int i = length;
            for (int i2 = 0; i2 < bArr.length; i2++) {
                if (zArr[i2] && useStreamLengthsInPrepStmts) {
                    i += iArr[i2];
                }
            }
            if (i != 0) {
                sharedSendPacket.ensureCapacity(i);
            }
            if (bytes != null) {
                sharedSendPacket.writeBytesNoNull(Constants.SLASH_STAR_SPACE_AS_BYTES);
                sharedSendPacket.writeBytesNoNull(bytes);
                sharedSendPacket.writeBytesNoNull(Constants.SPACE_STAR_SLASH_SPACE_AS_BYTES);
            }
            for (int i3 = 0; i3 < bArr.length; i3++) {
                checkAllParametersSet(bArr[i3], inputStreamArr[i3], i3);
                sharedSendPacket.writeBytesNoNull(this.staticSqlStrings[i3]);
                if (zArr[i3]) {
                    streamToBytes(sharedSendPacket, inputStreamArr[i3], true, iArr[i3], useStreamLengthsInPrepStmts);
                } else {
                    sharedSendPacket.writeBytesNoNull(bArr[i3]);
                }
            }
            sharedSendPacket.writeBytesNoNull(this.staticSqlStrings[bArr.length]);
        }
        return sharedSendPacket;
    }

    private void checkAllParametersSet(byte[] bArr, InputStream inputStream, int i) throws SQLException {
        if (bArr == null && inputStream == null) {
            throw SQLError.createSQLException(Messages.getString("PreparedStatement.40") + (i + 1), SQLError.SQL_STATE_WRONG_NO_OF_PARAMETERS, getExceptionInterceptor());
        }
    }

    protected PreparedStatement prepareBatchedInsertSQL(MySQLConnection mySQLConnection, int i) throws SQLException {
        PreparedStatement preparedStatement;
        synchronized (checkClosed().getConnectionMutex()) {
            preparedStatement = new PreparedStatement(mySQLConnection, "Rewritten batch of: " + this.originalSql, this.currentCatalog, this.parseInfo.getParseInfoForBatch(i));
            preparedStatement.setRetrieveGeneratedKeys(this.retrieveGeneratedKeys);
            preparedStatement.rewrittenBatchSize = i;
        }
        return preparedStatement;
    }

    protected void setRetrieveGeneratedKeys(boolean z) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            this.retrieveGeneratedKeys = z;
        }
    }

    public int getRewrittenBatchSize() {
        return this.rewrittenBatchSize;
    }

    public String getNonRewrittenSql() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            int iIndexOf = this.originalSql.indexOf(" of: ");
            if (iIndexOf != -1) {
                return this.originalSql.substring(iIndexOf + 5);
            }
            return this.originalSql;
        }
    }

    public byte[] getBytesRepresentation(int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.isStream[i]) {
                return streamToBytes(this.parameterStreams[i], false, this.streamLengths[i], this.connection.getUseStreamLengthsInPrepStmts());
            }
            byte[] bArr = this.parameterValues[i];
            if (bArr == null) {
                return null;
            }
            if (bArr[0] != 39 || bArr[bArr.length - 1] != 39) {
                return bArr;
            }
            byte[] bArr2 = new byte[bArr.length - 2];
            System.arraycopy(bArr, 1, bArr2, 0, bArr.length - 2);
            return bArr2;
        }
    }

    protected byte[] getBytesRepresentationForBatch(int i, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            Object obj = this.batchedArgs.get(i2);
            if (obj instanceof String) {
                try {
                    return StringUtils.getBytes((String) obj, this.charEncoding);
                } catch (UnsupportedEncodingException unused) {
                    throw new RuntimeException(Messages.getString("PreparedStatement.32") + this.charEncoding + Messages.getString("PreparedStatement.33"));
                }
            }
            BatchParams batchParams = (BatchParams) obj;
            if (batchParams.isStream[i]) {
                return streamToBytes(batchParams.parameterStreams[i], false, batchParams.streamLengths[i], this.connection.getUseStreamLengthsInPrepStmts());
            }
            byte[] bArr = batchParams.parameterStrings[i];
            if (bArr == null) {
                return null;
            }
            if (bArr[0] != 39 || bArr[bArr.length - 1] != 39) {
                return bArr;
            }
            byte[] bArr2 = new byte[bArr.length - 2];
            System.arraycopy(bArr, 1, bArr2, 0, bArr.length - 2);
            return bArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:87:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:97:0x020a  */
    /* JADX WARN: Code duplicated, block: B:98:0x020c  */
    private final String getDateTimePattern(String str, boolean z) throws Exception {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        int length = str != null ? str.length() : 0;
        char c = 2;
        if (length >= 8 && length <= 10) {
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i >= length) {
                    z5 = true;
                    break;
                }
                char cCharAt = str.charAt(i);
                if (!Character.isDigit(cCharAt) && cCharAt != '-') {
                    z5 = false;
                    break;
                }
                if (cCharAt == '-') {
                    i2++;
                }
                i++;
            }
            if (z5 && i2 == 2) {
                return "yyyy-MM-dd";
            }
        }
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                z2 = true;
                break;
            }
            char cCharAt2 = str.charAt(i3);
            if (!Character.isDigit(cCharAt2) && cCharAt2 != ':') {
                z2 = false;
                break;
            }
            i3++;
        }
        if (z2) {
            return "HH:mm:ss";
        }
        StringReader stringReader = new StringReader(str + " ");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.add(new Object[]{'y', new StringBuilder(), 0});
        if (z) {
            arrayList.add(new Object[]{'h', new StringBuilder(), 0});
        }
        while (true) {
            int i4 = stringReader.read();
            if (i4 == -1) {
                break;
            }
            char c2 = (char) i4;
            int size = arrayList.size();
            int i5 = 0;
            while (i5 < size) {
                Object[] objArr = (Object[]) arrayList.get(i5);
                int iIntValue = ((Integer) objArr[c]).intValue();
                char successor = getSuccessor(((Character) objArr[0]).charValue(), iIntValue);
                if (!Character.isLetterOrDigit(c2)) {
                    if (successor == ((Character) objArr[0]).charValue() && successor != 'S') {
                        arrayList2.add(objArr);
                    } else {
                        ((StringBuilder) objArr[1]).append(c2);
                        if (successor == 'X' || successor == 'Y') {
                            objArr[c] = 4;
                        }
                    }
                } else {
                    char c3 = 'M';
                    if (successor == 'X') {
                        StringBuilder sb = new StringBuilder(((StringBuilder) objArr[1]).toString());
                        sb.append('M');
                        arrayList.add(new Object[]{'M', sb, 1});
                        c3 = 'y';
                    } else if (successor == 'Y') {
                        StringBuilder sb2 = new StringBuilder(((StringBuilder) objArr[1]).toString());
                        sb2.append('d');
                        arrayList.add(new Object[]{'d', sb2, 1});
                    } else {
                        c3 = successor;
                    }
                    ((StringBuilder) objArr[1]).append(c3);
                    if (c3 == ((Character) objArr[0]).charValue()) {
                        objArr[2] = Integer.valueOf(iIntValue + 1);
                    } else {
                        objArr[0] = Character.valueOf(c3);
                        objArr[2] = 1;
                    }
                }
                i5++;
                c = 2;
            }
            int size2 = arrayList2.size();
            for (int i6 = 0; i6 < size2; i6++) {
                arrayList.remove((Object[]) arrayList2.get(i6));
            }
            arrayList2.clear();
            c = 2;
        }
        int size3 = arrayList.size();
        for (int i7 = 0; i7 < size3; i7++) {
            Object[] objArr2 = (Object[]) arrayList.get(i7);
            char cCharValue = ((Character) objArr2[0]).charValue();
            boolean z6 = getSuccessor(cCharValue, ((Integer) objArr2[2]).intValue()) != cCharValue;
            if (cCharValue != 's' && cCharValue != 'm') {
                z3 = cCharValue == 'h' && z;
                boolean z7 = (z6 || cCharValue != 'd' || z) ? false : true;
                if (((StringBuilder) objArr2[1]).toString().indexOf(87) != -1) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if ((z3 && !z7) || z4) {
                    arrayList2.add(objArr2);
                }
            }
            if (z6) {
            }
            if (z6) {
            }
            if (((StringBuilder) objArr2[1]).toString().indexOf(87) != -1) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z3) {
            }
        }
        int size4 = arrayList2.size();
        for (int i8 = 0; i8 < size4; i8++) {
            arrayList.remove(arrayList2.get(i8));
        }
        arrayList2.clear();
        StringBuilder sb3 = (StringBuilder) ((Object[]) arrayList.get(0))[1];
        sb3.setLength(sb3.length() - 1);
        return sb3.toString();
    }

    @Override // java.sql.PreparedStatement
    public java.sql.ResultSetMetaData getMetaData() throws SQLException {
        ResultSet resultSet;
        PreparedStatement preparedStatement;
        ResultSet resultSet2;
        synchronized (checkClosed().getConnectionMutex()) {
            SQLException e = null;
            if (!isSelectQuery()) {
                return null;
            }
            if (this.pstmtResultMetaData == null) {
                try {
                    PreparedStatement preparedStatement2 = new PreparedStatement(this.connection, this.originalSql, this.currentCatalog, this.parseInfo);
                    try {
                        preparedStatement2.setMaxRows(1);
                        int length = this.parameterValues.length;
                        for (int i = 1; i <= length; i++) {
                            preparedStatement2.setString(i, "");
                        }
                        if (preparedStatement2.execute()) {
                            resultSet2 = preparedStatement2.getResultSet();
                            try {
                                this.pstmtResultMetaData = resultSet2.getMetaData();
                            } catch (Throwable th) {
                                preparedStatement = preparedStatement2;
                                resultSet = resultSet2;
                                th = th;
                                if (resultSet != null) {
                                    try {
                                        resultSet.close();
                                    } catch (SQLException e2) {
                                        e = e2;
                                    }
                                }
                                if (preparedStatement != null) {
                                    try {
                                        preparedStatement.close();
                                    } catch (SQLException e3) {
                                        e = e3;
                                    }
                                }
                                if (e == null) {
                                    throw th;
                                }
                                throw e;
                            }
                        } else {
                            this.pstmtResultMetaData = new ResultSetMetaData(new Field[0], this.connection.getUseOldAliasMetadataBehavior(), this.connection.getYearIsDateType(), getExceptionInterceptor());
                            resultSet2 = null;
                        }
                        if (resultSet2 != null) {
                            try {
                                resultSet2.close();
                            } catch (SQLException e4) {
                                e = e4;
                            }
                        }
                        try {
                            preparedStatement2.close();
                        } catch (SQLException e5) {
                            e = e5;
                        }
                        if (e != null) {
                            throw e;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        preparedStatement = preparedStatement2;
                        resultSet = null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    resultSet = null;
                    preparedStatement = null;
                }
            }
            return this.pstmtResultMetaData;
        }
    }

    protected boolean isSelectQuery() throws SQLException {
        boolean zStartsWithIgnoreCaseAndWs;
        synchronized (checkClosed().getConnectionMutex()) {
            zStartsWithIgnoreCaseAndWs = StringUtils.startsWithIgnoreCaseAndWs(StringUtils.stripComments(this.originalSql, "'\"", "'\"", true, false, true, true), "SELECT");
        }
        return zStartsWithIgnoreCaseAndWs;
    }

    public ParameterMetaData getParameterMetaData() throws SQLException {
        MysqlParameterMetadata mysqlParameterMetadata;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.parameterMetaData == null) {
                if (this.connection.getGenerateSimpleParameterMetadata()) {
                    this.parameterMetaData = new MysqlParameterMetadata(this.parameterCount);
                } else {
                    this.parameterMetaData = new MysqlParameterMetadata(null, this.parameterCount, getExceptionInterceptor());
                }
            }
            mysqlParameterMetadata = this.parameterMetaData;
        }
        return mysqlParameterMetadata;
    }

    ParseInfo getParseInfo() {
        return this.parseInfo;
    }

    private final void hexEscapeBlock(byte[] bArr, Buffer buffer, int i) throws SQLException {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = bArr[i2] & StatementImpl.USES_VARIABLES_UNKNOWN;
            buffer.writeByte(HEX_DIGITS[i3 / 16]);
            buffer.writeByte(HEX_DIGITS[i3 % 16]);
        }
    }

    private void initializeFromParseInfo() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            this.staticSqlStrings = this.parseInfo.staticSql;
            this.isLoadDataQuery = this.parseInfo.foundLoadData;
            this.firstCharOfStmt = this.parseInfo.firstStmtChar;
            this.parameterCount = this.staticSqlStrings.length - 1;
            this.parameterValues = new byte[this.parameterCount][];
            this.parameterStreams = new InputStream[this.parameterCount];
            this.isStream = new boolean[this.parameterCount];
            this.streamLengths = new int[this.parameterCount];
            this.isNull = new boolean[this.parameterCount];
            this.parameterTypes = new int[this.parameterCount];
            clearParameters();
            for (int i = 0; i < this.parameterCount; i++) {
                this.isStream[i] = false;
            }
        }
    }

    boolean isNull(int i) throws SQLException {
        boolean z;
        synchronized (checkClosed().getConnectionMutex()) {
            z = this.isNull[i];
        }
        return z;
    }

    private final int readblock(InputStream inputStream, byte[] bArr) throws SQLException {
        try {
            return inputStream.read(bArr);
        } catch (Throwable th) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("PreparedStatement.56") + th.getClass().getName(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
            sQLExceptionCreateSQLException.initCause(th);
            throw sQLExceptionCreateSQLException;
        }
    }

    private final int readblock(InputStream inputStream, byte[] bArr, int i) throws SQLException {
        try {
            if (i > bArr.length) {
                i = bArr.length;
            }
            return inputStream.read(bArr, 0, i);
        } catch (Throwable th) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("PreparedStatement.56") + th.getClass().getName(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
            sQLExceptionCreateSQLException.initCause(th);
            throw sQLExceptionCreateSQLException;
        }
    }

    @Override // com.mysql.jdbc.StatementImpl
    protected void realClose(boolean z, boolean z2) throws SQLException {
        MySQLConnection mySQLConnection = this.connection;
        if (mySQLConnection == null) {
            return;
        }
        synchronized (mySQLConnection.getConnectionMutex()) {
            if (this.isClosed) {
                return;
            }
            if (this.useUsageAdvisor && this.numberOfExecutions <= 1) {
                this.eventSink.consumeEvent(new ProfilerEvent((byte) 0, "", this.currentCatalog, this.connectionId, getId(), -1, System.currentTimeMillis(), 0L, Constants.MILLIS_I18N, null, this.pointOfOrigin, Messages.getString("PreparedStatement.43")));
            }
            super.realClose(z, z2);
            this.dbmd = null;
            this.originalSql = null;
            this.staticSqlStrings = (byte[][]) null;
            this.parameterValues = (byte[][]) null;
            this.parameterStreams = null;
            this.isStream = null;
            this.streamLengths = null;
            this.isNull = null;
            this.streamConvertBuf = null;
            this.parameterTypes = null;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setArray(int i, Array array) throws SQLException {
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    @Override // java.sql.PreparedStatement
    public void setAsciiStream(int i, InputStream inputStream, int i2) throws SQLException {
        if (inputStream == null) {
            setNull(i, 12);
        } else {
            setBinaryStream(i, inputStream, i2);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBigDecimal(int i, BigDecimal bigDecimal) throws SQLException {
        if (bigDecimal == null) {
            setNull(i, 3);
        } else {
            setInternal(i, StringUtils.fixDecimalExponent(StringUtils.consistentToString(bigDecimal)));
            this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 3;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBinaryStream(int i, InputStream inputStream, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (inputStream == null) {
                    setNull(i, -2);
                } else {
                    int parameterIndexOffset = getParameterIndexOffset();
                    if (i < 1 || i > this.staticSqlStrings.length) {
                        throw SQLError.createSQLException(Messages.getString("PreparedStatement.2") + i + Messages.getString("PreparedStatement.3") + this.staticSqlStrings.length + Messages.getString("PreparedStatement.4"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                    }
                    if (parameterIndexOffset == -1 && i == 1) {
                        throw SQLError.createSQLException("Can't set IN parameter for return value of stored function call.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                    }
                    int i3 = i - 1;
                    int i4 = parameterIndexOffset + i3;
                    this.parameterStreams[i4] = inputStream;
                    this.isStream[i4] = true;
                    this.streamLengths[i4] = i2;
                    this.isNull[i4] = false;
                    this.parameterTypes[i3 + getParameterIndexOffset()] = 2004;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.sql.PreparedStatement
    public void setBlob(int i, InputStream inputStream, long j) throws SQLException {
        setBinaryStream(i, inputStream, (int) j);
    }

    @Override // java.sql.PreparedStatement
    public void setBlob(int i, java.sql.Blob blob) throws SQLException {
        if (blob == null) {
            setNull(i, 2004);
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byteArrayOutputStream.write(39);
        escapeblockFast(blob.getBytes(1L, (int) blob.length()), byteArrayOutputStream, (int) blob.length());
        byteArrayOutputStream.write(39);
        setInternal(i, byteArrayOutputStream.toByteArray());
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 2004;
    }

    @Override // java.sql.PreparedStatement
    public void setBoolean(int i, boolean z) throws SQLException {
        if (this.useTrueBoolean) {
            setInternal(i, z ? "1" : "0");
        } else {
            setInternal(i, z ? "'t'" : "'f'");
            this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 16;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setByte(int i, byte b) throws SQLException {
        setInternal(i, String.valueOf((int) b));
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = -6;
    }

    @Override // java.sql.PreparedStatement
    public void setBytes(int i, byte[] bArr) throws SQLException {
        setBytes(i, bArr, true, true);
        if (bArr != null) {
            this.parameterTypes[(i - 1) + getParameterIndexOffset()] = -2;
        }
    }

    protected void setBytes(int i, byte[] bArr, boolean z, boolean z2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (bArr == null) {
                    setNull(i, -2);
                } else {
                    String encoding = this.connection.getEncoding();
                    try {
                        int i2 = 0;
                        if (this.connection.isNoBackslashEscapesSet() || (z2 && this.connection.getUseUnicode() && encoding != null && CharsetMapping.isMultibyteCharset(encoding))) {
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((bArr.length * 2) + 3);
                            byteArrayOutputStream.write(120);
                            byteArrayOutputStream.write(39);
                            while (i2 < bArr.length) {
                                int i3 = (bArr[i2] & StatementImpl.USES_VARIABLES_UNKNOWN) / 16;
                                int i4 = (bArr[i2] & StatementImpl.USES_VARIABLES_UNKNOWN) % 16;
                                byteArrayOutputStream.write(HEX_DIGITS[i3]);
                                byteArrayOutputStream.write(HEX_DIGITS[i4]);
                                i2++;
                            }
                            byteArrayOutputStream.write(39);
                            setInternal(i, byteArrayOutputStream.toByteArray());
                            return;
                        }
                        int length = bArr.length;
                        boolean z3 = true;
                        if (!z || !this.connection.versionMeetsMinimum(4, 1, 0)) {
                            z3 = false;
                        }
                        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream((z3 ? 9 : 2) + length);
                        if (z3) {
                            byteArrayOutputStream2.write(95);
                            byteArrayOutputStream2.write(98);
                            byteArrayOutputStream2.write(105);
                            byteArrayOutputStream2.write(110);
                            byteArrayOutputStream2.write(97);
                            byteArrayOutputStream2.write(114);
                            byteArrayOutputStream2.write(121);
                        }
                        byteArrayOutputStream2.write(39);
                        while (i2 < length) {
                            byte b = bArr[i2];
                            if (b == 0) {
                                byteArrayOutputStream2.write(92);
                                byteArrayOutputStream2.write(48);
                            } else if (b == 10) {
                                byteArrayOutputStream2.write(92);
                                byteArrayOutputStream2.write(110);
                            } else if (b == 13) {
                                byteArrayOutputStream2.write(92);
                                byteArrayOutputStream2.write(114);
                            } else if (b == 26) {
                                byteArrayOutputStream2.write(92);
                                byteArrayOutputStream2.write(90);
                            } else if (b == 34) {
                                byteArrayOutputStream2.write(92);
                                byteArrayOutputStream2.write(34);
                            } else if (b == 39) {
                                byteArrayOutputStream2.write(92);
                                byteArrayOutputStream2.write(39);
                            } else if (b == 92) {
                                byteArrayOutputStream2.write(92);
                                byteArrayOutputStream2.write(92);
                            } else {
                                byteArrayOutputStream2.write(b);
                            }
                            i2++;
                        }
                        byteArrayOutputStream2.write(39);
                        setInternal(i, byteArrayOutputStream2.toByteArray());
                    } catch (RuntimeException e) {
                        SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(e.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
                        sQLExceptionCreateSQLException.initCause(e);
                        throw sQLExceptionCreateSQLException;
                    } catch (SQLException e2) {
                        throw e2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected void setBytesNoEscape(int i, byte[] bArr) throws SQLException {
        byte[] bArr2 = new byte[bArr.length + 2];
        bArr2[0] = 39;
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        bArr2[bArr.length + 1] = 39;
        setInternal(i, bArr2);
    }

    protected void setBytesNoEscapeNoQuotes(int i, byte[] bArr) throws SQLException {
        setInternal(i, bArr);
    }

    @Override // java.sql.PreparedStatement
    public void setCharacterStream(int i, Reader reader, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                try {
                    if (reader == null) {
                        setNull(i, -1);
                    } else {
                        boolean useStreamLengthsInPrepStmts = this.connection.getUseStreamLengthsInPrepStmts();
                        String clobCharacterEncoding = this.connection.getClobCharacterEncoding();
                        if (useStreamLengthsInPrepStmts && i2 != -1) {
                            char[] cArr = new char[i2];
                            int fully = readFully(reader, cArr, i2);
                            if (clobCharacterEncoding == null) {
                                setString(i, new String(cArr, 0, fully));
                            } else {
                                try {
                                    setBytes(i, StringUtils.getBytes(new String(cArr, 0, fully), clobCharacterEncoding));
                                } catch (UnsupportedEncodingException unused) {
                                    throw SQLError.createSQLException("Unsupported character encoding " + clobCharacterEncoding, SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                                }
                            }
                        } else {
                            char[] cArr2 = new char[4096];
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                int i3 = reader.read(cArr2);
                                if (i3 == -1) {
                                    break;
                                } else {
                                    sb.append(cArr2, 0, i3);
                                }
                            }
                            if (clobCharacterEncoding == null) {
                                setString(i, sb.toString());
                            } else {
                                try {
                                    setBytes(i, StringUtils.getBytes(sb.toString(), clobCharacterEncoding));
                                } catch (UnsupportedEncodingException unused2) {
                                    throw SQLError.createSQLException("Unsupported character encoding " + clobCharacterEncoding, SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                                }
                            }
                        }
                        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 2005;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            } catch (IOException e) {
                throw SQLError.createSQLException(e.toString(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
            }
        }
    }

    @Override // java.sql.PreparedStatement
    public void setClob(int i, java.sql.Clob clob) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (clob == null) {
                    setNull(i, 2005);
                } else {
                    String clobCharacterEncoding = this.connection.getClobCharacterEncoding();
                    if (clobCharacterEncoding == null) {
                        setString(i, clob.getSubString(1L, (int) clob.length()));
                    } else {
                        try {
                            setBytes(i, StringUtils.getBytes(clob.getSubString(1L, (int) clob.length()), clobCharacterEncoding));
                        } catch (UnsupportedEncodingException unused) {
                            throw SQLError.createSQLException("Unsupported character encoding " + clobCharacterEncoding, SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                        }
                    }
                    this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 2005;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.sql.PreparedStatement
    public void setDate(int i, java.sql.Date date) throws SQLException {
        setDate(i, date, null);
    }

    @Override // java.sql.PreparedStatement
    public void setDate(int i, java.sql.Date date, Calendar calendar) throws SQLException {
        if (date == null) {
            setNull(i, 91);
            return;
        }
        if (!this.useLegacyDatetimeCode) {
            newSetDateInternal(i, date, calendar);
            return;
        }
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.ddf == null) {
                this.ddf = new SimpleDateFormat("''yyyy-MM-dd''", Locale.US);
            }
            if (calendar != null) {
                this.ddf.setTimeZone(calendar.getTimeZone());
            }
            setInternal(i, this.ddf.format((Date) date));
            this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 91;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setDouble(int i, double d) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.connection.getAllowNanAndInf() && (d == Double.POSITIVE_INFINITY || d == Double.NEGATIVE_INFINITY || Double.isNaN(d))) {
                throw SQLError.createSQLException("'" + d + "' is not a valid numeric or approximate numeric value", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            }
            setInternal(i, StringUtils.fixDecimalExponent(String.valueOf(d)));
            this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 8;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setFloat(int i, float f) throws SQLException {
        setInternal(i, StringUtils.fixDecimalExponent(String.valueOf(f)));
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 6;
    }

    @Override // java.sql.PreparedStatement
    public void setInt(int i, int i2) throws SQLException {
        setInternal(i, String.valueOf(i2));
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 4;
    }

    protected final void setInternal(int i, byte[] bArr) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            int parameterIndexOffset = getParameterIndexOffset();
            checkBounds(i, parameterIndexOffset);
            int i2 = (i - 1) + parameterIndexOffset;
            this.isStream[i2] = false;
            this.isNull[i2] = false;
            this.parameterStreams[i2] = null;
            this.parameterValues[i2] = bArr;
        }
    }

    protected void checkBounds(int i, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (i < 1) {
                    throw SQLError.createSQLException(Messages.getString("PreparedStatement.49") + i + Messages.getString("PreparedStatement.50"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                }
                if (i > this.parameterCount) {
                    throw SQLError.createSQLException(Messages.getString("PreparedStatement.51") + i + Messages.getString("PreparedStatement.52") + this.parameterValues.length + Messages.getString("PreparedStatement.53"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                }
                if (i2 == -1 && i == 1) {
                    throw SQLError.createSQLException("Can't set IN parameter for return value of stored function call.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected final void setInternal(int i, String str) throws SQLException {
        byte[] bytes;
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.charConverter != null) {
                bytes = this.charConverter.toBytes(str);
            } else {
                bytes = StringUtils.getBytes(str, this.charConverter, this.charEncoding, this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor());
            }
            setInternal(i, bytes);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setLong(int i, long j) throws SQLException {
        setInternal(i, String.valueOf(j));
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = -5;
    }

    @Override // java.sql.PreparedStatement
    public void setNull(int i, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            setInternal(i, "null");
            int i3 = i - 1;
            this.isNull[getParameterIndexOffset() + i3] = true;
            this.parameterTypes[i3 + getParameterIndexOffset()] = 0;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNull(int i, int i2, String str) throws SQLException {
        setNull(i, i2);
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 0;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x0040  */
    private void setNumericObject(int i, Object obj, int i2, int i3) throws SQLException {
        Number numberValueOf;
        BigDecimal scale;
        if (obj instanceof Boolean) {
            numberValueOf = ((Boolean) obj).booleanValue() ? 1 : 0;
        } else if (obj instanceof String) {
            switch (i2) {
                case -7:
                    if ("1".equals(obj) || "0".equals(obj)) {
                        numberValueOf = Integer.valueOf((String) obj);
                    } else if (!"true".equalsIgnoreCase((String) obj)) {
                        numberValueOf = 0;
                    } else {
                        numberValueOf = 1;
                    }
                    break;
                case -6:
                    numberValueOf = Integer.valueOf((String) obj);
                    break;
                case -5:
                    numberValueOf = Long.valueOf((String) obj);
                    break;
                default:
                    switch (i2) {
                        case 4:
                        case 5:
                            numberValueOf = Integer.valueOf((String) obj);
                            break;
                        case 6:
                        case 8:
                            numberValueOf = Double.valueOf((String) obj);
                            break;
                        case 7:
                            numberValueOf = Float.valueOf((String) obj);
                            break;
                        default:
                            numberValueOf = new BigDecimal((String) obj);
                            break;
                    }
                    break;
            }
        } else {
            numberValueOf = (Number) obj;
        }
        switch (i2) {
            case -7:
            case -6:
                break;
            case -5:
                setLong(i, numberValueOf.longValue());
                return;
            default:
                switch (i2) {
                    case 2:
                    case 3:
                        if (numberValueOf instanceof BigDecimal) {
                            try {
                                try {
                                    scale = ((BigDecimal) numberValueOf).setScale(i3);
                                } catch (ArithmeticException unused) {
                                    throw SQLError.createSQLException("Can't set scale of '" + i3 + "' for DECIMAL argument '" + numberValueOf + "'", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                                }
                                break;
                            } catch (ArithmeticException unused2) {
                                scale = ((BigDecimal) numberValueOf).setScale(i3, 4);
                                break;
                            }
                            setBigDecimal(i, scale);
                            return;
                        }
                        if (numberValueOf instanceof BigInteger) {
                            setBigDecimal(i, new BigDecimal((BigInteger) numberValueOf, i3));
                            return;
                        } else {
                            setBigDecimal(i, new BigDecimal(numberValueOf.doubleValue()));
                            return;
                        }
                    case 4:
                    case 5:
                        break;
                    case 6:
                    case 8:
                        setDouble(i, numberValueOf.doubleValue());
                        return;
                    case 7:
                        setFloat(i, numberValueOf.floatValue());
                        return;
                    default:
                        return;
                }
                break;
        }
        setInt(i, numberValueOf.intValue());
    }

    public void setObject(int i, Object obj) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (obj == null) {
                    setNull(i, MysqlErrorNumbers.ER_INVALID_GROUP_FUNC_USE);
                } else if (obj instanceof Byte) {
                    setInt(i, ((Byte) obj).intValue());
                } else if (obj instanceof String) {
                    setString(i, (String) obj);
                } else if (obj instanceof BigDecimal) {
                    setBigDecimal(i, (BigDecimal) obj);
                } else if (obj instanceof Short) {
                    setShort(i, ((Short) obj).shortValue());
                } else if (obj instanceof Integer) {
                    setInt(i, ((Integer) obj).intValue());
                } else if (obj instanceof Long) {
                    setLong(i, ((Long) obj).longValue());
                } else if (obj instanceof Float) {
                    setFloat(i, ((Float) obj).floatValue());
                } else if (obj instanceof Double) {
                    setDouble(i, ((Double) obj).doubleValue());
                } else if (obj instanceof byte[]) {
                    setBytes(i, (byte[]) obj);
                } else if (obj instanceof java.sql.Date) {
                    setDate(i, (java.sql.Date) obj);
                } else if (obj instanceof Time) {
                    setTime(i, (Time) obj);
                } else if (obj instanceof Timestamp) {
                    setTimestamp(i, (Timestamp) obj);
                } else if (obj instanceof Boolean) {
                    setBoolean(i, ((Boolean) obj).booleanValue());
                } else if (obj instanceof InputStream) {
                    setBinaryStream(i, (InputStream) obj, -1);
                } else if (obj instanceof java.sql.Blob) {
                    setBlob(i, (java.sql.Blob) obj);
                } else if (obj instanceof java.sql.Clob) {
                    setClob(i, (java.sql.Clob) obj);
                } else if (this.connection.getTreatUtilDateAsTimestamp() && (obj instanceof Date)) {
                    setTimestamp(i, new Timestamp(((Date) obj).getTime()));
                } else if (obj instanceof BigInteger) {
                    setString(i, obj.toString());
                } else {
                    setSerializableObject(i, obj);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setObject(int i, Object obj, int i2) throws SQLException {
        if (!(obj instanceof BigDecimal)) {
            setObject(i, obj, i2, 0);
        } else {
            setObject(i, obj, i2, ((BigDecimal) obj).scale());
        }
    }

    /* JADX WARN: Code duplicated, block: B:51:0x00f8 A[Catch: all -> 0x0012, Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:19:0x002d, B:20:0x003d, B:23:0x0041, B:25:0x0045, B:26:0x004d, B:27:0x0056, B:29:0x005a, B:30:0x007d, B:32:0x0081, B:33:0x0092, B:34:0x009a, B:36:0x009e, B:43:0x00c6, B:45:0x00ca, B:46:0x00d1, B:47:0x00df, B:49:0x00e3, B:50:0x00ea, B:37:0x00b9, B:51:0x00f8, B:53:0x00fc, B:54:0x0106, B:56:0x010a, B:57:0x0112, B:58:0x0133, B:59:0x0138, B:60:0x013d, B:62:0x0141, B:63:0x014d, B:65:0x0151, B:67:0x015c, B:71:0x0169, B:72:0x016d, B:74:0x0171, B:78:0x017c, B:79:0x0180, B:80:0x01a8, B:81:0x01a9, B:83:0x01ad, B:84:0x01bc), top: B:95:0x0017, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00fc A[Catch: all -> 0x0012, Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:19:0x002d, B:20:0x003d, B:23:0x0041, B:25:0x0045, B:26:0x004d, B:27:0x0056, B:29:0x005a, B:30:0x007d, B:32:0x0081, B:33:0x0092, B:34:0x009a, B:36:0x009e, B:43:0x00c6, B:45:0x00ca, B:46:0x00d1, B:47:0x00df, B:49:0x00e3, B:50:0x00ea, B:37:0x00b9, B:51:0x00f8, B:53:0x00fc, B:54:0x0106, B:56:0x010a, B:57:0x0112, B:58:0x0133, B:59:0x0138, B:60:0x013d, B:62:0x0141, B:63:0x014d, B:65:0x0151, B:67:0x015c, B:71:0x0169, B:72:0x016d, B:74:0x0171, B:78:0x017c, B:79:0x0180, B:80:0x01a8, B:81:0x01a9, B:83:0x01ad, B:84:0x01bc), top: B:95:0x0017, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0106 A[Catch: all -> 0x0012, Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:19:0x002d, B:20:0x003d, B:23:0x0041, B:25:0x0045, B:26:0x004d, B:27:0x0056, B:29:0x005a, B:30:0x007d, B:32:0x0081, B:33:0x0092, B:34:0x009a, B:36:0x009e, B:43:0x00c6, B:45:0x00ca, B:46:0x00d1, B:47:0x00df, B:49:0x00e3, B:50:0x00ea, B:37:0x00b9, B:51:0x00f8, B:53:0x00fc, B:54:0x0106, B:56:0x010a, B:57:0x0112, B:58:0x0133, B:59:0x0138, B:60:0x013d, B:62:0x0141, B:63:0x014d, B:65:0x0151, B:67:0x015c, B:71:0x0169, B:72:0x016d, B:74:0x0171, B:78:0x017c, B:79:0x0180, B:80:0x01a8, B:81:0x01a9, B:83:0x01ad, B:84:0x01bc), top: B:95:0x0017, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:56:0x010a A[Catch: all -> 0x0012, Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:19:0x002d, B:20:0x003d, B:23:0x0041, B:25:0x0045, B:26:0x004d, B:27:0x0056, B:29:0x005a, B:30:0x007d, B:32:0x0081, B:33:0x0092, B:34:0x009a, B:36:0x009e, B:43:0x00c6, B:45:0x00ca, B:46:0x00d1, B:47:0x00df, B:49:0x00e3, B:50:0x00ea, B:37:0x00b9, B:51:0x00f8, B:53:0x00fc, B:54:0x0106, B:56:0x010a, B:57:0x0112, B:58:0x0133, B:59:0x0138, B:60:0x013d, B:62:0x0141, B:63:0x014d, B:65:0x0151, B:67:0x015c, B:71:0x0169, B:72:0x016d, B:74:0x0171, B:78:0x017c, B:79:0x0180, B:80:0x01a8, B:81:0x01a9, B:83:0x01ad, B:84:0x01bc), top: B:95:0x0017, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:57:0x0112 A[Catch: all -> 0x0012, Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:19:0x002d, B:20:0x003d, B:23:0x0041, B:25:0x0045, B:26:0x004d, B:27:0x0056, B:29:0x005a, B:30:0x007d, B:32:0x0081, B:33:0x0092, B:34:0x009a, B:36:0x009e, B:43:0x00c6, B:45:0x00ca, B:46:0x00d1, B:47:0x00df, B:49:0x00e3, B:50:0x00ea, B:37:0x00b9, B:51:0x00f8, B:53:0x00fc, B:54:0x0106, B:56:0x010a, B:57:0x0112, B:58:0x0133, B:59:0x0138, B:60:0x013d, B:62:0x0141, B:63:0x014d, B:65:0x0151, B:67:0x015c, B:71:0x0169, B:72:0x016d, B:74:0x0171, B:78:0x017c, B:79:0x0180, B:80:0x01a8, B:81:0x01a9, B:83:0x01ad, B:84:0x01bc), top: B:95:0x0017, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0133 A[Catch: all -> 0x0012, Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:19:0x002d, B:20:0x003d, B:23:0x0041, B:25:0x0045, B:26:0x004d, B:27:0x0056, B:29:0x005a, B:30:0x007d, B:32:0x0081, B:33:0x0092, B:34:0x009a, B:36:0x009e, B:43:0x00c6, B:45:0x00ca, B:46:0x00d1, B:47:0x00df, B:49:0x00e3, B:50:0x00ea, B:37:0x00b9, B:51:0x00f8, B:53:0x00fc, B:54:0x0106, B:56:0x010a, B:57:0x0112, B:58:0x0133, B:59:0x0138, B:60:0x013d, B:62:0x0141, B:63:0x014d, B:65:0x0151, B:67:0x015c, B:71:0x0169, B:72:0x016d, B:74:0x0171, B:78:0x017c, B:79:0x0180, B:80:0x01a8, B:81:0x01a9, B:83:0x01ad, B:84:0x01bc), top: B:95:0x0017, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x01a9 A[Catch: all -> 0x0012, Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:19:0x002d, B:20:0x003d, B:23:0x0041, B:25:0x0045, B:26:0x004d, B:27:0x0056, B:29:0x005a, B:30:0x007d, B:32:0x0081, B:33:0x0092, B:34:0x009a, B:36:0x009e, B:43:0x00c6, B:45:0x00ca, B:46:0x00d1, B:47:0x00df, B:49:0x00e3, B:50:0x00ea, B:37:0x00b9, B:51:0x00f8, B:53:0x00fc, B:54:0x0106, B:56:0x010a, B:57:0x0112, B:58:0x0133, B:59:0x0138, B:60:0x013d, B:62:0x0141, B:63:0x014d, B:65:0x0151, B:67:0x015c, B:71:0x0169, B:72:0x016d, B:74:0x0171, B:78:0x017c, B:79:0x0180, B:80:0x01a8, B:81:0x01a9, B:83:0x01ad, B:84:0x01bc), top: B:95:0x0017, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x01ad A[Catch: all -> 0x0012, Exception -> 0x003e, TryCatch #0 {Exception -> 0x003e, blocks: (B:19:0x002d, B:20:0x003d, B:23:0x0041, B:25:0x0045, B:26:0x004d, B:27:0x0056, B:29:0x005a, B:30:0x007d, B:32:0x0081, B:33:0x0092, B:34:0x009a, B:36:0x009e, B:43:0x00c6, B:45:0x00ca, B:46:0x00d1, B:47:0x00df, B:49:0x00e3, B:50:0x00ea, B:37:0x00b9, B:51:0x00f8, B:53:0x00fc, B:54:0x0106, B:56:0x010a, B:57:0x0112, B:58:0x0133, B:59:0x0138, B:60:0x013d, B:62:0x0141, B:63:0x014d, B:65:0x0151, B:67:0x015c, B:71:0x0169, B:72:0x016d, B:74:0x0171, B:78:0x017c, B:79:0x0180, B:80:0x01a8, B:81:0x01a9, B:83:0x01ad, B:84:0x01bc), top: B:95:0x0017, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x01bc A[Catch: all -> 0x0012, Exception -> 0x003e, TRY_LEAVE, TryCatch #0 {Exception -> 0x003e, blocks: (B:19:0x002d, B:20:0x003d, B:23:0x0041, B:25:0x0045, B:26:0x004d, B:27:0x0056, B:29:0x005a, B:30:0x007d, B:32:0x0081, B:33:0x0092, B:34:0x009a, B:36:0x009e, B:43:0x00c6, B:45:0x00ca, B:46:0x00d1, B:47:0x00df, B:49:0x00e3, B:50:0x00ea, B:37:0x00b9, B:51:0x00f8, B:53:0x00fc, B:54:0x0106, B:56:0x010a, B:57:0x0112, B:58:0x0133, B:59:0x0138, B:60:0x013d, B:62:0x0141, B:63:0x014d, B:65:0x0151, B:67:0x015c, B:71:0x0169, B:72:0x016d, B:74:0x0171, B:78:0x017c, B:79:0x0180, B:80:0x01a8, B:81:0x01a9, B:83:0x01ad, B:84:0x01bc), top: B:95:0x0017, outer: #1 }] */
    public void setObject(int i, Object obj, int i2, int i3) throws SQLException {
        Date date;
        synchronized (checkClosed().getConnectionMutex()) {
            if (obj == null) {
                setNull(i, MysqlErrorNumbers.ER_INVALID_GROUP_FUNC_USE);
            } else {
                try {
                    if (i2 != 12) {
                        boolean z = true;
                        if (i2 != 16) {
                            if (i2 != 1111) {
                                switch (i2) {
                                    case -7:
                                    case -6:
                                    case -5:
                                        setNumericObject(i, obj, i2, i3);
                                        break;
                                    case -4:
                                    case -3:
                                    case -2:
                                        if (obj instanceof byte[]) {
                                            setBytes(i, (byte[]) obj);
                                        } else if (obj instanceof java.sql.Blob) {
                                            setBlob(i, (java.sql.Blob) obj);
                                        } else {
                                            setBytes(i, StringUtils.getBytes(obj.toString(), this.charConverter, this.charEncoding, this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor()));
                                        }
                                        break;
                                    case -1:
                                        if (obj instanceof BigDecimal) {
                                            setString(i, StringUtils.fixDecimalExponent(StringUtils.consistentToString((BigDecimal) obj)));
                                        } else {
                                            setString(i, obj.toString());
                                        }
                                        break;
                                    default:
                                        switch (i2) {
                                            case 1:
                                                if (obj instanceof BigDecimal) {
                                                    setString(i, StringUtils.fixDecimalExponent(StringUtils.consistentToString((BigDecimal) obj)));
                                                } else {
                                                    setString(i, obj.toString());
                                                }
                                                break;
                                            case 2:
                                            case 3:
                                            case 4:
                                            case 5:
                                            case 6:
                                            case 7:
                                            case 8:
                                                setNumericObject(i, obj, i2, i3);
                                                break;
                                            default:
                                                switch (i2) {
                                                    case 91:
                                                    case 93:
                                                        if (obj instanceof String) {
                                                            date = new SimpleDateFormat(getDateTimePattern((String) obj, false), Locale.US).parse((String) obj, new ParsePosition(0));
                                                        } else {
                                                            date = (Date) obj;
                                                        }
                                                        if (i2 == 91) {
                                                            if (date instanceof java.sql.Date) {
                                                                setDate(i, (java.sql.Date) date);
                                                            } else {
                                                                setDate(i, new java.sql.Date(date.getTime()));
                                                            }
                                                        } else if (i2 == 93) {
                                                            if (date instanceof Timestamp) {
                                                                setTimestamp(i, (Timestamp) date);
                                                            } else {
                                                                setTimestamp(i, new Timestamp(date.getTime()));
                                                            }
                                                        }
                                                        break;
                                                    case 92:
                                                        if (obj instanceof String) {
                                                            setTime(i, new Time(new SimpleDateFormat(getDateTimePattern((String) obj, true), Locale.US).parse((String) obj).getTime()));
                                                        } else if (obj instanceof Timestamp) {
                                                            setTime(i, new Time(((Timestamp) obj).getTime()));
                                                        } else {
                                                            setTime(i, (Time) obj);
                                                        }
                                                        break;
                                                    default:
                                                        switch (i2) {
                                                            case 2004:
                                                                if (obj instanceof byte[]) {
                                                                    setBytes(i, (byte[]) obj);
                                                                } else if (obj instanceof java.sql.Blob) {
                                                                    setBlob(i, (java.sql.Blob) obj);
                                                                } else {
                                                                    setBytes(i, StringUtils.getBytes(obj.toString(), this.charConverter, this.charEncoding, this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor()));
                                                                }
                                                                break;
                                                            case 2005:
                                                                if (obj instanceof java.sql.Clob) {
                                                                    setClob(i, (java.sql.Clob) obj);
                                                                } else {
                                                                    setString(i, obj.toString());
                                                                }
                                                                break;
                                                            default:
                                                                throw SQLError.createSQLException(Messages.getString("PreparedStatement.16"), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                            } else {
                                setSerializableObject(i, obj);
                            }
                        } else if (obj instanceof Boolean) {
                            setBoolean(i, ((Boolean) obj).booleanValue());
                        } else if (obj instanceof String) {
                            if (!"true".equalsIgnoreCase((String) obj) && "0".equalsIgnoreCase((String) obj)) {
                                z = false;
                            }
                            setBoolean(i, z);
                        } else {
                            if (!(obj instanceof Number)) {
                                throw SQLError.createSQLException("No conversion from " + obj.getClass().getName() + " to Types.BOOLEAN possible.", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                            }
                            if (((Number) obj).intValue() == 0) {
                                z = false;
                            }
                            setBoolean(i, z);
                        }
                    } else if (obj instanceof BigDecimal) {
                        setString(i, StringUtils.fixDecimalExponent(StringUtils.consistentToString((BigDecimal) obj)));
                    } else {
                        setString(i, obj.toString());
                    }
                } catch (Exception e) {
                    if (e instanceof SQLException) {
                        throw ((SQLException) e);
                    }
                    SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("PreparedStatement.17") + obj.getClass().toString() + Messages.getString("PreparedStatement.18") + e.getClass().getName() + Messages.getString("PreparedStatement.19") + e.getMessage(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                    sQLExceptionCreateSQLException.initCause(e);
                    throw sQLExceptionCreateSQLException;
                }
            }
        }
    }

    protected int setOneBatchedParameterSet(java.sql.PreparedStatement preparedStatement, int i, Object obj) throws SQLException {
        int i2;
        BatchParams batchParams = (BatchParams) obj;
        boolean[] zArr = batchParams.isNull;
        boolean[] zArr2 = batchParams.isStream;
        int i3 = i;
        for (int i4 = 0; i4 < zArr.length; i4++) {
            if (zArr[i4]) {
                i2 = i3 + 1;
                preparedStatement.setNull(i3, 0);
            } else {
                if (zArr2[i4]) {
                    i2 = i3 + 1;
                    preparedStatement.setBinaryStream(i3, batchParams.parameterStreams[i4], batchParams.streamLengths[i4]);
                } else {
                    ((PreparedStatement) preparedStatement).setBytesNoEscapeNoQuotes(i3, batchParams.parameterStrings[i4]);
                    i3++;
                }
            }
            i3 = i2;
        }
        return i3;
    }

    @Override // java.sql.PreparedStatement
    public void setRef(int i, Ref ref) throws SQLException {
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    private final void setSerializableObject(int i, Object obj) throws SQLException {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(obj);
            objectOutputStream.flush();
            objectOutputStream.close();
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            setBinaryStream(i, (InputStream) new ByteArrayInputStream(byteArray), byteArray.length);
            this.parameterTypes[(i - 1) + getParameterIndexOffset()] = -2;
        } catch (Exception e) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("PreparedStatement.54") + e.getClass().getName(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
            sQLExceptionCreateSQLException.initCause(e);
            throw sQLExceptionCreateSQLException;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setShort(int i, short s) throws SQLException {
        setInternal(i, String.valueOf((int) s));
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 5;
    }

    @Override // java.sql.PreparedStatement
    public void setString(int i, String str) throws SQLException {
        String string;
        byte[] bytes;
        byte[] bytes2;
        byte[] bytes3;
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (str == null) {
                    setNull(i, 1);
                } else {
                    checkClosed();
                    int length = str.length();
                    if (this.connection.isNoBackslashEscapesSet()) {
                        if (!isEscapeNeededForString(str, length)) {
                            StringBuilder sb = new StringBuilder(str.length() + 2);
                            sb.append('\'');
                            sb.append(str);
                            sb.append('\'');
                            if (!this.isLoadDataQuery) {
                                bytes3 = StringUtils.getBytes(sb.toString(), this.charConverter, this.charEncoding, this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor());
                            } else {
                                bytes3 = StringUtils.getBytes(sb.toString());
                            }
                            setInternal(i, bytes3);
                        } else {
                            if (!this.isLoadDataQuery) {
                                bytes2 = StringUtils.getBytes(str, this.charConverter, this.charEncoding, this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor());
                            } else {
                                bytes2 = StringUtils.getBytes(str);
                            }
                            setBytes(i, bytes2);
                        }
                        return;
                    }
                    boolean z = false;
                    if (this.isLoadDataQuery || isEscapeNeededForString(str, length)) {
                        StringBuilder sb2 = new StringBuilder((int) (((double) str.length()) * 1.1d));
                        sb2.append('\'');
                        for (int i2 = 0; i2 < length; i2++) {
                            char cCharAt = str.charAt(i2);
                            if (cCharAt == 0) {
                                sb2.append('\\');
                                sb2.append('0');
                            } else if (cCharAt == '\n') {
                                sb2.append('\\');
                                sb2.append('n');
                            } else if (cCharAt == '\r') {
                                sb2.append('\\');
                                sb2.append('r');
                            } else if (cCharAt == 26) {
                                sb2.append('\\');
                                sb2.append(Matrix.MATRIX_TYPE_ZERO);
                            } else if (cCharAt == '\"') {
                                if (this.usingAnsiMode) {
                                    sb2.append('\\');
                                }
                                sb2.append('\"');
                            } else if (cCharAt == '\'') {
                                sb2.append('\\');
                                sb2.append('\'');
                            } else if (cCharAt == '\\') {
                                sb2.append('\\');
                                sb2.append('\\');
                            } else if (cCharAt == 165 || cCharAt == 8361) {
                                if (this.charsetEncoder != null) {
                                    CharBuffer charBufferAllocate = CharBuffer.allocate(1);
                                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(1);
                                    charBufferAllocate.put(cCharAt);
                                    charBufferAllocate.position(0);
                                    this.charsetEncoder.encode(charBufferAllocate, byteBufferAllocate, true);
                                    if (byteBufferAllocate.get(0) == 92) {
                                        sb2.append('\\');
                                    }
                                }
                                sb2.append(cCharAt);
                            } else {
                                sb2.append(cCharAt);
                            }
                        }
                        sb2.append('\'');
                        string = sb2.toString();
                    } else {
                        string = str;
                        z = true;
                    }
                    if (this.isLoadDataQuery) {
                        bytes = StringUtils.getBytes(string);
                    } else if (z) {
                        bytes = StringUtils.getBytesWrapped(string, '\'', '\'', this.charConverter, this.charEncoding, this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor());
                    } else {
                        bytes = StringUtils.getBytes(string, this.charConverter, this.charEncoding, this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor());
                    }
                    setInternal(i, bytes);
                    this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 12;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private boolean isEscapeNeededForString(String str, int i) {
        boolean z = false;
        for (int i2 = 0; i2 < i; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt == 0 || cCharAt == '\n' || cCharAt == '\r' || cCharAt == 26 || cCharAt == '\"' || cCharAt == '\'' || cCharAt == '\\') {
                z = true;
            }
            if (z) {
                break;
            }
        }
        return z;
    }

    @Override // java.sql.PreparedStatement
    public void setTime(int i, Time time, Calendar calendar) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            setTimeInternal(i, time, calendar, calendar.getTimeZone(), true);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setTime(int i, Time time) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            setTimeInternal(i, time, null, this.connection.getDefaultTimeZone(), false);
        }
    }

    private void setTimeInternal(int i, Time time, Calendar calendar, TimeZone timeZone, boolean z) throws SQLException {
        if (time == null) {
            setNull(i, 92);
            return;
        }
        checkClosed();
        if (!this.useLegacyDatetimeCode) {
            newSetTimeInternal(i, time, calendar);
        } else {
            setInternal(i, "'" + TimeUtil.changeTimezone(this.connection, getCalendarInstanceForSessionOrNew(), calendar, time, timeZone, this.connection.getServerTimezoneTZ(), z).toString() + "'");
        }
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 92;
    }

    @Override // java.sql.PreparedStatement
    public void setTimestamp(int i, Timestamp timestamp, Calendar calendar) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            setTimestampInternal(i, timestamp, calendar, calendar.getTimeZone(), true);
        }
    }

    @Override // java.sql.PreparedStatement
    public void setTimestamp(int i, Timestamp timestamp) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            setTimestampInternal(i, timestamp, null, this.connection.getDefaultTimeZone(), false);
        }
    }

    private void setTimestampInternal(int i, Timestamp timestamp, Calendar calendar, TimeZone timeZone, boolean z) throws SQLException {
        int nanos;
        if (timestamp == null) {
            setNull(i, 93);
            return;
        }
        checkClosed();
        if (!this.sendFractionalSeconds) {
            timestamp = TimeUtil.truncateFractionalSeconds(timestamp);
        }
        Timestamp timestamp2 = timestamp;
        if (!this.useLegacyDatetimeCode) {
            newSetTimestampInternal(i, timestamp2, calendar);
        } else {
            Timestamp timestampChangeTimezone = TimeUtil.changeTimezone(this.connection, this.connection.getUseJDBCCompliantTimezoneShift() ? this.connection.getUtcCalendar() : getCalendarInstanceForSessionOrNew(), calendar, timestamp2, timeZone, this.connection.getServerTimezoneTZ(), z);
            if (this.connection.getUseSSPSCompatibleTimezoneShift()) {
                doSSPSCompatibleTimezoneShift(i, timestampChangeTimezone);
            } else {
                synchronized (this) {
                    if (this.tsdf == null) {
                        this.tsdf = new SimpleDateFormat("''yyyy-MM-dd HH:mm:ss", Locale.US);
                    }
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append(this.tsdf.format((Date) timestampChangeTimezone));
                    if (this.serverSupportsFracSecs && (nanos = timestampChangeTimezone.getNanos()) != 0) {
                        stringBuffer.append('.');
                        stringBuffer.append(TimeUtil.formatNanos(nanos, this.serverSupportsFracSecs, true));
                    }
                    stringBuffer.append('\'');
                    setInternal(i, stringBuffer.toString());
                }
            }
        }
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 93;
    }

    private void newSetTimestampInternal(int i, Timestamp timestamp, Calendar calendar) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.tsdf == null) {
                this.tsdf = new SimpleDateFormat("''yyyy-MM-dd HH:mm:ss", Locale.US);
            }
            if (calendar != null) {
                this.tsdf.setTimeZone(calendar.getTimeZone());
            } else {
                this.tsdf.setTimeZone(this.connection.getServerTimezoneTZ());
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.tsdf.format((Date) timestamp));
            stringBuffer.append('.');
            stringBuffer.append(TimeUtil.formatNanos(timestamp.getNanos(), this.serverSupportsFracSecs, true));
            stringBuffer.append('\'');
            setInternal(i, stringBuffer.toString());
        }
    }

    private void newSetTimeInternal(int i, Time time, Calendar calendar) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.tdf == null) {
                this.tdf = new SimpleDateFormat("''HH:mm:ss''", Locale.US);
            }
            if (calendar != null) {
                this.tdf.setTimeZone(calendar.getTimeZone());
            } else {
                this.tdf.setTimeZone(this.connection.getServerTimezoneTZ());
            }
            setInternal(i, this.tdf.format((Date) time));
        }
    }

    private void newSetDateInternal(int i, java.sql.Date date, Calendar calendar) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.ddf == null) {
                this.ddf = new SimpleDateFormat("''yyyy-MM-dd''", Locale.US);
            }
            if (calendar != null) {
                this.ddf.setTimeZone(calendar.getTimeZone());
            } else if (this.connection.getNoTimezoneConversionForDateType()) {
                this.ddf.setTimeZone(this.connection.getDefaultTimeZone());
            } else {
                this.ddf.setTimeZone(this.connection.getServerTimezoneTZ());
            }
            setInternal(i, this.ddf.format((Date) date));
        }
    }

    private void doSSPSCompatibleTimezoneShift(int i, Timestamp timestamp) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            Calendar utcCalendar = this.connection.getUseJDBCCompliantTimezoneShift() ? this.connection.getUtcCalendar() : getCalendarInstanceForSessionOrNew();
            synchronized (utcCalendar) {
                Date time = utcCalendar.getTime();
                try {
                    utcCalendar.setTime(timestamp);
                    int i2 = utcCalendar.get(1);
                    int i3 = utcCalendar.get(2) + 1;
                    int i4 = utcCalendar.get(5);
                    int i5 = utcCalendar.get(11);
                    int i6 = utcCalendar.get(12);
                    int i7 = utcCalendar.get(13);
                    StringBuilder sb = new StringBuilder();
                    sb.append('\'');
                    sb.append(i2);
                    sb.append("-");
                    if (i3 < 10) {
                        sb.append('0');
                    }
                    sb.append(i3);
                    sb.append('-');
                    if (i4 < 10) {
                        sb.append('0');
                    }
                    sb.append(i4);
                    sb.append(' ');
                    if (i5 < 10) {
                        sb.append('0');
                    }
                    sb.append(i5);
                    sb.append(':');
                    if (i6 < 10) {
                        sb.append('0');
                    }
                    sb.append(i6);
                    sb.append(':');
                    if (i7 < 10) {
                        sb.append('0');
                    }
                    sb.append(i7);
                    sb.append('.');
                    sb.append(TimeUtil.formatNanos(timestamp.getNanos(), this.serverSupportsFracSecs, true));
                    sb.append('\'');
                    setInternal(i, sb.toString());
                    utcCalendar.setTime(time);
                } catch (Throwable th) {
                    utcCalendar.setTime(time);
                    throw th;
                }
            }
        }
    }

    @Override // java.sql.PreparedStatement
    @Deprecated
    public void setUnicodeStream(int i, InputStream inputStream, int i2) throws SQLException {
        if (inputStream == null) {
            setNull(i, 12);
        } else {
            setBinaryStream(i, inputStream, i2);
            this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 2005;
        }
    }

    @Override // java.sql.PreparedStatement
    public void setURL(int i, URL url) throws SQLException {
        if (url != null) {
            setString(i, url.toString());
            this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 70;
        } else {
            setNull(i, 1);
        }
    }

    private final void streamToBytes(Buffer buffer, InputStream inputStream, boolean z, int i, boolean z2) throws SQLException {
        int i2;
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (this.streamConvertBuf == null) {
                    this.streamConvertBuf = new byte[4096];
                }
                String encoding = this.connection.getEncoding();
                try {
                    boolean z3 = this.connection.isNoBackslashEscapesSet() || (this.connection.getUseUnicode() && encoding != null && CharsetMapping.isMultibyteCharset(encoding) && !this.connection.parserKnowsUnicode());
                    if (i == -1) {
                        z2 = false;
                    }
                    if (z2) {
                        i2 = readblock(inputStream, this.streamConvertBuf, i);
                    } else {
                        i2 = readblock(inputStream, this.streamConvertBuf);
                    }
                    int i3 = i - i2;
                    if (z3) {
                        buffer.writeStringNoNull("x");
                    } else if (this.connection.getIO().versionMeetsMinimum(4, 1, 0)) {
                        buffer.writeStringNoNull("_binary");
                    }
                    if (z) {
                        buffer.writeByte((byte) 39);
                    }
                    while (i2 > 0) {
                        if (z3) {
                            hexEscapeBlock(this.streamConvertBuf, buffer, i2);
                        } else if (z) {
                            escapeblockFast(this.streamConvertBuf, buffer, i2);
                        } else {
                            buffer.writeBytesNoNull(this.streamConvertBuf, 0, i2);
                        }
                        if (z2) {
                            i2 = readblock(inputStream, this.streamConvertBuf, i3);
                            if (i2 > 0) {
                                i3 -= i2;
                            }
                        } else {
                            i2 = readblock(inputStream, this.streamConvertBuf);
                        }
                    }
                    if (z) {
                        buffer.writeByte((byte) 39);
                    }
                    if (this.connection.getAutoClosePStmtStreams()) {
                        try {
                            inputStream.close();
                        } catch (IOException unused) {
                        }
                    }
                } catch (RuntimeException e) {
                    SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(e.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
                    sQLExceptionCreateSQLException.initCause(e);
                    throw sQLExceptionCreateSQLException;
                }
            } catch (Throwable th) {
                if (this.connection.getAutoClosePStmtStreams()) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
                throw th;
            }
        }
    }

    private final byte[] streamToBytes(InputStream inputStream, boolean z, int i, boolean z2) throws SQLException {
        int i2;
        byte[] byteArray;
        synchronized (checkClosed().getConnectionMutex()) {
            inputStream.mark(Integer.MAX_VALUE);
            try {
                if (this.streamConvertBuf == null) {
                    this.streamConvertBuf = new byte[4096];
                }
                if (i == -1) {
                    z2 = false;
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                if (z2) {
                    i2 = readblock(inputStream, this.streamConvertBuf, i);
                } else {
                    i2 = readblock(inputStream, this.streamConvertBuf);
                }
                int i3 = i - i2;
                if (z) {
                    if (this.connection.versionMeetsMinimum(4, 1, 0)) {
                        byteArrayOutputStream.write(95);
                        byteArrayOutputStream.write(98);
                        byteArrayOutputStream.write(105);
                        byteArrayOutputStream.write(110);
                        byteArrayOutputStream.write(97);
                        byteArrayOutputStream.write(114);
                        byteArrayOutputStream.write(121);
                    }
                    byteArrayOutputStream.write(39);
                }
                while (i2 > 0) {
                    if (z) {
                        escapeblockFast(this.streamConvertBuf, byteArrayOutputStream, i2);
                    } else {
                        byteArrayOutputStream.write(this.streamConvertBuf, 0, i2);
                    }
                    if (z2) {
                        i2 = readblock(inputStream, this.streamConvertBuf, i3);
                        if (i2 > 0) {
                            i3 -= i2;
                        }
                    } else {
                        i2 = readblock(inputStream, this.streamConvertBuf);
                    }
                }
                if (z) {
                    byteArrayOutputStream.write(39);
                }
                byteArray = byteArrayOutputStream.toByteArray();
                try {
                    inputStream.reset();
                } catch (IOException unused) {
                }
                if (this.connection.getAutoClosePStmtStreams()) {
                    try {
                        inputStream.close();
                    } catch (IOException unused2) {
                    }
                }
            } catch (Throwable th) {
                try {
                    inputStream.reset();
                } catch (IOException unused3) {
                }
                if (!this.connection.getAutoClosePStmtStreams()) {
                    throw th;
                }
                try {
                    inputStream.close();
                    throw th;
                } catch (IOException unused4) {
                    throw th;
                }
            }
        }
        return byteArray;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(": ");
        try {
            sb.append(asSql());
        } catch (SQLException e) {
            sb.append("EXCEPTION: " + e.toString());
        }
        return sb.toString();
    }

    @Override // java.sql.PreparedStatement
    public void setAsciiStream(int i, InputStream inputStream) throws SQLException {
        setAsciiStream(i, inputStream, -1);
    }

    @Override // java.sql.PreparedStatement
    public void setAsciiStream(int i, InputStream inputStream, long j) throws SQLException {
        setAsciiStream(i, inputStream, (int) j);
        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 2005;
    }

    @Override // java.sql.PreparedStatement
    public void setBinaryStream(int i, InputStream inputStream) throws SQLException {
        setBinaryStream(i, inputStream, -1);
    }

    @Override // java.sql.PreparedStatement
    public void setBinaryStream(int i, InputStream inputStream, long j) throws SQLException {
        setBinaryStream(i, inputStream, (int) j);
    }

    @Override // java.sql.PreparedStatement
    public void setBlob(int i, InputStream inputStream) throws SQLException {
        setBinaryStream(i, inputStream);
    }

    @Override // java.sql.PreparedStatement
    public void setCharacterStream(int i, Reader reader) throws SQLException {
        setCharacterStream(i, reader, -1);
    }

    @Override // java.sql.PreparedStatement
    public void setCharacterStream(int i, Reader reader, long j) throws SQLException {
        setCharacterStream(i, reader, (int) j);
    }

    @Override // java.sql.PreparedStatement
    public void setClob(int i, Reader reader) throws SQLException {
        setCharacterStream(i, reader);
    }

    @Override // java.sql.PreparedStatement
    public void setClob(int i, Reader reader, long j) throws SQLException {
        setCharacterStream(i, reader, j);
    }

    @Override // java.sql.PreparedStatement
    public void setNCharacterStream(int i, Reader reader) throws SQLException {
        setNCharacterStream(i, reader, -1L);
    }

    public void setNString(int i, String str) throws SQLException {
        byte[] bytes;
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.charEncoding.equalsIgnoreCase("UTF-8") && !this.charEncoding.equalsIgnoreCase("utf8")) {
                if (str == null) {
                    setNull(i, 1);
                } else {
                    int length = str.length();
                    StringBuilder sb = new StringBuilder((int) ((((double) str.length()) * 1.1d) + 4.0d));
                    sb.append("_utf8");
                    sb.append('\'');
                    for (int i2 = 0; i2 < length; i2++) {
                        char cCharAt = str.charAt(i2);
                        if (cCharAt == 0) {
                            sb.append('\\');
                            sb.append('0');
                        } else if (cCharAt == '\n') {
                            sb.append('\\');
                            sb.append('n');
                        } else if (cCharAt == '\r') {
                            sb.append('\\');
                            sb.append('r');
                        } else if (cCharAt == 26) {
                            sb.append('\\');
                            sb.append(Matrix.MATRIX_TYPE_ZERO);
                        } else if (cCharAt == '\"') {
                            if (this.usingAnsiMode) {
                                sb.append('\\');
                            }
                            sb.append('\"');
                        } else if (cCharAt == '\'') {
                            sb.append('\\');
                            sb.append('\'');
                        } else if (cCharAt == '\\') {
                            sb.append('\\');
                            sb.append('\\');
                        } else {
                            sb.append(cCharAt);
                        }
                    }
                    sb.append('\'');
                    String string = sb.toString();
                    if (!this.isLoadDataQuery) {
                        bytes = StringUtils.getBytes(string, this.connection.getCharsetConverter("UTF-8"), "UTF-8", this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor());
                    } else {
                        bytes = StringUtils.getBytes(string);
                    }
                    setInternal(i, bytes);
                    this.parameterTypes[(i - 1) + getParameterIndexOffset()] = -9;
                }
                return;
            }
            setString(i, str);
        }
    }

    public void setNCharacterStream(int i, Reader reader, long j) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                try {
                    if (reader == null) {
                        setNull(i, -1);
                    } else {
                        if (this.connection.getUseStreamLengthsInPrepStmts() && j != -1) {
                            int i2 = (int) j;
                            char[] cArr = new char[i2];
                            setNString(i, new String(cArr, 0, readFully(reader, cArr, i2)));
                        } else {
                            char[] cArr2 = new char[4096];
                            StringBuilder sb = new StringBuilder();
                            while (true) {
                                int i3 = reader.read(cArr2);
                                if (i3 == -1) {
                                    break;
                                } else {
                                    sb.append(cArr2, 0, i3);
                                }
                            }
                            setNString(i, sb.toString());
                        }
                        this.parameterTypes[(i - 1) + getParameterIndexOffset()] = 2011;
                    }
                } catch (IOException e) {
                    throw SQLError.createSQLException(e.toString(), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.sql.PreparedStatement
    public void setNClob(int i, Reader reader) throws SQLException {
        setNCharacterStream(i, reader);
    }

    public void setNClob(int i, Reader reader, long j) throws SQLException {
        if (reader == null) {
            setNull(i, -1);
        } else {
            setNCharacterStream(i, reader, j);
        }
    }

    public ParameterBindings getParameterBindings() throws SQLException {
        EmulatedPreparedStatementBindings emulatedPreparedStatementBindings;
        synchronized (checkClosed().getConnectionMutex()) {
            emulatedPreparedStatementBindings = new EmulatedPreparedStatementBindings();
        }
        return emulatedPreparedStatementBindings;
    }

    class EmulatedPreparedStatementBindings implements ParameterBindings {
        private ResultSetImpl bindingsAsRs;
        private boolean[] parameterIsNull;

        EmulatedPreparedStatementBindings() throws SQLException {
            int collationIndexForJavaEncoding;
            ArrayList arrayList = new ArrayList();
            this.parameterIsNull = new boolean[PreparedStatement.this.parameterCount];
            int i = 0;
            System.arraycopy(PreparedStatement.this.isNull, 0, this.parameterIsNull, 0, PreparedStatement.this.parameterCount);
            byte[][] bArr = new byte[PreparedStatement.this.parameterCount][];
            Field[] fieldArr = new Field[PreparedStatement.this.parameterCount];
            while (i < PreparedStatement.this.parameterCount) {
                if (PreparedStatement.this.batchCommandIndex == -1) {
                    bArr[i] = PreparedStatement.this.getBytesRepresentation(i);
                } else {
                    bArr[i] = PreparedStatement.this.getBytesRepresentationForBatch(i, PreparedStatement.this.batchCommandIndex);
                }
                if (PreparedStatement.this.parameterTypes[i] == -2 || PreparedStatement.this.parameterTypes[i] == 2004) {
                    collationIndexForJavaEncoding = 63;
                } else {
                    try {
                        collationIndexForJavaEncoding = CharsetMapping.getCollationIndexForJavaEncoding(PreparedStatement.this.connection.getEncoding(), PreparedStatement.this.connection);
                    } catch (RuntimeException e) {
                        SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(e.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
                        sQLExceptionCreateSQLException.initCause(e);
                        throw sQLExceptionCreateSQLException;
                    } catch (SQLException e2) {
                        throw e2;
                    }
                }
                StringBuilder sb = new StringBuilder();
                sb.append("parameter_");
                int i2 = i + 1;
                sb.append(i2);
                Field field = new Field(null, sb.toString(), collationIndexForJavaEncoding, PreparedStatement.this.parameterTypes[i], bArr[i].length);
                field.setConnection(PreparedStatement.this.connection);
                fieldArr[i] = field;
                i = i2;
            }
            arrayList.add(new ByteArrayRow(bArr, PreparedStatement.this.getExceptionInterceptor()));
            this.bindingsAsRs = new ResultSetImpl(PreparedStatement.this.connection.getCatalog(), fieldArr, new RowDataStatic(arrayList), PreparedStatement.this.connection, null);
            this.bindingsAsRs.next();
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public Array getArray(int i) throws SQLException {
            return this.bindingsAsRs.getArray(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public InputStream getAsciiStream(int i) throws SQLException {
            return this.bindingsAsRs.getAsciiStream(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public BigDecimal getBigDecimal(int i) throws SQLException {
            return this.bindingsAsRs.getBigDecimal(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public InputStream getBinaryStream(int i) throws SQLException {
            return this.bindingsAsRs.getBinaryStream(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public java.sql.Blob getBlob(int i) throws SQLException {
            return this.bindingsAsRs.getBlob(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public boolean getBoolean(int i) throws SQLException {
            return this.bindingsAsRs.getBoolean(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public byte getByte(int i) throws SQLException {
            return this.bindingsAsRs.getByte(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public byte[] getBytes(int i) throws SQLException {
            return this.bindingsAsRs.getBytes(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public Reader getCharacterStream(int i) throws SQLException {
            return this.bindingsAsRs.getCharacterStream(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public java.sql.Clob getClob(int i) throws SQLException {
            return this.bindingsAsRs.getClob(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public java.sql.Date getDate(int i) throws SQLException {
            return this.bindingsAsRs.getDate(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public double getDouble(int i) throws SQLException {
            return this.bindingsAsRs.getDouble(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public float getFloat(int i) throws SQLException {
            return this.bindingsAsRs.getFloat(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public int getInt(int i) throws SQLException {
            return this.bindingsAsRs.getInt(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public long getLong(int i) throws SQLException {
            return this.bindingsAsRs.getLong(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public Reader getNCharacterStream(int i) throws SQLException {
            return this.bindingsAsRs.getCharacterStream(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public Reader getNClob(int i) throws SQLException {
            return this.bindingsAsRs.getCharacterStream(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public Object getObject(int i) throws SQLException {
            PreparedStatement.this.checkBounds(i, 0);
            int i2 = i - 1;
            if (this.parameterIsNull[i2]) {
                return null;
            }
            int i3 = PreparedStatement.this.parameterTypes[i2];
            if (i3 != 8) {
                switch (i3) {
                    case -6:
                        return Byte.valueOf(getByte(i));
                    case -5:
                        return Long.valueOf(getLong(i));
                    default:
                        switch (i3) {
                            case 4:
                                return Integer.valueOf(getInt(i));
                            case 5:
                                return Short.valueOf(getShort(i));
                            case 6:
                                return Float.valueOf(getFloat(i));
                            default:
                                return this.bindingsAsRs.getObject(i);
                        }
                }
            }
            return Double.valueOf(getDouble(i));
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public Ref getRef(int i) throws SQLException {
            return this.bindingsAsRs.getRef(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public short getShort(int i) throws SQLException {
            return this.bindingsAsRs.getShort(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public String getString(int i) throws SQLException {
            return this.bindingsAsRs.getString(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public Time getTime(int i) throws SQLException {
            return this.bindingsAsRs.getTime(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public Timestamp getTimestamp(int i) throws SQLException {
            return this.bindingsAsRs.getTimestamp(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public URL getURL(int i) throws SQLException {
            return this.bindingsAsRs.getURL(i);
        }

        @Override // com.mysql.jdbc.ParameterBindings
        public boolean isNull(int i) throws SQLException {
            PreparedStatement.this.checkBounds(i, 0);
            return this.parameterIsNull[i - 1];
        }
    }

    public String getPreparedSql() {
        try {
            synchronized (checkClosed().getConnectionMutex()) {
                if (this.rewrittenBatchSize == 0) {
                    return this.originalSql;
                }
                try {
                    return this.parseInfo.getSqlForBatch(this.parseInfo);
                } catch (UnsupportedEncodingException e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (SQLException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.mysql.jdbc.StatementImpl, java.sql.Statement
    public int getUpdateCount() throws SQLException {
        int updateCount = super.getUpdateCount();
        if (!containsOnDuplicateKeyUpdateInSQL() || !this.compensateForOnDuplicateKeyUpdate) {
            return updateCount;
        }
        if (updateCount == 2 || updateCount == 0) {
            return 1;
        }
        return updateCount;
    }

    protected static boolean canRewrite(String str, boolean z, int i, int i2) {
        int iIndexOfIgnoreCase;
        if (!StringUtils.startsWithIgnoreCaseAndWs(str, "INSERT", i2)) {
            return StringUtils.startsWithIgnoreCaseAndWs(str, "REPLACE", i2) && StringUtils.indexOfIgnoreCase(i2, str, "SELECT", "\"'`", "\"'`", StringUtils.SEARCH_MODE__MRK_COM_WS) == -1;
        }
        if (StringUtils.indexOfIgnoreCase(i2, str, "SELECT", "\"'`", "\"'`", StringUtils.SEARCH_MODE__MRK_COM_WS) != -1) {
            return false;
        }
        return !z || (iIndexOfIgnoreCase = StringUtils.indexOfIgnoreCase(i, str, " UPDATE ")) == -1 || StringUtils.indexOfIgnoreCase(iIndexOfIgnoreCase, str, "LAST_INSERT_ID", "\"'`", "\"'`", StringUtils.SEARCH_MODE__MRK_COM_WS) == -1;
    }

    public long executeLargeUpdate() throws SQLException {
        return executeUpdateInternal(true, false);
    }
}
