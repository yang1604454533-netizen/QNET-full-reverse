package com.mysql.jdbc;

import android.support.v7.widget.helper.ItemTouchHelper;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.regex.PatternSyntaxException;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public class Field {
    private static final int AUTO_INCREMENT_FLAG = 512;
    private static final int NO_CHARSET_INFO = -1;
    private byte[] buffer;
    private int colDecimals;
    private short colFlag;
    private int collationIndex;
    private String collationName;
    private MySQLConnection connection;
    private String databaseName;
    private int databaseNameLength;
    private int databaseNameStart;
    protected int defaultValueLength;
    protected int defaultValueStart;
    private String encoding;
    private String fullName;
    private String fullOriginalName;
    private boolean isImplicitTempTable;
    private boolean isSingleBit;
    private long length;
    private int maxBytesPerChar;
    private int mysqlType;
    private String name;
    private int nameLength;
    private int nameStart;
    private String originalColumnName;
    private int originalColumnNameLength;
    private int originalColumnNameStart;
    private String originalTableName;
    private int originalTableNameLength;
    private int originalTableNameStart;
    private int precisionAdjustFactor;
    private int sqlType;
    private String tableName;
    private int tableNameLength;
    private int tableNameStart;
    private boolean useOldNameMetadata;
    private final boolean valueNeedsQuoting;

    Field(MySQLConnection mySQLConnection, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, long j, int i11, short s, int i12, int i13, int i14, int i15) throws SQLException {
        boolean z = false;
        this.collationIndex = 0;
        this.encoding = null;
        this.collationName = null;
        this.connection = null;
        this.databaseName = null;
        this.databaseNameLength = -1;
        this.databaseNameStart = -1;
        this.defaultValueLength = -1;
        this.defaultValueStart = -1;
        this.fullName = null;
        this.fullOriginalName = null;
        this.isImplicitTempTable = false;
        this.mysqlType = -1;
        this.originalColumnName = null;
        this.originalColumnNameLength = -1;
        this.originalColumnNameStart = -1;
        this.originalTableName = null;
        this.originalTableNameLength = -1;
        this.originalTableNameStart = -1;
        this.precisionAdjustFactor = 0;
        this.sqlType = -1;
        this.useOldNameMetadata = false;
        this.connection = mySQLConnection;
        this.buffer = bArr;
        this.nameStart = i7;
        this.nameLength = i8;
        this.tableNameStart = i3;
        this.tableNameLength = i4;
        this.length = j;
        this.colFlag = s;
        this.colDecimals = i12;
        this.mysqlType = i11;
        this.databaseNameStart = i;
        this.databaseNameLength = i2;
        this.originalTableNameStart = i5;
        this.originalTableNameLength = i6;
        this.originalColumnNameStart = i9;
        this.originalColumnNameLength = i10;
        this.defaultValueStart = i13;
        this.defaultValueLength = i14;
        this.collationIndex = i15;
        this.sqlType = MysqlDefs.mysqlToJavaType(this.mysqlType);
        checkForImplicitTemporaryTable();
        boolean z2 = this.originalTableNameLength == 0;
        if (this.mysqlType == 252) {
            if (this.connection.getBlobsAreStrings() || (this.connection.getFunctionsNeverReturnBlobs() && z2)) {
                this.sqlType = 12;
                this.mysqlType = 15;
            } else if (this.collationIndex == 63 || !this.connection.versionMeetsMinimum(4, 1, 0)) {
                if (this.connection.getUseBlobToStoreUTF8OutsideBMP() && shouldSetupForUtf8StringInBlob()) {
                    setupForUtf8StringInBlob();
                } else {
                    setBlobTypeBasedOnLength();
                    this.sqlType = MysqlDefs.mysqlToJavaType(this.mysqlType);
                }
            } else {
                this.mysqlType = 253;
                this.sqlType = -1;
            }
        }
        if (this.sqlType == -6 && this.length == 1 && this.connection.getTinyInt1isBit() && mySQLConnection.getTinyInt1isBit()) {
            if (mySQLConnection.getTransformedBitIsBoolean()) {
                this.sqlType = 16;
            } else {
                this.sqlType = -7;
            }
        }
        if (!isNativeNumericType() && !isNativeDateTimeType()) {
            this.encoding = this.connection.getEncodingForIndex(this.collationIndex);
            if ("UnicodeBig".equals(this.encoding)) {
                this.encoding = "UTF-16";
            }
            if (this.mysqlType == 245) {
                this.encoding = "UTF-8";
            }
            boolean zIsBinary = isBinary();
            if (this.connection.versionMeetsMinimum(4, 1, 0) && this.mysqlType == 253 && zIsBinary && this.collationIndex == 63) {
                if (this.connection.getFunctionsNeverReturnBlobs() && z2) {
                    this.sqlType = 12;
                    this.mysqlType = 15;
                } else if (isOpaqueBinary()) {
                    this.sqlType = -3;
                }
            }
            if (this.connection.versionMeetsMinimum(4, 1, 0) && this.mysqlType == 254 && zIsBinary && this.collationIndex == 63 && isOpaqueBinary() && !this.connection.getBlobsAreStrings()) {
                this.sqlType = -2;
            }
            if (this.mysqlType == 16) {
                if (this.length == 0 || (this.length == 1 && (this.connection.versionMeetsMinimum(5, 0, 21) || this.connection.versionMeetsMinimum(5, 1, 10)))) {
                    z = true;
                }
                this.isSingleBit = z;
                if (!this.isSingleBit) {
                    this.colFlag = (short) (this.colFlag | 128);
                    this.colFlag = (short) (this.colFlag | 16);
                    zIsBinary = true;
                }
            }
            if (this.sqlType == -4 && !zIsBinary) {
                this.sqlType = -1;
            } else if (this.sqlType == -3 && !zIsBinary) {
                this.sqlType = 12;
            }
        } else {
            this.encoding = "US-ASCII";
        }
        if (!isUnsigned()) {
            int i16 = this.mysqlType;
            if (i16 == 0 || i16 == 246) {
                this.precisionAdjustFactor = -1;
            } else {
                switch (i16) {
                    case 4:
                    case 5:
                        this.precisionAdjustFactor = 1;
                        break;
                }
            }
        } else {
            switch (this.mysqlType) {
                case 4:
                case 5:
                    this.precisionAdjustFactor = 1;
                    break;
            }
        }
        this.valueNeedsQuoting = determineNeedsQuoting();
    }

    private boolean shouldSetupForUtf8StringInBlob() throws SQLException {
        String utf8OutsideBmpIncludedColumnNamePattern = this.connection.getUtf8OutsideBmpIncludedColumnNamePattern();
        String utf8OutsideBmpExcludedColumnNamePattern = this.connection.getUtf8OutsideBmpExcludedColumnNamePattern();
        if (utf8OutsideBmpExcludedColumnNamePattern != null && !StringUtils.isEmptyOrWhitespaceOnly(utf8OutsideBmpExcludedColumnNamePattern)) {
            try {
                if (getOriginalName().matches(utf8OutsideBmpExcludedColumnNamePattern)) {
                    if (utf8OutsideBmpIncludedColumnNamePattern == null || StringUtils.isEmptyOrWhitespaceOnly(utf8OutsideBmpIncludedColumnNamePattern)) {
                        return false;
                    }
                    try {
                        return getOriginalName().matches(utf8OutsideBmpIncludedColumnNamePattern);
                    } catch (PatternSyntaxException e) {
                        SQLException sQLExceptionCreateSQLException = SQLError.createSQLException("Illegal regex specified for \"utf8OutsideBmpIncludedColumnNamePattern\"", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.connection.getExceptionInterceptor());
                        if (!this.connection.getParanoid()) {
                            sQLExceptionCreateSQLException.initCause(e);
                            throw sQLExceptionCreateSQLException;
                        }
                        throw sQLExceptionCreateSQLException;
                    }
                }
            } catch (PatternSyntaxException e2) {
                SQLException sQLExceptionCreateSQLException2 = SQLError.createSQLException("Illegal regex specified for \"utf8OutsideBmpExcludedColumnNamePattern\"", SQLError.SQL_STATE_ILLEGAL_ARGUMENT, this.connection.getExceptionInterceptor());
                if (!this.connection.getParanoid()) {
                    sQLExceptionCreateSQLException2.initCause(e2);
                    throw sQLExceptionCreateSQLException2;
                }
                throw sQLExceptionCreateSQLException2;
            }
        }
        return true;
    }

    private void setupForUtf8StringInBlob() {
        if (this.length == 255 || this.length == 65535) {
            this.mysqlType = 15;
            this.sqlType = 12;
        } else {
            this.mysqlType = 253;
            this.sqlType = -1;
        }
        this.collationIndex = 33;
    }

    Field(MySQLConnection mySQLConnection, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, short s, int i7) throws SQLException {
        this(mySQLConnection, bArr, -1, -1, i3, i4, -1, -1, i, i2, -1, -1, i5, i6, s, i7, -1, -1, -1);
    }

    Field(String str, String str2, int i, int i2) {
        this.collationIndex = 0;
        this.encoding = null;
        this.collationName = null;
        this.connection = null;
        this.databaseName = null;
        this.databaseNameLength = -1;
        this.databaseNameStart = -1;
        this.defaultValueLength = -1;
        this.defaultValueStart = -1;
        this.fullName = null;
        this.fullOriginalName = null;
        this.isImplicitTempTable = false;
        this.mysqlType = -1;
        this.originalColumnName = null;
        this.originalColumnNameLength = -1;
        this.originalColumnNameStart = -1;
        this.originalTableName = null;
        this.originalTableNameLength = -1;
        this.originalTableNameStart = -1;
        this.precisionAdjustFactor = 0;
        this.sqlType = -1;
        this.useOldNameMetadata = false;
        this.tableName = str;
        this.name = str2;
        this.length = i2;
        this.sqlType = i;
        this.colFlag = (short) 0;
        this.colDecimals = 0;
        this.valueNeedsQuoting = determineNeedsQuoting();
    }

    Field(String str, String str2, int i, int i2, int i3) {
        this.collationIndex = 0;
        this.encoding = null;
        this.collationName = null;
        this.connection = null;
        this.databaseName = null;
        this.databaseNameLength = -1;
        this.databaseNameStart = -1;
        this.defaultValueLength = -1;
        this.defaultValueStart = -1;
        this.fullName = null;
        this.fullOriginalName = null;
        this.isImplicitTempTable = false;
        this.mysqlType = -1;
        this.originalColumnName = null;
        this.originalColumnNameLength = -1;
        this.originalColumnNameStart = -1;
        this.originalTableName = null;
        this.originalTableNameLength = -1;
        this.originalTableNameStart = -1;
        this.precisionAdjustFactor = 0;
        this.sqlType = -1;
        this.useOldNameMetadata = false;
        this.tableName = str;
        this.name = str2;
        this.length = i3;
        this.sqlType = i2;
        this.colFlag = (short) 0;
        this.colDecimals = 0;
        this.collationIndex = i;
        this.valueNeedsQuoting = determineNeedsQuoting();
        switch (this.sqlType) {
            case -3:
            case -2:
                this.colFlag = (short) (this.colFlag | 128);
                this.colFlag = (short) (this.colFlag | 16);
                break;
        }
    }

    private void checkForImplicitTemporaryTable() {
        this.isImplicitTempTable = this.tableNameLength > 5 && this.buffer[this.tableNameStart] == 35 && this.buffer[this.tableNameStart + 1] == 115 && this.buffer[this.tableNameStart + 2] == 113 && this.buffer[this.tableNameStart + 3] == 108 && this.buffer[this.tableNameStart + 4] == 95;
    }

    public String getEncoding() throws SQLException {
        return this.encoding;
    }

    public void setEncoding(String str, Connection connection) throws SQLException {
        this.encoding = str;
        try {
            this.collationIndex = CharsetMapping.getCollationIndexForJavaEncoding(str, connection);
        } catch (RuntimeException e) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(e.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
            sQLExceptionCreateSQLException.initCause(e);
            throw sQLExceptionCreateSQLException;
        }
    }

    public synchronized String getCollation() throws SQLException {
        ResultSet resultSetExecuteQuery;
        Throwable th;
        java.sql.Statement statementCreateStatement;
        if (this.collationName == null && this.connection != null && this.connection.versionMeetsMinimum(4, 1, 0)) {
            if (this.connection.getUseDynamicCharsetInfo()) {
                String identifierQuoteString = this.connection.getMetaData().getIdentifierQuoteString();
                if (" ".equals(identifierQuoteString)) {
                    identifierQuoteString = "";
                }
                String databaseName = getDatabaseName();
                String originalTableName = getOriginalTableName();
                String originalName = getOriginalName();
                if (databaseName != null && databaseName.length() != 0 && originalTableName != null && originalTableName.length() != 0 && originalName != null && originalName.length() != 0) {
                    StringBuilder sb = new StringBuilder(databaseName.length() + originalTableName.length() + 28);
                    sb.append("SHOW FULL COLUMNS FROM ");
                    sb.append(identifierQuoteString);
                    sb.append(databaseName);
                    sb.append(identifierQuoteString);
                    sb.append(".");
                    sb.append(identifierQuoteString);
                    sb.append(originalTableName);
                    sb.append(identifierQuoteString);
                    try {
                        statementCreateStatement = this.connection.createStatement();
                        try {
                            resultSetExecuteQuery = statementCreateStatement.executeQuery(sb.toString());
                            while (resultSetExecuteQuery.next()) {
                                try {
                                    if (originalName.equals(resultSetExecuteQuery.getString("Field"))) {
                                        this.collationName = resultSetExecuteQuery.getString("Collation");
                                        break;
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    if (resultSetExecuteQuery != null) {
                                        resultSetExecuteQuery.close();
                                    }
                                    if (statementCreateStatement == null) {
                                        throw th;
                                    }
                                    statementCreateStatement.close();
                                    throw th;
                                }
                            }
                            if (resultSetExecuteQuery != null) {
                                resultSetExecuteQuery.close();
                            }
                            if (statementCreateStatement != null) {
                                statementCreateStatement.close();
                            }
                        } catch (Throwable th3) {
                            resultSetExecuteQuery = null;
                            th = th3;
                        }
                    } catch (Throwable th4) {
                        resultSetExecuteQuery = null;
                        th = th4;
                        statementCreateStatement = null;
                    }
                }
            } else {
                try {
                    this.collationName = CharsetMapping.COLLATION_INDEX_TO_COLLATION_NAME[this.collationIndex];
                } catch (RuntimeException e) {
                    SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(e.toString(), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, (ExceptionInterceptor) null);
                    sQLExceptionCreateSQLException.initCause(e);
                    throw sQLExceptionCreateSQLException;
                }
            }
        }
        return this.collationName;
    }

    public String getColumnLabel() throws SQLException {
        return getName();
    }

    public String getDatabaseName() throws SQLException {
        if (this.databaseName == null && this.databaseNameStart != -1 && this.databaseNameLength != -1) {
            this.databaseName = getStringFromBytes(this.databaseNameStart, this.databaseNameLength);
        }
        return this.databaseName;
    }

    int getDecimals() {
        return this.colDecimals;
    }

    public String getFullName() throws SQLException {
        if (this.fullName == null) {
            StringBuilder sb = new StringBuilder(getTableName().length() + 1 + getName().length());
            sb.append(this.tableName);
            sb.append('.');
            sb.append(this.name);
            this.fullName = sb.toString();
        }
        return this.fullName;
    }

    public String getFullOriginalName() throws SQLException {
        getOriginalName();
        if (this.originalColumnName == null) {
            return null;
        }
        if (this.fullName == null) {
            StringBuilder sb = new StringBuilder(getOriginalTableName().length() + 1 + getOriginalName().length());
            sb.append(this.originalTableName);
            sb.append('.');
            sb.append(this.originalColumnName);
            this.fullOriginalName = sb.toString();
        }
        return this.fullOriginalName;
    }

    public long getLength() {
        return this.length;
    }

    public synchronized int getMaxBytesPerCharacter() throws SQLException {
        if (this.maxBytesPerChar == 0) {
            this.maxBytesPerChar = this.connection.getMaxBytesPerChar(Integer.valueOf(this.collationIndex), getEncoding());
        }
        return this.maxBytesPerChar;
    }

    public int getMysqlType() {
        return this.mysqlType;
    }

    public String getName() throws SQLException {
        if (this.name == null) {
            this.name = getStringFromBytes(this.nameStart, this.nameLength);
        }
        return this.name;
    }

    public String getNameNoAliases() throws SQLException {
        if (this.useOldNameMetadata) {
            return getName();
        }
        if (this.connection != null && this.connection.versionMeetsMinimum(4, 1, 0)) {
            return getOriginalName();
        }
        return getName();
    }

    public String getOriginalName() throws SQLException {
        if (this.originalColumnName == null && this.originalColumnNameStart != -1 && this.originalColumnNameLength != -1) {
            this.originalColumnName = getStringFromBytes(this.originalColumnNameStart, this.originalColumnNameLength);
        }
        return this.originalColumnName;
    }

    public String getOriginalTableName() throws SQLException {
        if (this.originalTableName == null && this.originalTableNameStart != -1 && this.originalTableNameLength != -1) {
            this.originalTableName = getStringFromBytes(this.originalTableNameStart, this.originalTableNameLength);
        }
        return this.originalTableName;
    }

    public int getPrecisionAdjustFactor() {
        return this.precisionAdjustFactor;
    }

    public int getSQLType() {
        return this.sqlType;
    }

    private String getStringFromBytes(int i, int i2) throws SQLException {
        if (i == -1 || i2 == -1) {
            return null;
        }
        if (i2 == 0) {
            return "";
        }
        if (this.connection != null) {
            if (this.connection.getUseUnicode()) {
                String characterSetMetadata = this.connection.getCharacterSetMetadata();
                if (characterSetMetadata == null) {
                    characterSetMetadata = this.connection.getEncoding();
                }
                if (characterSetMetadata != null) {
                    SingleByteCharsetConverter charsetConverter = this.connection != null ? this.connection.getCharsetConverter(characterSetMetadata) : null;
                    if (charsetConverter != null) {
                        return charsetConverter.toString(this.buffer, i, i2);
                    }
                    try {
                        return StringUtils.toString(this.buffer, i, i2, characterSetMetadata);
                    } catch (UnsupportedEncodingException unused) {
                        throw new RuntimeException(Messages.getString("Field.12") + characterSetMetadata + Messages.getString("Field.13"));
                    }
                }
                return StringUtils.toAsciiString(this.buffer, i, i2);
            }
            return StringUtils.toAsciiString(this.buffer, i, i2);
        }
        return StringUtils.toAsciiString(this.buffer, i, i2);
    }

    public String getTable() throws SQLException {
        return getTableName();
    }

    public String getTableName() throws SQLException {
        if (this.tableName == null) {
            this.tableName = getStringFromBytes(this.tableNameStart, this.tableNameLength);
        }
        return this.tableName;
    }

    public String getTableNameNoAliases() throws SQLException {
        if (this.connection.versionMeetsMinimum(4, 1, 0)) {
            return getOriginalTableName();
        }
        return getTableName();
    }

    public boolean isAutoIncrement() {
        return (this.colFlag & 512) > 0;
    }

    public boolean isBinary() {
        return (this.colFlag & 128) > 0;
    }

    public boolean isBlob() {
        return (this.colFlag & 16) > 0;
    }

    private boolean isImplicitTemporaryTable() {
        return this.isImplicitTempTable;
    }

    public boolean isMultipleKey() {
        return (this.colFlag & 8) > 0;
    }

    boolean isNotNull() {
        return (this.colFlag & 1) > 0;
    }

    boolean isOpaqueBinary() throws SQLException {
        if (this.collationIndex != 63 || !isBinary() || (getMysqlType() != 254 && getMysqlType() != 253)) {
            return this.connection.versionMeetsMinimum(4, 1, 0) && "binary".equalsIgnoreCase(getEncoding());
        }
        if (this.originalTableNameLength != 0 || this.connection == null || this.connection.versionMeetsMinimum(5, 0, 25)) {
            return !isImplicitTemporaryTable();
        }
        return false;
    }

    public boolean isPrimaryKey() {
        return (this.colFlag & 2) > 0;
    }

    boolean isReadOnly() throws SQLException {
        if (!this.connection.versionMeetsMinimum(4, 1, 0)) {
            return false;
        }
        String originalName = getOriginalName();
        String originalTableName = getOriginalTableName();
        return originalName == null || originalName.length() <= 0 || originalTableName == null || originalTableName.length() <= 0;
    }

    public boolean isUniqueKey() {
        return (this.colFlag & 4) > 0;
    }

    public boolean isUnsigned() {
        return (this.colFlag & 32) > 0;
    }

    public void setUnsigned() {
        this.colFlag = (short) (this.colFlag | 32);
    }

    public boolean isZeroFill() {
        return (this.colFlag & 64) > 0;
    }

    private void setBlobTypeBasedOnLength() {
        if (this.length == 255) {
            this.mysqlType = 249;
            return;
        }
        if (this.length == 65535) {
            this.mysqlType = MysqlDefs.FIELD_TYPE_BLOB;
        } else if (this.length == 16777215) {
            this.mysqlType = ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION;
        } else if (this.length == BodyPartID.bodyIdMax) {
            this.mysqlType = 251;
        }
    }

    private boolean isNativeNumericType() {
        return (this.mysqlType >= 1 && this.mysqlType <= 5) || this.mysqlType == 8 || this.mysqlType == 13;
    }

    private boolean isNativeDateTimeType() {
        return this.mysqlType == 10 || this.mysqlType == 14 || this.mysqlType == 12 || this.mysqlType == 11 || this.mysqlType == 7;
    }

    public void setConnection(MySQLConnection mySQLConnection) {
        this.connection = mySQLConnection;
        if (this.encoding == null || this.collationIndex == 0) {
            this.encoding = this.connection.getEncoding();
        }
    }

    void setMysqlType(int i) {
        this.mysqlType = i;
        this.sqlType = MysqlDefs.mysqlToJavaType(this.mysqlType);
    }

    protected void setUseOldNameMetadata(boolean z) {
        this.useOldNameMetadata = z;
    }

    public String toString() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            sb.append("[");
            sb.append("catalog=");
            sb.append(getDatabaseName());
            sb.append(",tableName=");
            sb.append(getTableName());
            sb.append(",originalTableName=");
            sb.append(getOriginalTableName());
            sb.append(",columnName=");
            sb.append(getName());
            sb.append(",originalColumnName=");
            sb.append(getOriginalName());
            sb.append(",mysqlType=");
            sb.append(getMysqlType());
            sb.append("(");
            sb.append(MysqlDefs.typeToName(getMysqlType()));
            sb.append(")");
            sb.append(",flags=");
            if (isAutoIncrement()) {
                sb.append(" AUTO_INCREMENT");
            }
            if (isPrimaryKey()) {
                sb.append(" PRIMARY_KEY");
            }
            if (isUniqueKey()) {
                sb.append(" UNIQUE_KEY");
            }
            if (isBinary()) {
                sb.append(" BINARY");
            }
            if (isBlob()) {
                sb.append(" BLOB");
            }
            if (isMultipleKey()) {
                sb.append(" MULTI_KEY");
            }
            if (isUnsigned()) {
                sb.append(" UNSIGNED");
            }
            if (isZeroFill()) {
                sb.append(" ZEROFILL");
            }
            sb.append(", charsetIndex=");
            sb.append(this.collationIndex);
            sb.append(", charsetName=");
            sb.append(this.encoding);
            sb.append("]");
            return sb.toString();
        } catch (Throwable unused) {
            return super.toString();
        }
    }

    protected boolean isSingleBit() {
        return this.isSingleBit;
    }

    protected boolean getvalueNeedsQuoting() {
        return this.valueNeedsQuoting;
    }

    private boolean determineNeedsQuoting() {
        int i = this.sqlType;
        switch (i) {
            default:
                switch (i) {
                    case 2:
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        break;
                    default:
                        return true;
                }
            case -7:
            case -6:
            case -5:
                return false;
        }
    }
}
