package com.mysql.jdbc;

import com.mysql.jdbc.profiler.ProfilerEvent;
import java.io.InputStream;
import java.io.Reader;
import java.math.BigDecimal;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public class UpdatableResultSet extends ResultSetImpl {
    static final byte[] STREAM_DATA_MARKER = StringUtils.getBytes("** STREAM DATA **");
    protected SingleByteCharsetConverter charConverter;
    private String charEncoding;
    private Map<String, Map<String, Map<String, Integer>>> databasesUsedToTablesUsed;
    private byte[][] defaultColumnValue;
    private String deleteSQL;
    private PreparedStatement deleter;
    private boolean initializedCharConverter;
    private String insertSQL;
    protected PreparedStatement inserter;
    private boolean isUpdatable;
    private String notUpdatableReason;
    private boolean populateInserterWithDefaultValues;
    private List<Integer> primaryKeyIndicies;
    private String qualifiedAndQuotedTableName;
    private String quotedIdChar;
    private String refreshSQL;
    private PreparedStatement refresher;
    private ResultSetRow savedCurrentRow;
    private String updateSQL;
    protected PreparedStatement updater;

    protected UpdatableResultSet(String str, Field[] fieldArr, RowData rowData, MySQLConnection mySQLConnection, StatementImpl statementImpl) throws SQLException {
        super(str, fieldArr, rowData, mySQLConnection, statementImpl);
        this.deleter = null;
        this.deleteSQL = null;
        this.initializedCharConverter = false;
        this.inserter = null;
        this.insertSQL = null;
        this.isUpdatable = false;
        this.notUpdatableReason = null;
        this.primaryKeyIndicies = null;
        this.quotedIdChar = null;
        this.refreshSQL = null;
        this.updater = null;
        this.updateSQL = null;
        this.populateInserterWithDefaultValues = false;
        this.databasesUsedToTablesUsed = null;
        checkUpdatability();
        this.populateInserterWithDefaultValues = this.connection.getPopulateInsertRowWithDefaultValues();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean absolute(int i) throws SQLException {
        return super.absolute(i);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void afterLast() throws SQLException {
        super.afterLast();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void beforeFirst() throws SQLException {
        super.beforeFirst();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void cancelRowUpdates() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.doingUpdates) {
                this.doingUpdates = false;
                this.updater.clearParameters();
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl
    protected void checkRowPos() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                super.checkRowPos();
            }
        }
    }

    protected void checkUpdatability() throws SQLException {
        ResultSet primaryKeys;
        String originalName;
        try {
            if (this.fields == null) {
                return;
            }
            if (this.catalog == null || this.catalog.length() == 0) {
                this.catalog = this.fields[0].getDatabaseName();
                if (this.catalog == null || this.catalog.length() == 0) {
                    throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.43"), SQLError.SQL_STATE_ILLEGAL_ARGUMENT, getExceptionInterceptor());
                }
            }
            if (this.fields.length > 0) {
                String originalTableName = this.fields[0].getOriginalTableName();
                String databaseName = this.fields[0].getDatabaseName();
                if (originalTableName == null) {
                    originalTableName = this.fields[0].getTableName();
                    databaseName = this.catalog;
                }
                if (originalTableName != null && originalTableName.length() == 0) {
                    this.isUpdatable = false;
                    this.notUpdatableReason = Messages.getString("NotUpdatableReason.3");
                    return;
                }
                int i = this.fields[0].isPrimaryKey() ? 1 : 0;
                for (int i2 = 1; i2 < this.fields.length; i2++) {
                    String originalTableName2 = this.fields[i2].getOriginalTableName();
                    String databaseName2 = this.fields[i2].getDatabaseName();
                    if (originalTableName2 == null) {
                        originalTableName2 = this.fields[i2].getTableName();
                        databaseName2 = this.catalog;
                    }
                    if (originalTableName2 != null && originalTableName2.length() == 0) {
                        this.isUpdatable = false;
                        this.notUpdatableReason = Messages.getString("NotUpdatableReason.3");
                        return;
                    }
                    if (originalTableName != null && originalTableName2.equals(originalTableName)) {
                        if (databaseName != null && databaseName2.equals(databaseName)) {
                            if (this.fields[i2].isPrimaryKey()) {
                                i++;
                            }
                        }
                        this.isUpdatable = false;
                        this.notUpdatableReason = Messages.getString("NotUpdatableReason.1");
                        return;
                    }
                    this.isUpdatable = false;
                    this.notUpdatableReason = Messages.getString("NotUpdatableReason.0");
                    return;
                }
                if (originalTableName != null && originalTableName.length() != 0) {
                    if (this.connection.getStrictUpdates()) {
                        java.sql.DatabaseMetaData metaData = this.connection.getMetaData();
                        HashMap map = new HashMap();
                        try {
                            primaryKeys = metaData.getPrimaryKeys(databaseName, null, originalTableName);
                            while (primaryKeys.next()) {
                                try {
                                    String upperCase = primaryKeys.getString(4).toUpperCase();
                                    map.put(upperCase, upperCase);
                                } catch (Throwable th) {
                                    th = th;
                                    if (primaryKeys != null) {
                                        try {
                                            primaryKeys.close();
                                        } catch (Exception e) {
                                            AssertionFailedException.shouldNotHappen(e);
                                        }
                                    }
                                    throw th;
                                }
                            }
                            if (primaryKeys != null) {
                                try {
                                    primaryKeys.close();
                                } catch (Exception e2) {
                                    AssertionFailedException.shouldNotHappen(e2);
                                }
                            }
                            int size = map.size();
                            if (size == 0) {
                                this.isUpdatable = false;
                                this.notUpdatableReason = Messages.getString("NotUpdatableReason.5");
                                return;
                            }
                            for (int i3 = 0; i3 < this.fields.length; i3++) {
                                if (this.fields[i3].isPrimaryKey() && map.remove(this.fields[i3].getName().toUpperCase()) == null && (originalName = this.fields[i3].getOriginalName()) != null && map.remove(originalName.toUpperCase()) == null) {
                                    this.isUpdatable = false;
                                    this.notUpdatableReason = Messages.getString("NotUpdatableReason.6", new Object[]{originalName});
                                    return;
                                }
                            }
                            this.isUpdatable = map.isEmpty();
                            if (!this.isUpdatable) {
                                if (size > 1) {
                                    this.notUpdatableReason = Messages.getString("NotUpdatableReason.7");
                                    return;
                                } else {
                                    this.notUpdatableReason = Messages.getString("NotUpdatableReason.4");
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            primaryKeys = null;
                        }
                    }
                    if (i == 0) {
                        this.isUpdatable = false;
                        this.notUpdatableReason = Messages.getString("NotUpdatableReason.4");
                        return;
                    } else {
                        this.isUpdatable = true;
                        this.notUpdatableReason = null;
                        return;
                    }
                }
                this.isUpdatable = false;
                this.notUpdatableReason = Messages.getString("NotUpdatableReason.2");
                return;
            }
            this.isUpdatable = false;
            this.notUpdatableReason = Messages.getString("NotUpdatableReason.3");
        } catch (SQLException e3) {
            this.isUpdatable = false;
            this.notUpdatableReason = e3.getMessage();
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void deleteRow() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.isUpdatable) {
                throw new NotUpdatable(this.notUpdatableReason);
            }
            if (this.onInsertRow) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.1"), getExceptionInterceptor());
            }
            if (this.rowData.size() == 0) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.2"), getExceptionInterceptor());
            }
            if (isBeforeFirst()) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.3"), getExceptionInterceptor());
            }
            if (isAfterLast()) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.4"), getExceptionInterceptor());
            }
            if (this.deleter == null) {
                if (this.deleteSQL == null) {
                    generateStatements();
                }
                this.deleter = (PreparedStatement) this.connection.clientPrepareStatement(this.deleteSQL);
            }
            this.deleter.clearParameters();
            int size = this.primaryKeyIndicies.size();
            int i = 0;
            if (size == 1) {
                int iIntValue = this.primaryKeyIndicies.get(0).intValue();
                setParamValue(this.deleter, 1, this.thisRow, iIntValue, this.fields[iIntValue].getSQLType());
            } else {
                while (i < size) {
                    int iIntValue2 = this.primaryKeyIndicies.get(i).intValue();
                    i++;
                    setParamValue(this.deleter, i, this.thisRow, iIntValue2, this.fields[iIntValue2].getSQLType());
                }
            }
            this.deleter.executeUpdate();
            this.rowData.removeRow(this.rowData.getCurrentRowNumber());
            previous();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:19:0x0066  */
    private void setParamValue(PreparedStatement preparedStatement, int i, ResultSetRow resultSetRow, int i2, int i3) throws SQLException {
        byte[] columnValue = resultSetRow.getColumnValue(i2);
        if (columnValue == null) {
            preparedStatement.setNull(i, 0);
            return;
        }
        if (i3 != 12) {
            if (i3 != 16) {
                switch (i3) {
                    case -6:
                        preparedStatement.setInt(i, resultSetRow.getInt(i2));
                        break;
                    case -5:
                        preparedStatement.setLong(i, resultSetRow.getLong(i2));
                        break;
                    default:
                        switch (i3) {
                            case -1:
                            case 1:
                            case 2:
                            case 3:
                                break;
                            case 0:
                                preparedStatement.setNull(i, 0);
                                break;
                            case 4:
                            case 5:
                                preparedStatement.setInt(i, resultSetRow.getInt(i2));
                                break;
                            case 6:
                            case 7:
                            case 8:
                                break;
                            default:
                                switch (i3) {
                                    case 91:
                                        preparedStatement.setDate(i, resultSetRow.getDateFast(i2, this.connection, this, this.fastDefaultCal), this.fastDefaultCal);
                                        break;
                                    case 92:
                                        preparedStatement.setTime(i, resultSetRow.getTimeFast(i2, this.fastDefaultCal, this.connection.getDefaultTimeZone(), false, this.connection, this));
                                        break;
                                    case 93:
                                        preparedStatement.setTimestamp(i, resultSetRow.getTimestampFast(i2, this.fastDefaultCal, this.connection.getDefaultTimeZone(), false, this.connection, this));
                                        break;
                                    default:
                                        preparedStatement.setBytes(i, columnValue);
                                        break;
                                }
                                break;
                        }
                        break;
                }
                return;
            }
            preparedStatement.setBytesNoEscapeNoQuotes(i, columnValue);
            return;
        }
        preparedStatement.setString(i, resultSetRow.getString(i2, this.charEncoding, this.connection));
    }

    private void extractDefaultValues() throws Throwable {
        ResultSet columns;
        java.sql.DatabaseMetaData metaData = this.connection.getMetaData();
        this.defaultColumnValue = new byte[this.fields.length][];
        Iterator<Map.Entry<String, Map<String, Map<String, Integer>>>> it = this.databasesUsedToTablesUsed.entrySet().iterator();
        ResultSet resultSet = null;
        while (it.hasNext()) {
            for (Map.Entry<String, Map<String, Integer>> entry : it.next().getValue().entrySet()) {
                String key = entry.getKey();
                Map<String, Integer> value = entry.getValue();
                try {
                    columns = metaData.getColumns(this.catalog, null, key, "%");
                    while (columns.next()) {
                        try {
                            String string = columns.getString("COLUMN_NAME");
                            byte[] bytes = columns.getBytes("COLUMN_DEF");
                            if (value.containsKey(string)) {
                                this.defaultColumnValue[value.get(string).intValue()] = bytes;
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (columns != null) {
                                columns.close();
                            }
                            throw th;
                        }
                    }
                    if (columns != null) {
                        columns.close();
                        resultSet = null;
                    } else {
                        resultSet = columns;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    columns = resultSet;
                }
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean first() throws SQLException {
        return super.first();
    }

    protected void generateStatements() throws SQLException {
        TreeMap treeMap;
        Map<String, Integer> columnsToIndexMapForTableAndDB;
        char c;
        StringBuilder sb;
        if (!this.isUpdatable) {
            this.doingUpdates = false;
            this.onInsertRow = false;
            throw new NotUpdatable(this.notUpdatableReason);
        }
        String quotedIdChar = getQuotedIdChar();
        if (this.connection.lowerCaseTableNames()) {
            treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            this.databasesUsedToTablesUsed = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        } else {
            treeMap = new TreeMap();
            this.databasesUsedToTablesUsed = new TreeMap();
        }
        this.primaryKeyIndicies = new ArrayList();
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        StringBuilder sb4 = new StringBuilder();
        StringBuilder sb5 = new StringBuilder();
        StringBuilder sb6 = new StringBuilder();
        HashMap map = new HashMap();
        String str = this.connection.versionMeetsMinimum(3, 23, 0) ? "<=>" : "=";
        int i = 0;
        boolean z = true;
        boolean z2 = true;
        while (i < this.fields.length) {
            StringBuilder sb7 = new StringBuilder();
            if (this.fields[i].getOriginalTableName() != null) {
                String databaseName = this.fields[i].getDatabaseName();
                if (databaseName != null && databaseName.length() > 0) {
                    sb7.append(quotedIdChar);
                    sb7.append(databaseName);
                    sb7.append(quotedIdChar);
                    sb7.append('.');
                }
                String originalTableName = this.fields[i].getOriginalTableName();
                sb7.append(quotedIdChar);
                sb7.append(originalTableName);
                sb7.append(quotedIdChar);
                String string = sb7.toString();
                if (treeMap.containsKey(string)) {
                    sb5 = sb5;
                } else {
                    if (!treeMap.isEmpty()) {
                        sb6.append(',');
                    }
                    sb6.append(string);
                    treeMap.put(string, string);
                }
                map.put(Integer.valueOf(i), string);
                columnsToIndexMapForTableAndDB = getColumnsToIndexMapForTableAndDB(databaseName, originalTableName);
            } else {
                sb5 = sb5;
                String tableName = this.fields[i].getTableName();
                if (tableName != null) {
                    sb7.append(quotedIdChar);
                    sb7.append(tableName);
                    sb7.append(quotedIdChar);
                    String string2 = sb7.toString();
                    if (!treeMap.containsKey(string2)) {
                        if (!treeMap.isEmpty()) {
                            sb6.append(',');
                        }
                        sb6.append(string2);
                        treeMap.put(string2, string2);
                    }
                    map.put(Integer.valueOf(i), string2);
                    columnsToIndexMapForTableAndDB = getColumnsToIndexMapForTableAndDB(this.catalog, tableName);
                } else {
                    columnsToIndexMapForTableAndDB = null;
                }
            }
            String originalName = this.fields[i].getOriginalName();
            if (!this.connection.getIO().hasLongColumnInfo() || originalName == null || originalName.length() <= 0) {
                originalName = this.fields[i].getName();
            }
            if (columnsToIndexMapForTableAndDB != null && originalName != null) {
                columnsToIndexMapForTableAndDB.put(originalName, Integer.valueOf(i));
            }
            String originalTableName2 = this.fields[i].getOriginalTableName();
            if (!this.connection.getIO().hasLongColumnInfo() || originalTableName2 == null || originalTableName2.length() <= 0) {
                originalTableName2 = this.fields[i].getTableName();
            }
            StringBuilder sb8 = new StringBuilder();
            String databaseName2 = this.fields[i].getDatabaseName();
            if (databaseName2 == null || databaseName2.length() <= 0) {
                c = '.';
            } else {
                sb8.append(quotedIdChar);
                sb8.append(databaseName2);
                sb8.append(quotedIdChar);
                c = '.';
                sb8.append('.');
            }
            sb8.append(quotedIdChar);
            sb8.append(originalTableName2);
            sb8.append(quotedIdChar);
            sb8.append(c);
            sb8.append(quotedIdChar);
            sb8.append(originalName);
            sb8.append(quotedIdChar);
            String string3 = sb8.toString();
            if (this.fields[i].isPrimaryKey()) {
                this.primaryKeyIndicies.add(Integer.valueOf(i));
                if (z) {
                    z = false;
                } else {
                    sb3.append(" AND ");
                }
                sb3.append(string3);
                sb3.append(str);
                sb3.append("?");
            }
            if (z2) {
                sb2.append("SET ");
                sb = sb5;
                z2 = false;
            } else {
                sb2.append(",");
                sb4.append(",");
                sb = sb5;
                sb.append(",");
            }
            sb.append("?");
            sb4.append(string3);
            sb2.append(string3);
            sb2.append("=?");
            i++;
            sb5 = sb;
        }
        this.qualifiedAndQuotedTableName = sb6.toString();
        this.updateSQL = "UPDATE " + this.qualifiedAndQuotedTableName + " " + sb2.toString() + " WHERE " + sb3.toString();
        this.insertSQL = "INSERT INTO " + this.qualifiedAndQuotedTableName + " (" + sb4.toString() + ") VALUES (" + sb5.toString() + ")";
        StringBuilder sb9 = new StringBuilder();
        sb9.append("SELECT ");
        sb9.append(sb4.toString());
        sb9.append(" FROM ");
        sb9.append(this.qualifiedAndQuotedTableName);
        sb9.append(" WHERE ");
        sb9.append(sb3.toString());
        this.refreshSQL = sb9.toString();
        this.deleteSQL = "DELETE FROM " + this.qualifiedAndQuotedTableName + " WHERE " + sb3.toString();
    }

    private Map<String, Integer> getColumnsToIndexMapForTableAndDB(String str, String str2) {
        Map<String, Map<String, Integer>> treeMap = this.databasesUsedToTablesUsed.get(str);
        if (treeMap == null) {
            if (this.connection.lowerCaseTableNames()) {
                treeMap = new TreeMap<>((Comparator<? super String>) String.CASE_INSENSITIVE_ORDER);
            } else {
                treeMap = new TreeMap<>();
            }
            this.databasesUsedToTablesUsed.put(str, treeMap);
        }
        Map<String, Integer> map = treeMap.get(str2);
        if (map != null) {
            return map;
        }
        HashMap map2 = new HashMap();
        treeMap.put(str2, map2);
        return map2;
    }

    private SingleByteCharsetConverter getCharConverter() throws SQLException {
        if (!this.initializedCharConverter) {
            this.initializedCharConverter = true;
            if (this.connection.getUseUnicode()) {
                this.charEncoding = this.connection.getEncoding();
                this.charConverter = this.connection.getCharsetConverter(this.charEncoding);
            }
        }
        return this.charConverter;
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public int getConcurrency() throws SQLException {
        int i;
        synchronized (checkClosed().getConnectionMutex()) {
            i = this.isUpdatable ? 1008 : 1007;
        }
        return i;
    }

    private String getQuotedIdChar() throws SQLException {
        if (this.quotedIdChar == null) {
            if (this.connection.supportsQuotedIdentifiers()) {
                this.quotedIdChar = this.connection.getMetaData().getIdentifierQuoteString();
            } else {
                this.quotedIdChar = "";
            }
        }
        return this.quotedIdChar;
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void insertRow() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.7"), getExceptionInterceptor());
            }
            this.inserter.executeUpdate();
            long lastInsertID = this.inserter.getLastInsertID();
            int length = this.fields.length;
            byte[][] bArr = new byte[length][];
            for (int i = 0; i < length; i++) {
                if (this.inserter.isNull(i)) {
                    bArr[i] = null;
                } else {
                    bArr[i] = this.inserter.getBytesRepresentation(i);
                }
                if (this.fields[i].isAutoIncrement() && lastInsertID > 0) {
                    bArr[i] = StringUtils.getBytes(String.valueOf(lastInsertID));
                    this.inserter.setBytesNoEscapeNoQuotes(i + 1, bArr[i]);
                }
            }
            ByteArrayRow byteArrayRow = new ByteArrayRow(bArr, getExceptionInterceptor());
            refreshRow(this.inserter, byteArrayRow);
            this.rowData.addRow(byteArrayRow);
            resetInserter();
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean isAfterLast() throws SQLException {
        return super.isAfterLast();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean isBeforeFirst() throws SQLException {
        return super.isBeforeFirst();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean isFirst() throws SQLException {
        return super.isFirst();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean isLast() throws SQLException {
        return super.isLast();
    }

    boolean isUpdatable() {
        return this.isUpdatable;
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean last() throws SQLException {
        return super.last();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void moveToCurrentRow() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.isUpdatable) {
                throw new NotUpdatable(this.notUpdatableReason);
            }
            if (this.onInsertRow) {
                this.onInsertRow = false;
                this.thisRow = this.savedCurrentRow;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0092 A[Catch: all -> 0x012c, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:8:0x0011, B:10:0x0015, B:11:0x0018, B:13:0x0028, B:14:0x002b, B:16:0x0032, B:18:0x0057, B:20:0x005c, B:51:0x011e, B:21:0x006e, B:23:0x0074, B:27:0x0083, B:28:0x0086, B:49:0x0103, B:29:0x0092, B:31:0x0099, B:33:0x00a3, B:35:0x00ad, B:37:0x00b8, B:39:0x00c1, B:41:0x00cc, B:43:0x00d7, B:45:0x00e2, B:47:0x00ec, B:48:0x00f8, B:50:0x0115, B:52:0x0122, B:15:0x002f, B:54:0x0124, B:55:0x012b), top: B:59:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00f8 A[Catch: all -> 0x012c, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000d, B:8:0x0011, B:10:0x0015, B:11:0x0018, B:13:0x0028, B:14:0x002b, B:16:0x0032, B:18:0x0057, B:20:0x005c, B:51:0x011e, B:21:0x006e, B:23:0x0074, B:27:0x0083, B:28:0x0086, B:49:0x0103, B:29:0x0092, B:31:0x0099, B:33:0x00a3, B:35:0x00ad, B:37:0x00b8, B:39:0x00c1, B:41:0x00cc, B:43:0x00d7, B:45:0x00e2, B:47:0x00ec, B:48:0x00f8, B:50:0x0115, B:52:0x0122, B:15:0x002f, B:54:0x0124, B:55:0x012b), top: B:59:0x0009 }] */
    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void moveToInsertRow() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.isUpdatable) {
                throw new NotUpdatable(this.notUpdatableReason);
            }
            if (this.inserter == null) {
                if (this.insertSQL == null) {
                    generateStatements();
                }
                this.inserter = (PreparedStatement) this.connection.clientPrepareStatement(this.insertSQL);
                if (this.populateInserterWithDefaultValues) {
                    extractDefaultValues();
                }
                resetInserter();
            } else {
                resetInserter();
            }
            int length = this.fields.length;
            this.onInsertRow = true;
            this.doingUpdates = false;
            this.savedCurrentRow = this.thisRow;
            byte[][] bArr = new byte[length][];
            this.thisRow = new ByteArrayRow(bArr, getExceptionInterceptor());
            this.thisRow.setMetadata(this.fields);
            byte[][] bArr2 = bArr;
            for (int i = 0; i < length; i++) {
                if (!this.populateInserterWithDefaultValues) {
                    this.inserter.setBytesNoEscapeNoQuotes(i + 1, StringUtils.getBytes("DEFAULT"));
                    bArr2 = (byte[][]) null;
                } else if (this.defaultColumnValue[i] != null) {
                    int mysqlType = this.fields[i].getMysqlType();
                    if (mysqlType == 7 || mysqlType == 14) {
                        if (this.defaultColumnValue[i].length <= 7 && this.defaultColumnValue[i][0] == 67 && this.defaultColumnValue[i][1] == 85 && this.defaultColumnValue[i][2] == 82 && this.defaultColumnValue[i][3] == 82 && this.defaultColumnValue[i][4] == 69 && this.defaultColumnValue[i][5] == 78 && this.defaultColumnValue[i][6] == 84 && this.defaultColumnValue[i][7] == 95) {
                            this.inserter.setBytesNoEscapeNoQuotes(i + 1, this.defaultColumnValue[i]);
                        } else {
                            this.inserter.setBytes(i + 1, this.defaultColumnValue[i], false, false);
                        }
                    } else {
                        switch (mysqlType) {
                            case 10:
                            case 11:
                            case 12:
                                if (this.defaultColumnValue[i].length <= 7) {
                                    this.inserter.setBytes(i + 1, this.defaultColumnValue[i], false, false);
                                } else {
                                    this.inserter.setBytes(i + 1, this.defaultColumnValue[i], false, false);
                                }
                                break;
                            default:
                                this.inserter.setBytes(i + 1, this.defaultColumnValue[i], false, false);
                                break;
                        }
                    }
                    byte[] bArr3 = new byte[this.defaultColumnValue[i].length];
                    System.arraycopy(this.defaultColumnValue[i], 0, bArr3, 0, bArr3.length);
                    bArr2[i] = bArr3;
                } else {
                    this.inserter.setNull(i + 1, 0);
                    bArr2[i] = null;
                }
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean next() throws SQLException {
        return super.next();
    }

    @Override // com.mysql.jdbc.ResultSetImpl
    public boolean prev() throws SQLException {
        return super.prev();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean previous() throws SQLException {
        return super.previous();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, com.mysql.jdbc.ResultSetInternalMethods
    public void realClose(boolean z) throws SQLException {
        if (this.connection == null) {
            return;
        }
        synchronized (checkClosed().getConnectionMutex()) {
            if (this.useUsageAdvisor && this.deleter == null && this.inserter == null && this.refresher == null && this.updater == null) {
                this.eventSink = ProfilerEventHandlerFactory.getInstance(this.connection);
                this.eventSink.consumeEvent(new ProfilerEvent((byte) 0, "", this.owningStatement == null ? "N/A" : this.owningStatement.currentCatalog, this.connectionId, this.owningStatement == null ? -1 : this.owningStatement.getId(), this.resultId, System.currentTimeMillis(), 0L, Constants.MILLIS_I18N, null, this.pointOfOrigin, Messages.getString("UpdatableResultSet.34")));
            }
            try {
                if (this.deleter != null) {
                    this.deleter.close();
                }
                e = null;
            } catch (SQLException e) {
                e = e;
            }
            try {
                if (this.inserter != null) {
                    this.inserter.close();
                }
            } catch (SQLException e2) {
                e = e2;
            }
            try {
                if (this.refresher != null) {
                    this.refresher.close();
                }
            } catch (SQLException e3) {
                e = e3;
            }
            try {
                if (this.updater != null) {
                    this.updater.close();
                }
            } catch (SQLException e4) {
                e = e4;
            }
            super.realClose(z);
            if (e != null) {
                throw e;
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void refreshRow() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.isUpdatable) {
                throw new NotUpdatable();
            }
            if (this.onInsertRow) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.8"), getExceptionInterceptor());
            }
            if (this.rowData.size() == 0) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.9"), getExceptionInterceptor());
            }
            if (isBeforeFirst()) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.10"), getExceptionInterceptor());
            }
            if (isAfterLast()) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.11"), getExceptionInterceptor());
            }
            refreshRow(this.updater, this.thisRow);
        }
    }

    private void refreshRow(PreparedStatement preparedStatement, ResultSetRow resultSetRow) throws Throwable {
        byte[] columnValue;
        ResultSet resultSetExecuteQuery;
        Throwable th;
        byte[] columnValue2;
        if (this.refresher == null) {
            if (this.refreshSQL == null) {
                generateStatements();
            }
            this.refresher = (PreparedStatement) this.connection.clientPrepareStatement(this.refreshSQL);
        }
        this.refresher.clearParameters();
        int size = this.primaryKeyIndicies.size();
        int i = 0;
        if (size == 1) {
            int iIntValue = this.primaryKeyIndicies.get(0).intValue();
            if (!this.doingUpdates && !this.onInsertRow) {
                columnValue2 = resultSetRow.getColumnValue(iIntValue);
            } else {
                byte[] bytesRepresentation = preparedStatement.getBytesRepresentation(iIntValue);
                if (preparedStatement.isNull(iIntValue) || bytesRepresentation.length == 0) {
                    columnValue2 = resultSetRow.getColumnValue(iIntValue);
                } else {
                    columnValue2 = stripBinaryPrefix(bytesRepresentation);
                }
            }
            if (this.fields[iIntValue].getvalueNeedsQuoting()) {
                this.refresher.setBytesNoEscape(1, columnValue2);
            } else {
                this.refresher.setBytesNoEscapeNoQuotes(1, columnValue2);
            }
        } else {
            int i2 = 0;
            while (i2 < size) {
                int iIntValue2 = this.primaryKeyIndicies.get(i2).intValue();
                if (!this.doingUpdates && !this.onInsertRow) {
                    columnValue = resultSetRow.getColumnValue(iIntValue2);
                } else {
                    byte[] bytesRepresentation2 = preparedStatement.getBytesRepresentation(iIntValue2);
                    if (preparedStatement.isNull(iIntValue2) || bytesRepresentation2.length == 0) {
                        columnValue = resultSetRow.getColumnValue(iIntValue2);
                    } else {
                        columnValue = stripBinaryPrefix(bytesRepresentation2);
                    }
                }
                i2++;
                this.refresher.setBytesNoEscape(i2, columnValue);
            }
        }
        try {
            resultSetExecuteQuery = this.refresher.executeQuery();
            try {
                int columnCount = resultSetExecuteQuery.getMetaData().getColumnCount();
                if (!resultSetExecuteQuery.next()) {
                    throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.12"), SQLError.SQL_STATE_GENERAL_ERROR, getExceptionInterceptor());
                }
                while (i < columnCount) {
                    int i3 = i + 1;
                    if (resultSetExecuteQuery.getBytes(i3) == null || resultSetExecuteQuery.wasNull()) {
                        resultSetRow.setColumnValue(i, null);
                    } else {
                        resultSetRow.setColumnValue(i, resultSetExecuteQuery.getBytes(i3));
                    }
                    i = i3;
                }
                if (resultSetExecuteQuery != null) {
                    try {
                        resultSetExecuteQuery.close();
                    } catch (SQLException unused) {
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (resultSetExecuteQuery != null) {
                    try {
                        resultSetExecuteQuery.close();
                    } catch (SQLException unused2) {
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            resultSetExecuteQuery = null;
            th = th3;
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean relative(int i) throws SQLException {
        return super.relative(i);
    }

    private void resetInserter() throws SQLException {
        this.inserter.clearParameters();
        int i = 0;
        while (i < this.fields.length) {
            i++;
            this.inserter.setNull(i, 0);
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean rowDeleted() throws SQLException {
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean rowInserted() throws SQLException {
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public boolean rowUpdated() throws SQLException {
        throw SQLError.createSQLFeatureNotSupportedException();
    }

    @Override // com.mysql.jdbc.ResultSetImpl
    protected void setResultSetConcurrency(int i) {
        super.setResultSetConcurrency(i);
    }

    private byte[] stripBinaryPrefix(byte[] bArr) {
        return StringUtils.stripEnclosure(bArr, "_binary'", "'");
    }

    protected void syncUpdate() throws SQLException {
        if (this.updater == null) {
            if (this.updateSQL == null) {
                generateStatements();
            }
            this.updater = (PreparedStatement) this.connection.clientPrepareStatement(this.updateSQL);
        }
        int length = this.fields.length;
        this.updater.clearParameters();
        for (int i = 0; i < length; i++) {
            if (this.thisRow.getColumnValue(i) != null) {
                if (this.fields[i].getvalueNeedsQuoting()) {
                    this.updater.setBytes(i + 1, this.thisRow.getColumnValue(i), this.fields[i].isBinary(), false);
                } else {
                    this.updater.setBytesNoEscapeNoQuotes(i + 1, this.thisRow.getColumnValue(i));
                }
            } else {
                this.updater.setNull(i + 1, 0);
            }
        }
        int size = this.primaryKeyIndicies.size();
        if (size == 1) {
            int iIntValue = this.primaryKeyIndicies.get(0).intValue();
            setParamValue(this.updater, length + 1, this.thisRow, iIntValue, this.fields[iIntValue].getSQLType());
        } else {
            for (int i2 = 0; i2 < size; i2++) {
                int iIntValue2 = this.primaryKeyIndicies.get(i2).intValue();
                setParamValue(this.updater, length + i2 + 1, this.thisRow, iIntValue2, this.fields[iIntValue2].getSQLType());
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateAsciiStream(int i, InputStream inputStream, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setAsciiStream(i, inputStream, i2);
            } else {
                this.inserter.setAsciiStream(i, inputStream, i2);
                this.thisRow.setColumnValue(i - 1, STREAM_DATA_MARKER);
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateAsciiStream(String str, InputStream inputStream, int i) throws SQLException {
        updateAsciiStream(findColumn(str), inputStream, i);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBigDecimal(int i, BigDecimal bigDecimal) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setBigDecimal(i, bigDecimal);
            } else {
                this.inserter.setBigDecimal(i, bigDecimal);
                if (bigDecimal == null) {
                    this.thisRow.setColumnValue(i - 1, null);
                } else {
                    this.thisRow.setColumnValue(i - 1, StringUtils.getBytes(bigDecimal.toString()));
                }
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBigDecimal(String str, BigDecimal bigDecimal) throws SQLException {
        updateBigDecimal(findColumn(str), bigDecimal);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBinaryStream(int i, InputStream inputStream, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setBinaryStream(i, inputStream, i2);
            } else {
                this.inserter.setBinaryStream(i, inputStream, i2);
                if (inputStream == null) {
                    this.thisRow.setColumnValue(i - 1, null);
                } else {
                    this.thisRow.setColumnValue(i - 1, STREAM_DATA_MARKER);
                }
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBinaryStream(String str, InputStream inputStream, int i) throws SQLException {
        updateBinaryStream(findColumn(str), inputStream, i);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBlob(int i, java.sql.Blob blob) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setBlob(i, blob);
            } else {
                this.inserter.setBlob(i, blob);
                if (blob == null) {
                    this.thisRow.setColumnValue(i - 1, null);
                } else {
                    this.thisRow.setColumnValue(i - 1, STREAM_DATA_MARKER);
                }
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBlob(String str, java.sql.Blob blob) throws SQLException {
        updateBlob(findColumn(str), blob);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBoolean(int i, boolean z) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setBoolean(i, z);
            } else {
                this.inserter.setBoolean(i, z);
                int i2 = i - 1;
                this.thisRow.setColumnValue(i2, this.inserter.getBytesRepresentation(i2));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBoolean(String str, boolean z) throws SQLException {
        updateBoolean(findColumn(str), z);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateByte(int i, byte b) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setByte(i, b);
            } else {
                this.inserter.setByte(i, b);
                int i2 = i - 1;
                this.thisRow.setColumnValue(i2, this.inserter.getBytesRepresentation(i2));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateByte(String str, byte b) throws SQLException {
        updateByte(findColumn(str), b);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBytes(int i, byte[] bArr) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setBytes(i, bArr);
            } else {
                this.inserter.setBytes(i, bArr);
                this.thisRow.setColumnValue(i - 1, bArr);
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateBytes(String str, byte[] bArr) throws SQLException {
        updateBytes(findColumn(str), bArr);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateCharacterStream(int i, Reader reader, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setCharacterStream(i, reader, i2);
            } else {
                this.inserter.setCharacterStream(i, reader, i2);
                if (reader == null) {
                    this.thisRow.setColumnValue(i - 1, null);
                } else {
                    this.thisRow.setColumnValue(i - 1, STREAM_DATA_MARKER);
                }
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateCharacterStream(String str, Reader reader, int i) throws SQLException {
        updateCharacterStream(findColumn(str), reader, i);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateClob(int i, java.sql.Clob clob) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            try {
                if (clob == null) {
                    updateNull(i);
                } else {
                    updateCharacterStream(i, clob.getCharacterStream(), (int) clob.length());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateDate(int i, Date date) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setDate(i, date);
            } else {
                this.inserter.setDate(i, date);
                int i2 = i - 1;
                this.thisRow.setColumnValue(i2, this.inserter.getBytesRepresentation(i2));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateDate(String str, Date date) throws SQLException {
        updateDate(findColumn(str), date);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateDouble(int i, double d) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setDouble(i, d);
            } else {
                this.inserter.setDouble(i, d);
                int i2 = i - 1;
                this.thisRow.setColumnValue(i2, this.inserter.getBytesRepresentation(i2));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateDouble(String str, double d) throws SQLException {
        updateDouble(findColumn(str), d);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateFloat(int i, float f) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setFloat(i, f);
            } else {
                this.inserter.setFloat(i, f);
                int i2 = i - 1;
                this.thisRow.setColumnValue(i2, this.inserter.getBytesRepresentation(i2));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateFloat(String str, float f) throws SQLException {
        updateFloat(findColumn(str), f);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateInt(int i, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setInt(i, i2);
            } else {
                this.inserter.setInt(i, i2);
                int i3 = i - 1;
                this.thisRow.setColumnValue(i3, this.inserter.getBytesRepresentation(i3));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateInt(String str, int i) throws SQLException {
        updateInt(findColumn(str), i);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateLong(int i, long j) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setLong(i, j);
            } else {
                this.inserter.setLong(i, j);
                int i2 = i - 1;
                this.thisRow.setColumnValue(i2, this.inserter.getBytesRepresentation(i2));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateLong(String str, long j) throws SQLException {
        updateLong(findColumn(str), j);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateNull(int i) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setNull(i, 0);
            } else {
                this.inserter.setNull(i, 0);
                this.thisRow.setColumnValue(i - 1, null);
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateNull(String str) throws SQLException {
        updateNull(findColumn(str));
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateObject(int i, Object obj) throws SQLException {
        updateObjectInternal(i, obj, null, 0);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateObject(int i, Object obj, int i2) throws SQLException {
        updateObjectInternal(i, obj, null, i2);
    }

    protected void updateObjectInternal(int i, Object obj, Integer num, int i2) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                if (num == null) {
                    this.updater.setObject(i, obj);
                } else {
                    this.updater.setObject(i, obj, num.intValue());
                }
            } else {
                if (num == null) {
                    this.inserter.setObject(i, obj);
                } else {
                    this.inserter.setObject(i, obj, num.intValue());
                }
                int i3 = i - 1;
                this.thisRow.setColumnValue(i3, this.inserter.getBytesRepresentation(i3));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateObject(String str, Object obj) throws SQLException {
        updateObject(findColumn(str), obj);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateObject(String str, Object obj, int i) throws SQLException {
        updateObject(findColumn(str), obj);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateRow() throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.isUpdatable) {
                throw new NotUpdatable(this.notUpdatableReason);
            }
            if (this.doingUpdates) {
                this.updater.executeUpdate();
                refreshRow();
                this.doingUpdates = false;
            } else if (this.onInsertRow) {
                throw SQLError.createSQLException(Messages.getString("UpdatableResultSet.44"), getExceptionInterceptor());
            }
            syncUpdate();
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateShort(int i, short s) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setShort(i, s);
            } else {
                this.inserter.setShort(i, s);
                int i2 = i - 1;
                this.thisRow.setColumnValue(i2, this.inserter.getBytesRepresentation(i2));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateShort(String str, short s) throws SQLException {
        updateShort(findColumn(str), s);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateString(int i, String str) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setString(i, str);
            } else {
                this.inserter.setString(i, str);
                if (str == null) {
                    this.thisRow.setColumnValue(i - 1, null);
                } else if (getCharConverter() != null) {
                    this.thisRow.setColumnValue(i - 1, StringUtils.getBytes(str, this.charConverter, this.charEncoding, this.connection.getServerCharset(), this.connection.parserKnowsUnicode(), getExceptionInterceptor()));
                } else {
                    this.thisRow.setColumnValue(i - 1, StringUtils.getBytes(str));
                }
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateString(String str, String str2) throws SQLException {
        updateString(findColumn(str), str2);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateTime(int i, Time time) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setTime(i, time);
            } else {
                this.inserter.setTime(i, time);
                int i2 = i - 1;
                this.thisRow.setColumnValue(i2, this.inserter.getBytesRepresentation(i2));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateTime(String str, Time time) throws SQLException {
        updateTime(findColumn(str), time);
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateTimestamp(int i, Timestamp timestamp) throws SQLException {
        synchronized (checkClosed().getConnectionMutex()) {
            if (!this.onInsertRow) {
                if (!this.doingUpdates) {
                    this.doingUpdates = true;
                    syncUpdate();
                }
                this.updater.setTimestamp(i, timestamp);
            } else {
                this.inserter.setTimestamp(i, timestamp);
                int i2 = i - 1;
                this.thisRow.setColumnValue(i2, this.inserter.getBytesRepresentation(i2));
            }
        }
    }

    @Override // com.mysql.jdbc.ResultSetImpl, java.sql.ResultSet
    public void updateTimestamp(String str, Timestamp timestamp) throws SQLException {
        updateTimestamp(findColumn(str), timestamp);
    }
}
