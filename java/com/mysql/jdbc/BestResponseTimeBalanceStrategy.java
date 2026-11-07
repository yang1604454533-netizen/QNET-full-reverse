package com.mysql.jdbc;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class BestResponseTimeBalanceStrategy implements BalanceStrategy {
    @Override // com.mysql.jdbc.Extension
    public void destroy() {
    }

    @Override // com.mysql.jdbc.Extension
    public void init(Connection connection, Properties properties) throws SQLException {
    }

    @Override // com.mysql.jdbc.BalanceStrategy
    public ConnectionImpl pickConnection(LoadBalancedConnectionProxy loadBalancedConnectionProxy, List<String> list, Map<String, ConnectionImpl> map, long[] jArr, int i) throws SQLException {
        Map<String, Long> globalBlacklist = loadBalancedConnectionProxy.getGlobalBlacklist();
        SQLException sQLException = null;
        int i2 = 0;
        while (i2 < i) {
            long j = Long.MAX_VALUE;
            if (globalBlacklist.size() == list.size()) {
                globalBlacklist = loadBalancedConnectionProxy.getGlobalBlacklist();
            }
            Map<String, Long> map2 = globalBlacklist;
            int i3 = 0;
            for (int i4 = 0; i4 < jArr.length; i4++) {
                long j2 = jArr[i4];
                if (j2 < j && !map2.containsKey(list.get(i4))) {
                    if (j2 == 0) {
                        i3 = i4;
                        break;
                    }
                    i3 = i4;
                    j = j2;
                }
            }
            String str = list.get(i3);
            ConnectionImpl connectionImplCreateConnectionForHost = map.get(str);
            if (connectionImplCreateConnectionForHost == null) {
                try {
                    connectionImplCreateConnectionForHost = loadBalancedConnectionProxy.createConnectionForHost(str);
                } catch (SQLException e) {
                    if (loadBalancedConnectionProxy.shouldExceptionTriggerConnectionSwitch(e)) {
                        loadBalancedConnectionProxy.addToGlobalBlacklist(str);
                        map2.put(str, null);
                        if (map2.size() == list.size()) {
                            i2++;
                            try {
                                Thread.sleep(250L);
                            } catch (InterruptedException unused) {
                            }
                            globalBlacklist = loadBalancedConnectionProxy.getGlobalBlacklist();
                        } else {
                            globalBlacklist = map2;
                        }
                        sQLException = e;
                    } else {
                        throw e;
                    }
                }
            }
            return connectionImplCreateConnectionForHost;
        }
        if (sQLException == null) {
            return null;
        }
        throw sQLException;
    }
}
