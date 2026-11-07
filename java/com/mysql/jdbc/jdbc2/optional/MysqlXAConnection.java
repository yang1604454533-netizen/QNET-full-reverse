package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Messages;
import com.mysql.jdbc.MysqlErrorNumbers;
import com.mysql.jdbc.StringUtils;
import com.mysql.jdbc.Util;
import com.mysql.jdbc.log.Log;
import java.lang.reflect.Constructor;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.sql.XAConnection;
import javax.transaction.xa.XAException;
import javax.transaction.xa.XAResource;
import javax.transaction.xa.Xid;

/* JADX INFO: loaded from: classes.dex */
public class MysqlXAConnection extends MysqlPooledConnection implements XAConnection, XAResource {
    private static final Constructor<?> JDBC_4_XA_CONNECTION_WRAPPER_CTOR;
    private static final int MAX_COMMAND_LENGTH = 300;
    private static final Map<Integer, Integer> MYSQL_ERROR_CODES_TO_XA_ERROR_CODES;
    private Log log;
    protected boolean logXaCommands;
    private Connection underlyingConnection;

    public void forget(Xid xid) throws XAException {
    }

    public int getTransactionTimeout() throws XAException {
        return 0;
    }

    public XAResource getXAResource() throws SQLException {
        return this;
    }

    public boolean setTransactionTimeout(int i) throws XAException {
        return false;
    }

