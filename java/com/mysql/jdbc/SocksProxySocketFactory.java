package com.mysql.jdbc;

import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public class SocksProxySocketFactory extends StandardSocketFactory {
    public static int SOCKS_DEFAULT_PORT = 1080;

    @Override // com.mysql.jdbc.StandardSocketFactory
    protected Socket createSocket(Properties properties) {
        int iIntValue;
        String property = properties.getProperty("socksProxyHost");
        String property2 = properties.getProperty("socksProxyPort", String.valueOf(SOCKS_DEFAULT_PORT));
        int i = SOCKS_DEFAULT_PORT;
        try {
            iIntValue = Integer.valueOf(property2).intValue();
        } catch (NumberFormatException unused) {
            iIntValue = i;
        }
        return new Socket(new Proxy(Proxy.Type.SOCKS, new InetSocketAddress(property, iIntValue)));
    }
}
