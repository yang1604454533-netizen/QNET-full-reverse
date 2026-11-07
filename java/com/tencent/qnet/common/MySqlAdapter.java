package com.tencent.qnet.common;

import android.util.Log;
import com.tencent.qnet.global.GlobalSettings;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MySqlAdapter {
    public static Connection openConnection(String str, String str2, String str3) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            return DriverManager.getConnection(String.format("%s?user=%s&password=%s&useUnicode=true&characterEncoding=utf-8", str, str2, str3));
        } catch (ClassNotFoundException e) {
            Log.e(GlobalSettings.LOG_TAG, "Exception:" + e.getMessage());
            return null;
        } catch (SQLException e2) {
            Log.e(GlobalSettings.LOG_TAG, "Exception 111:" + e2.getMessage());
            return null;
        }
    }

    public static void CloseConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x007a A[Catch: SQLException -> 0x007d, TRY_LEAVE, TryCatch #3 {SQLException -> 0x007d, blocks: (B:39:0x0075, B:41:0x007a), top: B:58:0x0075 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x0085 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x0087 A[Catch: SQLException -> 0x008a, TRY_LEAVE, TryCatch #8 {SQLException -> 0x008a, blocks: (B:46:0x0082, B:48:0x0087), top: B:62:0x0082 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x0082 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static List query(Connection connection, String str) throws Throwable {
        ResultSet resultSetExecuteQuery;
        Throwable th;
        Statement statementCreateStatement;
        ArrayList arrayList;
        SQLException e;
        ArrayList arrayList2 = null;
        if (connection == null) {
            return null;
        }
        try {
            str = new String(str.getBytes("UTF-8"), "UTF-8");
        } catch (Exception unused) {
        }
        try {
            statementCreateStatement = connection.createStatement();
            try {
                resultSetExecuteQuery = statementCreateStatement.executeQuery(str);
                try {
                    try {
                        ResultSetMetaData metaData = resultSetExecuteQuery.getMetaData();
                        int columnCount = metaData.getColumnCount();
                        if (resultSetExecuteQuery != null) {
                            arrayList = new ArrayList();
                            while (resultSetExecuteQuery.next()) {
                                try {
                                    HashMap map = new HashMap();
                                    for (int i = 1; i <= columnCount; i++) {
                                        map.put(metaData.getColumnName(i), resultSetExecuteQuery.getObject(i));
                                    }
                                    arrayList.add(map);
                                } catch (SQLException e2) {
                                    e = e2;
                                    e.printStackTrace();
                                    if (resultSetExecuteQuery != null) {
                                        try {
                                            resultSetExecuteQuery.close();
                                            if (statementCreateStatement != null) {
                                                statementCreateStatement.close();
                                            }
                                        } catch (SQLException unused2) {
                                            return arrayList;
                                        }
                                    } else if (statementCreateStatement != null) {
                                        statementCreateStatement.close();
                                    }
                                    return arrayList;
                                }
                            }
                            arrayList2 = arrayList;
                        }
                        if (resultSetExecuteQuery != null) {
                            try {
                                resultSetExecuteQuery.close();
                            } catch (SQLException unused3) {
                                return arrayList2;
                            }
                        }
                        if (statementCreateStatement == null) {
                            return arrayList2;
                        }
                        statementCreateStatement.close();
                        return arrayList2;
                    } catch (SQLException e3) {
                        arrayList = null;
                        e = e3;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (resultSetExecuteQuery != null) {
                        try {
                            resultSetExecuteQuery.close();
                            if (statementCreateStatement != null) {
                                statementCreateStatement.close();
                            }
                        } catch (SQLException unused4) {
                            throw th;
                        }
                    } else if (statementCreateStatement != null) {
                        statementCreateStatement.close();
                    }
                    throw th;
                }
            } catch (SQLException e4) {
                arrayList = null;
                e = e4;
                resultSetExecuteQuery = null;
            } catch (Throwable th3) {
                th = th3;
                resultSetExecuteQuery = null;
                if (resultSetExecuteQuery != null) {
                    resultSetExecuteQuery.close();
                    if (statementCreateStatement != null) {
                        statementCreateStatement.close();
                    }
                } else if (statementCreateStatement != null) {
                    statementCreateStatement.close();
                }
                throw th;
            }
        } catch (SQLException e5) {
            resultSetExecuteQuery = null;
            arrayList = null;
            e = e5;
            statementCreateStatement = null;
        } catch (Throwable th4) {
            resultSetExecuteQuery = null;
            th = th4;
            statementCreateStatement = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0068 A[Catch: SQLException -> 0x006b, TRY_LEAVE, TryCatch #1 {SQLException -> 0x006b, blocks: (B:38:0x0063, B:40:0x0068), top: B:46:0x0063 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.sql.Connection] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.sql.Statement] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.sql.Statement] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.sql.Statement] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v4, types: [java.sql.ResultSet] */
    /* JADX WARN: Type inference failed for: r6v6 */
    public static int queryVersion(Connection connection, String str) throws Throwable {
        ResultSet resultSetExecuteQuery;
        SQLException e;
        int iIntValue = 0;
        if (connection == 0) {
            return 0;
        }
        try {
            str = new String(str.getBytes("UTF-8"), "UTF-8");
        } catch (Exception unused) {
        }
        try {
            try {
                try {
                    connection = connection.createStatement();
                    try {
                        resultSetExecuteQuery = connection.executeQuery(str);
                        if (resultSetExecuteQuery != null) {
                            try {
                                if (resultSetExecuteQuery.first()) {
                                    iIntValue = Integer.valueOf(resultSetExecuteQuery.getString(resultSetExecuteQuery.findColumn("CurVersion"))).intValue();
                                }
                            } catch (SQLException e2) {
                                e = e2;
                                e.printStackTrace();
                                if (resultSetExecuteQuery != null) {
                                    resultSetExecuteQuery.close();
                                }
                                if (connection != 0) {
                                }
                                return iIntValue;
                            }
                        }
                        if (resultSetExecuteQuery != null) {
                            resultSetExecuteQuery.close();
                        }
                        if (connection != 0) {
                            connection.close();
                        }
                    } catch (SQLException e3) {
                        e = e3;
                        resultSetExecuteQuery = null;
                    } catch (Throwable th) {
                        th = th;
                        str = 0;
                        if (str != 0) {
                            try {
                                str.close();
                                if (connection != 0) {
                                    connection.close();
                                }
                            } catch (SQLException unused2) {
                                throw th;
                            }
                        } else if (connection != 0) {
                            connection.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (SQLException e4) {
                resultSetExecuteQuery = null;
                e = e4;
                connection = 0;
            } catch (Throwable th3) {
                th = th3;
                connection = 0;
                str = 0;
            }
        } catch (SQLException unused3) {
        }
        return iIntValue;
    }

    public static boolean execSQL(Connection connection, String str) throws Throwable {
        boolean z = false;
        if (connection == null) {
            return false;
        }
        try {
            str = new String(str.getBytes("UTF-8"), "UTF-8");
        } catch (Exception unused) {
        }
        Statement statement = null;
        try {
            try {
                try {
                    Statement statementCreateStatement = connection.createStatement();
                    if (statementCreateStatement != null) {
                        try {
                            statementCreateStatement.execute(str);
                            z = true;
                        } catch (SQLException e) {
                            e = e;
                            statement = statementCreateStatement;
                            Log.e(GlobalSettings.LOG_TAG, "Insert Exception:" + e.getMessage());
                            if (statement != null) {
                                statement.close();
                            }
                            return z;
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
                    }
                    if (statementCreateStatement != null) {
                        statementCreateStatement.close();
                    }
                } catch (SQLException unused3) {
                }
            } catch (SQLException e2) {
                e = e2;
            }
            return z;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
