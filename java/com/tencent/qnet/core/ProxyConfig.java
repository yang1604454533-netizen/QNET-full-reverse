package com.tencent.qnet.core;

import android.annotation.SuppressLint;
import android.os.Build;
import com.tencent.qnet.tcpip.CommonMethods;
import com.tencent.qnet.tunnel.Config;
import java.io.FileInputStream;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

/* JADX INFO: loaded from: classes.dex */
public class ProxyConfig {
    public static String AppInstallID;
    public static String AppVersion;
    public static final boolean IS_DEBUG = false;
    public static final boolean IS_LOG_TCP = false;
    public static final boolean IS_LOG_UDP = false;
    int m_dns_ttl;
    int m_mtu;
    String m_session_name;
    String m_user_agent;
    String m_welcome_info;
    public static final ProxyConfig Instance = new ProxyConfig();
    public static final int FAKE_NETWORK_MASK = CommonMethods.ipStringToInt("255.255.0.0");
    public static final int FAKE_NETWORK_IP = CommonMethods.ipStringToInt("172.25.0.0");
    public boolean globalMode = false;
    boolean m_outside_china_use_proxy = true;
    boolean m_isolate_http_host_header = true;
    TimerTask m_Task = new TimerTask() { // from class: com.tencent.qnet.core.ProxyConfig.1
        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            refreshProxyServer();
        }

        void refreshProxyServer() {
            for (int i = 0; i < ProxyConfig.this.m_ProxyList.size(); i++) {
                try {
                    try {
                        Config config = ProxyConfig.this.m_ProxyList.get(0);
                        InetAddress byName = InetAddress.getByName(config.ServerAddress.getHostName());
                        if (byName != null && !byName.equals(config.ServerAddress.getAddress())) {
                            config.ServerAddress = new InetSocketAddress(byName, config.ServerAddress.getPort());
                        }
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    return;
                }
            }
        }
    };
    ArrayList<IPAddress> m_IpList = new ArrayList<>();
    ArrayList<IPAddress> m_DnsList = new ArrayList<>();
    ArrayList<IPAddress> m_RouteList = new ArrayList<>();
    public ArrayList<Config> m_ProxyList = new ArrayList<>();
    HashMap<String, Boolean> m_DomainMap = new HashMap<>();
    Timer m_Timer = new Timer();

    public boolean needProxy(String str, int i) {
        return false;
    }

    public class IPAddress {
        public final String Address;
        public final int PrefixLength;

        public IPAddress(String str, int i) {
            this.Address = str;
            this.PrefixLength = i;
        }

        public IPAddress(String str) {
            String[] strArrSplit = str.split("/");
            String str2 = strArrSplit[0];
            int i = strArrSplit.length > 1 ? Integer.parseInt(strArrSplit[1]) : 32;
            this.Address = str2;
            this.PrefixLength = i;
        }

        @SuppressLint({"DefaultLocale"})
        public String toString() {
            return String.format("%s/%d", this.Address, Integer.valueOf(this.PrefixLength));
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            return toString().equals(obj.toString());
        }
    }

    public ProxyConfig() {
        this.m_Timer.schedule(this.m_Task, 120000L, 120000L);
    }

    public static boolean isFakeIP(int i) {
        return (i & FAKE_NETWORK_MASK) == FAKE_NETWORK_IP;
    }

    public Config getDefaultProxy() {
        if (this.m_ProxyList.size() > 0) {
            return this.m_ProxyList.get(0);
        }
        return null;
    }

    public Config getDefaultTunnelConfig(InetSocketAddress inetSocketAddress) {
        return getDefaultProxy();
    }

    public IPAddress getDefaultLocalIP() {
        if (this.m_IpList.size() > 0) {
            return this.m_IpList.get(0);
        }
        return new IPAddress("10.8.0.2", 32);
    }

    public ArrayList<IPAddress> getDnsList() {
        return this.m_DnsList;
    }

    public ArrayList<IPAddress> getRouteList() {
        return this.m_RouteList;
    }

    public int getDnsTTL() {
        if (this.m_dns_ttl < 30) {
            this.m_dns_ttl = 30;
        }
        return this.m_dns_ttl;
    }

    public String getWelcomeInfo() {
        return this.m_welcome_info;
    }

    public String getSessionName() {
        if (this.m_session_name == null) {
            this.m_session_name = getDefaultProxy().ServerAddress.getHostName();
        }
        return this.m_session_name;
    }

    public String getUserAgent() {
        if (this.m_user_agent == null || this.m_user_agent.isEmpty()) {
            this.m_user_agent = System.getProperty("http.agent");
        }
        return this.m_user_agent;
    }

    public int getMTU() {
        if (this.m_mtu <= 1400 || this.m_mtu > 20000) {
            return 20000;
        }
        return this.m_mtu;
    }

    private Boolean getDomainState(String str) {
        String lowerCase = str.toLowerCase();
        while (lowerCase.length() > 0) {
            Boolean bool = this.m_DomainMap.get(lowerCase);
            if (bool != null) {
                return bool;
            }
            int iIndexOf = lowerCase.indexOf(46) + 1;
            if (iIndexOf <= 0 || iIndexOf >= lowerCase.length()) {
                return null;
            }
            lowerCase = lowerCase.substring(iIndexOf);
        }
        return null;
    }

    public boolean isIsolateHttpHostHeader() {
        return this.m_isolate_http_host_header;
    }