    static {
        HashMap map = new HashMap();
        map.put(Integer.valueOf(MysqlErrorNumbers.ER_XAER_NOTA), -4);
        map.put(Integer.valueOf(MysqlErrorNumbers.ER_XAER_INVAL), -5);
        map.put(Integer.valueOf(MysqlErrorNumbers.ER_XAER_RMFAIL), -7);
        map.put(Integer.valueOf(MysqlErrorNumbers.ER_XAER_OUTSIDE), -9);
        map.put(Integer.valueOf(MysqlErrorNumbers.ER_XA_RMERR), -3);
        map.put(Integer.valueOf(MysqlErrorNumbers.ER_XA_RBROLLBACK), 100);
        map.put(Integer.valueOf(MysqlErrorNumbers.ER_XAER_DUPID), -8);
        map.put(Integer.valueOf(MysqlErrorNumbers.ER_XA_RBTIMEOUT), 106);
        map.put(Integer.valueOf(MysqlErrorNumbers.ER_XA_RBDEADLOCK), 102);
        MYSQL_ERROR_CODES_TO_XA_ERROR_CODES = Collections.unmodifiableMap(map);
        if (Util.isJdbc4()) {
            try {
                JDBC_4_XA_CONNECTION_WRAPPER_CTOR = Class.forName("com.mysql.jdbc.jdbc2.optional.JDBC4MysqlXAConnection").getConstructor(Connection.class, Boolean.TYPE);
                return;
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (NoSuchMethodException e2) {
                throw new RuntimeException(e2);
            } catch (SecurityException e3) {
                throw new RuntimeException(e3);
            }
        }
        JDBC_4_XA_CONNECTION_WRAPPER_CTOR = null;
    }

    protected static MysqlXAConnection getInstance(Connection connection, boolean z) throws SQLException {
        return !Util.isJdbc4() ? new MysqlXAConnection(connection, z) : (MysqlXAConnection) Util.handleNewInstance(JDBC_4_XA_CONNECTION_WRAPPER_CTOR, new Object[]{connection, Boolean.valueOf(z)}, connection.getExceptionInterceptor());
    }

    public MysqlXAConnection(Connection connection, boolean z) throws SQLException {
        super(connection);
        this.underlyingConnection = connection;
        this.log = connection.getLog();
        this.logXaCommands = z;
    }

    public boolean isSameRM(XAResource xAResource) throws XAException {
        if (xAResource instanceof MysqlXAConnection) {
            return this.underlyingConnection.isSameResource(((MysqlXAConnection) xAResource).underlyingConnection);
        }
        return false;
    }

    public Xid[] recover(int i) throws XAException {
        return recover(this.underlyingConnection, i);
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.transaction.xa.XAException */
    protected static Xid[] recover(java.sql.Connection connection, int i) throws Throwable {
        Statement statementCreateStatement;
        ResultSet resultSetExecuteQuery;
        boolean z = (16777216 & i) > 0;
        boolean z2 = (8388608 & i) > 0;
        ResultSet resultSet = null;
        if (!z && !z2 && i != 0) {
            throw new MysqlXAException(-5, Messages.getString("MysqlXAConnection.001"), null);
        }
        if (!z) {
            return new Xid[0];
        }
        ArrayList arrayList = new ArrayList();
        try {
            statementCreateStatement = connection.createStatement();
            try {
                try {
                    resultSetExecuteQuery = statementCreateStatement.executeQuery("XA RECOVER");
                    while (resultSetExecuteQuery.next()) {
                        try {
                            int i2 = resultSetExecuteQuery.getInt(1);
                            int i3 = resultSetExecuteQuery.getInt(2);
                            int i4 = resultSetExecuteQuery.getInt(3);
                            byte[] bytes = resultSetExecuteQuery.getBytes(4);
                            byte[] bArr = new byte[i3];
                            byte[] bArr2 = new byte[i4];
                            if (bytes.length != i3 + i4) {
                                throw new MysqlXAException(105, Messages.getString("MysqlXAConnection.002"), null);
                            }
                            System.arraycopy(bytes, 0, bArr, 0, i3);
                            System.arraycopy(bytes, i3, bArr2, 0, i4);
                            arrayList.add(new MysqlXid(bArr, bArr2, i2));
                        } catch (SQLException e) {
                            e = e;
                            resultSet = resultSetExecuteQuery;
                            throw mapXAExceptionFromSQLException(e);
                        } catch (Throwable th) {
                            th = th;
                            if (resultSetExecuteQuery != null) {
                                try {
                                    resultSetExecuteQuery.close();
                                } catch (SQLException e2) {
                                    throw mapXAExceptionFromSQLException(e2);
                                }
                            }
                            if (statementCreateStatement != null) {
                                try {
                                    statementCreateStatement.close();
                                } catch (SQLException e3) {
                                    throw mapXAExceptionFromSQLException(e3);
                                }
                            }
                            throw th;
                        }
                    }
                    if (resultSetExecuteQuery != null) {
                        try {
                            resultSetExecuteQuery.close();
                        } catch (SQLException e4) {
                            throw mapXAExceptionFromSQLException(e4);
                        }
                    }
                    if (statementCreateStatement != null) {
                        try {
                            statementCreateStatement.close();
                        } catch (SQLException e5) {
                            throw mapXAExceptionFromSQLException(e5);
                        }
                    }
                    int size = arrayList.size();
                    Xid[] xidArr = new Xid[size];
                    Object[] array = arrayList.toArray();
                    for (int i5 = 0; i5 < size; i5++) {
                        xidArr[i5] = (Xid) array[i5];
                    }
                    return xidArr;
                } catch (SQLException e6) {
                    e = e6;
                }
            } catch (Throwable th2) {
                th = th2;
                resultSetExecuteQuery = resultSet;
            }
        } catch (SQLException e7) {
            e = e7;
            statementCreateStatement = null;
        } catch (Throwable th3) {
            th = th3;
            statementCreateStatement = null;
            resultSetExecuteQuery = null;
        }
    }

    public int prepare(Xid xid) throws Throwable {
        StringBuilder sb = new StringBuilder(MAX_COMMAND_LENGTH);
        sb.append("XA PREPARE ");
        appendXid(sb, xid);
        dispatchCommand(sb.toString());
        return 0;
    }

    public void rollback(Xid xid) throws XAException {
        StringBuilder sb = new StringBuilder(MAX_COMMAND_LENGTH);
        sb.append("XA ROLLBACK ");
        appendXid(sb, xid);
        try {
            dispatchCommand(sb.toString());
        } finally {
            this.underlyingConnection.setInGlobalTx(false);
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.transaction.xa.XAException */
    public void end(Xid xid, int i) throws Throwable {
        StringBuilder sb = new StringBuilder(MAX_COMMAND_LENGTH);
        sb.append("XA END ");
        appendXid(sb, xid);
        if (i == 33554432) {
            sb.append(" SUSPEND");
        } else if (i != 67108864 && i != 536870912) {
            throw new XAException(-5);
        }
        dispatchCommand(sb.toString());
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: javax.transaction.xa.XAException */
    public void start(Xid xid, int i) throws Throwable {
        StringBuilder sb = new StringBuilder(MAX_COMMAND_LENGTH);
        sb.append("XA START ");
        appendXid(sb, xid);
        if (i != 0) {
            if (i == 2097152) {
                sb.append(" JOIN");
            } else if (i == 134217728) {
                sb.append(" RESUME");
            } else {
                throw new XAException(-5);
            }
        }
        dispatchCommand(sb.toString());
        this.underlyingConnection.setInGlobalTx(true);
    }

    public void commit(Xid xid, boolean z) throws XAException {
        StringBuilder sb = new StringBuilder(MAX_COMMAND_LENGTH);
        sb.append("XA COMMIT ");
        appendXid(sb, xid);
        if (z) {
            sb.append(" ONE PHASE");
        }
        try {
            dispatchCommand(sb.toString());
        } finally {
            this.underlyingConnection.setInGlobalTx(false);
        }
    }

    private ResultSet dispatchCommand(String str) throws Throwable {
        Statement statement = null;
        try {
            try {
                if (this.logXaCommands) {
                    this.log.logDebug("Executing XA statement: " + str);
                }
                Statement statementCreateStatement = this.underlyingConnection.createStatement();
                try {
                    statementCreateStatement.execute(str);
                    ResultSet resultSet = statementCreateStatement.getResultSet();
                    if (statementCreateStatement != null) {
                        try {
                            statementCreateStatement.close();
                        } catch (SQLException unused) {
                        }
                    }
                    return resultSet;
                } catch (SQLException e) {
                    e = e;
                    throw mapXAExceptionFromSQLException(e);
                } catch (Throwable th) {
                    th = th;
                    statement = statementCreateStatement;
                    if (statement != null) {
                        try {
                            statement.close();
                        } catch (SQLException unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (SQLException e2) {
            e = e2;
        }
    }

    protected static XAException mapXAExceptionFromSQLException(SQLException sQLException) {
        Integer num = MYSQL_ERROR_CODES_TO_XA_ERROR_CODES.get(Integer.valueOf(sQLException.getErrorCode()));
        if (num != null) {
            return new MysqlXAException(num.intValue(), sQLException.getMessage(), null).initCause(sQLException);
        }
        return new MysqlXAException(-7, Messages.getString("MysqlXAConnection.003"), null).initCause(sQLException);
    }

    private static void appendXid(StringBuilder sb, Xid xid) {
        byte[] globalTransactionId = xid.getGlobalTransactionId();
        byte[] branchQualifier = xid.getBranchQualifier();
        if (globalTransactionId != null) {
            StringUtils.appendAsHex(sb, globalTransactionId);
        }
        sb.append(',');
        if (branchQualifier != null) {
            StringUtils.appendAsHex(sb, branchQualifier);
        }
        sb.append(',');
        StringUtils.appendAsHex(sb, xid.getFormatId());
    }

    @Override // com.mysql.jdbc.jdbc2.optional.MysqlPooledConnection, javax.sql.PooledConnection
    public synchronized java.sql.Connection getConnection() throws SQLException {
        return getConnection(false, true);
    }
}
