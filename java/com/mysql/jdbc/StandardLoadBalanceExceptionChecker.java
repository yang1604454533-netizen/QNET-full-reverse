package com.mysql.jdbc;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class StandardLoadBalanceExceptionChecker implements LoadBalanceExceptionChecker {
    private List<Class<?>> sqlExClassList;
    private List<String> sqlStateList;

    @Override // com.mysql.jdbc.Extension
    public void destroy() {
    }

    @Override // com.mysql.jdbc.LoadBalanceExceptionChecker
    public boolean shouldExceptionTriggerFailover(SQLException sQLException) {
        String sQLState = sQLException.getSQLState();
        if (sQLState != null) {
            if (sQLState.startsWith("08")) {
                return true;
            }
            if (this.sqlStateList != null) {
                Iterator<String> it = this.sqlStateList.iterator();
                while (it.hasNext()) {
                    if (sQLState.startsWith(it.next().toString())) {
                        return true;
                    }
                }
            }
        }
        if (sQLException instanceof CommunicationsException) {
            return true;
        }
        if (this.sqlExClassList == null) {
            return false;
        }
        Iterator<Class<?>> it2 = this.sqlExClassList.iterator();
        while (it2.hasNext()) {
            if (it2.next().isInstance(sQLException)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.mysql.jdbc.Extension
    public void init(Connection connection, Properties properties) throws SQLException {
        configureSQLStateList(properties.getProperty("loadBalanceSQLStateFailover", null));
        configureSQLExceptionSubclassList(properties.getProperty("loadBalanceSQLExceptionSubclassFailover", null));
    }

    private void configureSQLStateList(String str) {
        if (str == null || "".equals(str)) {
            return;
        }
        List<String> listSplit = StringUtils.split(str, ",", true);
        ArrayList arrayList = new ArrayList();
        for (String str2 : listSplit) {
            if (str2.length() > 0) {
                arrayList.add(str2);
            }
        }
        if (arrayList.size() > 0) {
            this.sqlStateList = arrayList;
        }
    }

    private void configureSQLExceptionSubclassList(String str) {
        if (str == null || "".equals(str)) {
            return;
        }
        List<String> listSplit = StringUtils.split(str, ",", true);
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = listSplit.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(Class.forName(it.next()));
            } catch (Exception unused) {
            }
        }
        if (arrayList.size() > 0) {
            this.sqlExClassList = arrayList;
        }
    }
}