    private String[] downloadConfig(String str) throws Exception {
        try {
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient();
            HttpGet httpGet = new HttpGet(str);
            httpGet.addHeader("X-Android-MODEL", Build.MODEL);
            httpGet.addHeader("X-Android-SDK_INT", Integer.toString(Build.VERSION.SDK_INT));
            httpGet.addHeader("X-Android-RELEASE", Build.VERSION.RELEASE);
            httpGet.addHeader("X-App-Version", AppVersion);
            httpGet.addHeader("X-App-Install-ID", AppInstallID);
            httpGet.setHeader("User-Agent", System.getProperty("http.agent"));
            return EntityUtils.toString(defaultHttpClient.execute(httpGet).getEntity(), "UTF-8").split("\\n");
        } catch (Exception unused) {
            throw new Exception(String.format("Download config file from %s failed.", str));
        }
    }

    private String[] readConfigFromFile(String str) throws Exception {
        StringBuilder sb = new StringBuilder();
        FileInputStream fileInputStream = null;
        try {
            try {
                byte[] bArr = new byte[8192];
                FileInputStream fileInputStream2 = new FileInputStream(str);
                while (true) {
                    try {
                        int i = fileInputStream2.read(bArr);
                        if (i <= 0) {
                            break;
                        }
                        sb.append(new String(bArr, 0, i, "UTF-8"));
                    } catch (Exception unused) {
                        throw new Exception(String.format("Can't read config file: %s", str));
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (Exception unused2) {
                            }
                        }
                        throw th;
                    }
                }
                String[] strArrSplit = sb.toString().split("\\n");
                try {
                    fileInputStream2.close();
                } catch (Exception unused3) {
                }
                return strArrSplit;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused4) {
        }
    }

    public void loadFromFile(InputStream inputStream) throws Exception {
        byte[] bArr = new byte[inputStream.available()];
        inputStream.read(bArr);
        loadFromLines(new String(bArr).split("\\r?\\n"));
    }

    public void loadFromUrl(String str) throws Exception {
        String[] strArrDownloadConfig;
        if (str.charAt(0) == '/') {
            strArrDownloadConfig = readConfigFromFile(str);
        } else {
            strArrDownloadConfig = downloadConfig(str);
        }
        loadFromLines(strArrDownloadConfig);
    }

    protected void loadFromLines(String[] strArr) throws Exception {
        this.m_IpList.clear();
        this.m_DnsList.clear();
        this.m_RouteList.clear();
        this.m_ProxyList.clear();
        this.m_DomainMap.clear();
        int i = 0;
        for (String str : strArr) {
            i++;
            String[] strArrSplit = str.split("\\s+");
            if (strArrSplit.length >= 2) {
                String strTrim = strArrSplit[0].toLowerCase(Locale.ENGLISH).trim();
                try {
                    if (!strTrim.startsWith("#")) {
                        if (strTrim.equals("ip")) {
                            addIPAddressToList(strArrSplit, 1, this.m_IpList);
                        } else if (strTrim.equals("dns")) {
                            addIPAddressToList(strArrSplit, 1, this.m_DnsList);
                        } else if (strTrim.equals("route")) {
                            addIPAddressToList(strArrSplit, 1, this.m_RouteList);
                        } else if (strTrim.equals("direct_domain")) {
                            addDomainToHashMap(strArrSplit, 1, false);
                        } else if (strTrim.equals("proxy_domain")) {
                            addDomainToHashMap(strArrSplit, 1, true);
                        } else if (strTrim.equals("dns_ttl")) {
                            this.m_dns_ttl = Integer.parseInt(strArrSplit[1]);
                        } else if (strTrim.equals("welcome_info")) {
                            this.m_welcome_info = str.substring(str.indexOf(" ")).trim();
                        } else if (strTrim.equals("session_name")) {
                            this.m_session_name = strArrSplit[1];
                        } else if (strTrim.equals("user_agent")) {
                            this.m_user_agent = str.substring(str.indexOf(" ")).trim();
                        } else if (strTrim.equals("outside_china_use_proxy")) {
                            this.m_outside_china_use_proxy = convertToBool(strArrSplit[1]);
                        } else if (strTrim.equals("isolate_http_host_header")) {
                            this.m_isolate_http_host_header = convertToBool(strArrSplit[1]);
                        } else if (strTrim.equals("mtu")) {
                            this.m_mtu = Integer.parseInt(strArrSplit[1]);
                        }
                    }
                } catch (Exception e) {
                    throw new Exception(String.format("config file parse error: line:%d, tag:%s, error:%s", Integer.valueOf(i), strTrim, e));
                }
            }
        }
        if (this.m_ProxyList.size() == 0) {
            tryAddProxy(strArr);
        }
    }

    private void tryAddProxy(String[] strArr) {
        for (String str : strArr) {
            while (Pattern.compile("proxy\\s+([^:]+):(\\d+)", 2).matcher(str).find()) {
            }
        }
    }

    private void addDomainToHashMap(String[] strArr, int i, Boolean bool) {
        while (i < strArr.length) {
            String strTrim = strArr[i].toLowerCase().trim();
            if (strTrim.charAt(0) == '.') {
                strTrim = strTrim.substring(1);
            }
            this.m_DomainMap.put(strTrim, bool);
            i++;
        }
    }

    private boolean convertToBool(String str) {
        if (str == null || str.isEmpty()) {
            return false;
        }
        String strTrim = str.toLowerCase(Locale.ENGLISH).trim();
        return strTrim.equals("on") || strTrim.equals("1") || strTrim.equals("true") || strTrim.equals("yes");
    }

    private void addIPAddressToList(String[] strArr, int i, ArrayList<IPAddress> arrayList) {
        while (i < strArr.length) {
            String lowerCase = strArr[i].trim().toLowerCase();
            if (lowerCase.startsWith("#")) {
                return;
            }
            IPAddress iPAddress = new IPAddress(lowerCase);
            if (!arrayList.contains(iPAddress)) {
                arrayList.add(iPAddress);
            }
            i++;
        }
    }
}
