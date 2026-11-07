package com.mysql.jdbc;

import com.tencent.open.SocialConstants;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.net.URLDecoder;
import java.sql.DriverPropertyInfo;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes.dex */
public class NonRegisteringDriver implements java.sql.Driver {
    private static final String ALLOWED_QUOTES = "\"'";
    public static final String DBNAME_PROPERTY_KEY = "DBNAME";
    public static final boolean DEBUG = false;
    public static final int HOST_NAME_INDEX = 0;
    public static final String HOST_PROPERTY_KEY = "HOST";
    public static final String LICENSE = "GPL";
    public static final String LOADBALANCE_URL_PREFIX = "jdbc:mysql:loadbalance://";
    private static final String MXJ_URL_PREFIX = "jdbc:mysql:mxj://";
    public static final String NAME = "MySQL Connector Java";
    public static final String NUM_HOSTS_PROPERTY_KEY = "NUM_HOSTS";
    public static final String PASSWORD_PROPERTY_KEY = "password";
    public static final String PATH_PROPERTY_KEY = "PATH";
    public static final int PORT_NUMBER_INDEX = 1;
    public static final String PORT_PROPERTY_KEY = "PORT";
    public static final String PROPERTIES_TRANSFORM_KEY = "propertiesTransform";
    public static final String PROTOCOL_PROPERTY_KEY = "PROTOCOL";
    private static final String REPLICATION_URL_PREFIX = "jdbc:mysql:replication://";
    public static final boolean TRACE = false;
    private static final String URL_PREFIX = "jdbc:mysql://";
    public static final String USER_PROPERTY_KEY = "user";
    public static final String USE_CONFIG_PROPERTY_KEY = "useConfigs";
    public static final String VERSION = "5.1.43";
    protected static final ConcurrentHashMap<ConnectionPhantomReference, ConnectionPhantomReference> connectionPhantomRefs = new ConcurrentHashMap<>();
    protected static final ReferenceQueue<ConnectionImpl> refQueue = new ReferenceQueue<>();
    public static final String OS = getOSName();
    public static final String PLATFORM = getPlatform();
    public static final String RUNTIME_VENDOR = System.getProperty("java.vendor");
    public static final String RUNTIME_VERSION = System.getProperty("java.version");

    @Override // java.sql.Driver
    public boolean jdbcCompliant() {
        return false;
    }

    static {
        try {
            Class.forName(AbandonedConnectionCleanupThread.class.getName());
        } catch (ClassNotFoundException unused) {
        }
    }

    public static String getOSName() {
        return System.getProperty("os.name");
    }

    public static String getPlatform() {
        return System.getProperty("os.arch");
    }

    static int getMajorVersionInternal() {
        return safeIntParse("5");
    }

    static int getMinorVersionInternal() {
        return safeIntParse("1");
    }

    protected static String[] parseHostPortPair(String str) throws SQLException {
        String[] strArr = new String[2];
        if (StringUtils.startsWithIgnoreCaseAndWs(str, "address=")) {
            strArr[0] = str.trim();
            strArr[1] = null;
            return strArr;
        }
        int iIndexOf = str.indexOf(":");
        if (iIndexOf != -1) {
            int i = iIndexOf + 1;
            if (i < str.length()) {
                String strSubstring = str.substring(i);
                strArr[0] = str.substring(0, iIndexOf);
                strArr[1] = strSubstring;
            } else {
                throw SQLError.createSQLException(Messages.getString("NonRegisteringDriver.37"), SQLError.SQL_STATE_INVALID_CONNECTION_ATTRIBUTE, (ExceptionInterceptor) null);
            }
        } else {
            strArr[0] = str;
            strArr[1] = null;
        }
        return strArr;
    }

    private static int safeIntParse(String str) {
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    @Override // java.sql.Driver
    public boolean acceptsURL(String str) throws SQLException {
        if (str != null) {
            return parseURL(str, null) != null;
        }
        throw SQLError.createSQLException(Messages.getString("NonRegisteringDriver.1"), SQLError.SQL_STATE_UNABLE_TO_CONNECT_TO_DATASOURCE, (ExceptionInterceptor) null);
    }

    @Override // java.sql.Driver
    public java.sql.Connection connect(String str, Properties properties) throws SQLException {
        if (str == null) {
            throw SQLError.createSQLException(Messages.getString("NonRegisteringDriver.1"), SQLError.SQL_STATE_UNABLE_TO_CONNECT_TO_DATASOURCE, (ExceptionInterceptor) null);
        }
        if (StringUtils.startsWithIgnoreCase(str, LOADBALANCE_URL_PREFIX)) {
            return connectLoadBalanced(str, properties);
        }
        if (StringUtils.startsWithIgnoreCase(str, REPLICATION_URL_PREFIX)) {
            return connectReplicationConnection(str, properties);
        }
        Properties url = parseURL(str, properties);
        if (url == null) {
            return null;
        }
        if (!"1".equals(url.getProperty(NUM_HOSTS_PROPERTY_KEY))) {
            return connectFailover(str, properties);
        }
        try {
            return ConnectionImpl.getInstance(host(url), port(url), url, database(url), str);
        } catch (SQLException e) {
            throw e;
        } catch (Exception e2) {
            SQLException sQLExceptionCreateSQLException = SQLError.createSQLException(Messages.getString("NonRegisteringDriver.17") + e2.toString() + Messages.getString("NonRegisteringDriver.18"), SQLError.SQL_STATE_UNABLE_TO_CONNECT_TO_DATASOURCE, (ExceptionInterceptor) null);
            sQLExceptionCreateSQLException.initCause(e2);
            throw sQLExceptionCreateSQLException;
        }
    }

    protected static void trackConnection(Connection connection) {
        ConnectionPhantomReference connectionPhantomReference = new ConnectionPhantomReference((ConnectionImpl) connection, refQueue);
        connectionPhantomRefs.put(connectionPhantomReference, connectionPhantomReference);
    }

    private java.sql.Connection connectLoadBalanced(String str, Properties properties) throws SQLException {
        Properties url = parseURL(str, properties);
        if (url == null) {
            return null;
        }
        url.remove("roundRobinLoadBalance");
        int i = Integer.parseInt(url.getProperty(NUM_HOSTS_PROPERTY_KEY));
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < i) {
            i2++;
            StringBuilder sb = new StringBuilder();
            sb.append(url.getProperty("HOST." + i2));
            sb.append(":");
            sb.append(url.getProperty("PORT." + i2));
            arrayList.add(sb.toString());
        }
        return LoadBalancedConnectionProxy.createProxyInstance(arrayList, url);
    }

    private java.sql.Connection connectFailover(String str, Properties properties) throws SQLException {
        Properties url = parseURL(str, properties);
        if (url == null) {
            return null;
        }
        url.remove("roundRobinLoadBalance");
        int i = Integer.parseInt(url.getProperty(NUM_HOSTS_PROPERTY_KEY));
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < i) {
            i2++;
            StringBuilder sb = new StringBuilder();
            sb.append(url.getProperty("HOST." + i2));
            sb.append(":");
            sb.append(url.getProperty("PORT." + i2));
            arrayList.add(sb.toString());
        }
        return FailoverConnectionProxy.createProxyInstance(arrayList, url);
    }

    protected java.sql.Connection connectReplicationConnection(String str, Properties properties) throws SQLException {
        Properties url = parseURL(str, properties);
        if (url == null) {
            return null;
        }
        Properties properties2 = (Properties) url.clone();
        Properties properties3 = (Properties) url.clone();
        properties3.setProperty("com.mysql.jdbc.ReplicationConnection.isSlave", "true");
        int i = Integer.parseInt(url.getProperty(NUM_HOSTS_PROPERTY_KEY));
        if (i < 2) {
            throw SQLError.createSQLException("Must specify at least one slave host to connect to for master/slave replication load-balancing functionality", SQLError.SQL_STATE_INVALID_CONNECTION_ATTRIBUTE, (ExceptionInterceptor) null);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean zIsHostPropertiesList = isHostPropertiesList(properties2.getProperty("HOST.1") + ":" + properties2.getProperty("PORT.1"));
        int i2 = 0;
        while (i2 < i) {
            int i3 = i2 + 1;
            properties2.remove("HOST." + i3);
            properties2.remove("PORT." + i3);
            properties3.remove("HOST." + i3);
            properties3.remove("PORT." + i3);
            String property = url.getProperty("HOST." + i3);
            String property2 = url.getProperty("PORT." + i3);
            if (zIsHostPropertiesList) {
                if (isHostMaster(property)) {
                    arrayList2.add(property);
                } else {
                    arrayList.add(property);
                }
            } else if (i2 == 0) {
                arrayList2.add(property + ":" + property2);
            } else {
                arrayList.add(property + ":" + property2);
            }
            i2 = i3;
        }
        properties3.remove(NUM_HOSTS_PROPERTY_KEY);
        properties2.remove(NUM_HOSTS_PROPERTY_KEY);
        properties2.remove(HOST_PROPERTY_KEY);
        properties2.remove(PORT_PROPERTY_KEY);
        properties3.remove(HOST_PROPERTY_KEY);
        properties3.remove(PORT_PROPERTY_KEY);
        return ReplicationConnectionProxy.createProxyInstance(arrayList2, properties2, arrayList, properties3);
    }

    private boolean isHostMaster(String str) {
        if (!isHostPropertiesList(str)) {
            return false;
        }
        Properties propertiesExpandHostKeyValues = expandHostKeyValues(str);
        return propertiesExpandHostKeyValues.containsKey(SocialConstants.PARAM_TYPE) && "master".equalsIgnoreCase(propertiesExpandHostKeyValues.get(SocialConstants.PARAM_TYPE).toString());
    }

    public String database(Properties properties) {
        return properties.getProperty(DBNAME_PROPERTY_KEY);
    }

    @Override // java.sql.Driver
    public int getMajorVersion() {
        return getMajorVersionInternal();
    }

    @Override // java.sql.Driver
    public int getMinorVersion() {
        return getMinorVersionInternal();
    }

    @Override // java.sql.Driver
    public DriverPropertyInfo[] getPropertyInfo(String str, Properties properties) throws SQLException {
        if (properties == null) {
            properties = new Properties();
        }
        if (str != null && str.startsWith(URL_PREFIX)) {
            properties = parseURL(str, properties);
        }
        DriverPropertyInfo driverPropertyInfo = new DriverPropertyInfo(HOST_PROPERTY_KEY, properties.getProperty(HOST_PROPERTY_KEY));
        driverPropertyInfo.required = true;
        driverPropertyInfo.description = Messages.getString("NonRegisteringDriver.3");
        DriverPropertyInfo driverPropertyInfo2 = new DriverPropertyInfo(PORT_PROPERTY_KEY, properties.getProperty(PORT_PROPERTY_KEY, "3306"));
        driverPropertyInfo2.required = false;
        driverPropertyInfo2.description = Messages.getString("NonRegisteringDriver.7");
        DriverPropertyInfo driverPropertyInfo3 = new DriverPropertyInfo(DBNAME_PROPERTY_KEY, properties.getProperty(DBNAME_PROPERTY_KEY));
        driverPropertyInfo3.required = false;
        driverPropertyInfo3.description = "Database name";
        DriverPropertyInfo driverPropertyInfo4 = new DriverPropertyInfo(USER_PROPERTY_KEY, properties.getProperty(USER_PROPERTY_KEY));
        driverPropertyInfo4.required = true;
        driverPropertyInfo4.description = Messages.getString("NonRegisteringDriver.13");
        DriverPropertyInfo driverPropertyInfo5 = new DriverPropertyInfo(PASSWORD_PROPERTY_KEY, properties.getProperty(PASSWORD_PROPERTY_KEY));
        driverPropertyInfo5.required = true;
        driverPropertyInfo5.description = Messages.getString("NonRegisteringDriver.16");
        DriverPropertyInfo[] driverPropertyInfoArrExposeAsDriverPropertyInfo = ConnectionPropertiesImpl.exposeAsDriverPropertyInfo(properties, 5);
        driverPropertyInfoArrExposeAsDriverPropertyInfo[0] = driverPropertyInfo;
        driverPropertyInfoArrExposeAsDriverPropertyInfo[1] = driverPropertyInfo2;
        driverPropertyInfoArrExposeAsDriverPropertyInfo[2] = driverPropertyInfo3;
        driverPropertyInfoArrExposeAsDriverPropertyInfo[3] = driverPropertyInfo4;
        driverPropertyInfoArrExposeAsDriverPropertyInfo[4] = driverPropertyInfo5;
        return driverPropertyInfoArrExposeAsDriverPropertyInfo;
    }

    public String host(Properties properties) {
        return properties.getProperty(HOST_PROPERTY_KEY, "localhost");
    }

    public Properties parseURL(String str, Properties properties) throws SQLException {
        int i;
        String strSubstring;
        String strSubstring2;
        Properties properties2 = properties != null ? new Properties(properties) : new Properties();
        if (str == null) {
            return null;
        }
        if (!StringUtils.startsWithIgnoreCase(str, URL_PREFIX) && !StringUtils.startsWithIgnoreCase(str, MXJ_URL_PREFIX) && !StringUtils.startsWithIgnoreCase(str, LOADBALANCE_URL_PREFIX) && !StringUtils.startsWithIgnoreCase(str, REPLICATION_URL_PREFIX)) {
            return null;
        }
        int iIndexOf = str.indexOf("//");
        if (StringUtils.startsWithIgnoreCase(str, MXJ_URL_PREFIX)) {
            properties2.setProperty("socketFactory", "com.mysql.management.driverlaunched.ServerLauncherSocketFactory");
        }
        int iIndexOf2 = str.indexOf("?");
        if (iIndexOf2 != -1) {
            String strSubstring3 = str.substring(iIndexOf2 + 1, str.length());
            str = str.substring(0, iIndexOf2);
            StringTokenizer stringTokenizer = new StringTokenizer(strSubstring3, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String strNextToken = stringTokenizer.nextToken();
                int iIndexOfIgnoreCase = StringUtils.indexOfIgnoreCase(0, strNextToken, "=");
                if (iIndexOfIgnoreCase != -1) {
                    strSubstring2 = strNextToken.substring(0, iIndexOfIgnoreCase);
                    int i2 = iIndexOfIgnoreCase + 1;
                    strSubstring = i2 < strNextToken.length() ? strNextToken.substring(i2) : null;
                } else {
                    strSubstring = null;
                    strSubstring2 = null;
                }
                if (strSubstring != null && strSubstring.length() > 0 && strSubstring2 != null && strSubstring2.length() > 0) {
                    try {
                        properties2.setProperty(strSubstring2, URLDecoder.decode(strSubstring, "UTF-8"));
                    } catch (UnsupportedEncodingException unused) {
                        properties2.setProperty(strSubstring2, URLDecoder.decode(strSubstring));
                    } catch (NoSuchMethodError unused2) {
                        properties2.setProperty(strSubstring2, URLDecoder.decode(strSubstring));
                    }
                }
            }
        }
        String strSubstring4 = str.substring(iIndexOf + 2);
        int iIndexOfIgnoreCase2 = StringUtils.indexOfIgnoreCase(0, strSubstring4, "/", ALLOWED_QUOTES, ALLOWED_QUOTES, StringUtils.SEARCH_MODE__ALL);
        if (iIndexOfIgnoreCase2 != -1) {
            String strSubstring5 = strSubstring4.substring(0, iIndexOfIgnoreCase2);
            int i3 = iIndexOfIgnoreCase2 + 1;
            if (i3 < strSubstring4.length()) {
                properties2.put(DBNAME_PROPERTY_KEY, strSubstring4.substring(i3, strSubstring4.length()));
            }
            strSubstring4 = strSubstring5;
        }
        if (strSubstring4 != null && strSubstring4.trim().length() > 0) {
            Iterator<String> it = StringUtils.split(strSubstring4, ",", ALLOWED_QUOTES, ALLOWED_QUOTES, false).iterator();
            i = 0;
            while (it.hasNext()) {
                i++;
                String[] hostPortPair = parseHostPortPair(it.next());
                if (hostPortPair[0] != null && hostPortPair[0].trim().length() > 0) {
                    properties2.setProperty("HOST." + i, hostPortPair[0]);
                } else {
                    properties2.setProperty("HOST." + i, "localhost");
                }
                if (hostPortPair[1] != null) {
                    properties2.setProperty("PORT." + i, hostPortPair[1]);
                } else {
                    properties2.setProperty("PORT." + i, "3306");
                }
            }
        } else {
            properties2.setProperty("HOST.1", "localhost");
            properties2.setProperty("PORT.1", "3306");
            i = 1;
        }
        properties2.setProperty(NUM_HOSTS_PROPERTY_KEY, String.valueOf(i));
        properties2.setProperty(HOST_PROPERTY_KEY, properties2.getProperty("HOST.1"));
        properties2.setProperty(PORT_PROPERTY_KEY, properties2.getProperty("PORT.1"));
        String property = properties2.getProperty(PROPERTIES_TRANSFORM_KEY);
        if (property != null) {
            try {
                properties2 = ((ConnectionPropertiesTransform) Class.forName(property).newInstance()).transformProperties(properties2);
            } catch (ClassNotFoundException e) {
                throw SQLError.createSQLException("Unable to create properties transform instance '" + property + "' due to underlying exception: " + e.toString(), SQLError.SQL_STATE_INVALID_CONNECTION_ATTRIBUTE, (ExceptionInterceptor) null);
            } catch (IllegalAccessException e2) {
                throw SQLError.createSQLException("Unable to create properties transform instance '" + property + "' due to underlying exception: " + e2.toString(), SQLError.SQL_STATE_INVALID_CONNECTION_ATTRIBUTE, (ExceptionInterceptor) null);
            } catch (InstantiationException e3) {
                throw SQLError.createSQLException("Unable to create properties transform instance '" + property + "' due to underlying exception: " + e3.toString(), SQLError.SQL_STATE_INVALID_CONNECTION_ATTRIBUTE, (ExceptionInterceptor) null);
            }
        }
        if (Util.isColdFusion() && properties2.getProperty("autoConfigureForColdFusion", "true").equalsIgnoreCase("true")) {
            String property2 = properties2.getProperty(USE_CONFIG_PROPERTY_KEY);
            StringBuilder sb = new StringBuilder();
            if (property2 != null) {
                sb.append(property2);
                sb.append(",");
            }
            sb.append("coldFusion");
            properties2.setProperty(USE_CONFIG_PROPERTY_KEY, sb.toString());
        }
        String property3 = properties != null ? properties.getProperty(USE_CONFIG_PROPERTY_KEY) : null;
        if (property3 == null) {
            property3 = properties2.getProperty(USE_CONFIG_PROPERTY_KEY);
        }
        if (property3 != null) {
            List<String> listSplit = StringUtils.split(property3, ",", true);
            Properties properties3 = new Properties();
            for (String str2 : listSplit) {
                try {
                    InputStream resourceAsStream = getClass().getResourceAsStream("configs/" + str2 + ".properties");
                    if (resourceAsStream == null) {
                        throw SQLError.createSQLException("Can't find configuration template named '" + str2 + "'", SQLError.SQL_STATE_INVALID_CONNECTION_ATTRIBUTE, (ExceptionInterceptor) null);
                    }
                    properties3.load(resourceAsStream);
                } catch (IOException e4) {
                    SQLException sQLExceptionCreateSQLException = SQLError.createSQLException("Unable to load configuration template '" + str2 + "' due to underlying IOException: " + e4, SQLError.SQL_STATE_INVALID_CONNECTION_ATTRIBUTE, (ExceptionInterceptor) null);
                    sQLExceptionCreateSQLException.initCause(e4);
                    throw sQLExceptionCreateSQLException;
                }
            }
            Iterator it2 = properties2.keySet().iterator();
            while (it2.hasNext()) {
                String string = it2.next().toString();
                properties3.setProperty(string, properties2.getProperty(string));
            }
            properties2 = properties3;
        }
        if (properties != null) {
            Iterator it3 = properties.keySet().iterator();
            while (it3.hasNext()) {
                String string2 = it3.next().toString();
                if (!string2.equals(NUM_HOSTS_PROPERTY_KEY)) {
                    properties2.setProperty(string2, properties.getProperty(string2));
                }
            }
        }
        return properties2;
    }

    public int port(Properties properties) {
        return Integer.parseInt(properties.getProperty(PORT_PROPERTY_KEY, "3306"));
    }

    public String property(String str, Properties properties) {
        return properties.getProperty(str);
    }

    public static Properties expandHostKeyValues(String str) {
        Properties properties = new Properties();
        if (isHostPropertiesList(str)) {
            for (String strSubstring : StringUtils.split(str.substring("address=".length() + 1), ")", "'\"", "'\"", true)) {
                if (strSubstring.startsWith("(")) {
                    strSubstring = strSubstring.substring(1);
                }
                List<String> listSplit = StringUtils.split(strSubstring, "=", "'\"", "'\"", true);
                String upperCase = listSplit.get(0);
                String strSubstring2 = listSplit.size() > 1 ? listSplit.get(1) : null;
                if (strSubstring2 != null && ((strSubstring2.startsWith("\"") && strSubstring2.endsWith("\"")) || (strSubstring2.startsWith("'") && strSubstring2.endsWith("'")))) {
                    strSubstring2 = strSubstring2.substring(1, strSubstring2.length() - 1);
                }
                if (strSubstring2 != null) {
                    if (HOST_PROPERTY_KEY.equalsIgnoreCase(upperCase) || DBNAME_PROPERTY_KEY.equalsIgnoreCase(upperCase) || PORT_PROPERTY_KEY.equalsIgnoreCase(upperCase) || PROTOCOL_PROPERTY_KEY.equalsIgnoreCase(upperCase) || PATH_PROPERTY_KEY.equalsIgnoreCase(upperCase)) {
                        upperCase = upperCase.toUpperCase(Locale.ENGLISH);
                    } else if (USER_PROPERTY_KEY.equalsIgnoreCase(upperCase) || PASSWORD_PROPERTY_KEY.equalsIgnoreCase(upperCase)) {
                        upperCase = upperCase.toLowerCase(Locale.ENGLISH);
                    }
                    properties.setProperty(upperCase, strSubstring2);
                }
            }
        }
        return properties;
    }

    public static boolean isHostPropertiesList(String str) {
        return str != null && StringUtils.startsWithIgnoreCase(str, "address=");
    }

    static class ConnectionPhantomReference extends PhantomReference<ConnectionImpl> {

        /* JADX INFO: renamed from: io, reason: collision with root package name */
        private NetworkResources f28io;

        ConnectionPhantomReference(ConnectionImpl connectionImpl, ReferenceQueue<ConnectionImpl> referenceQueue) {
            super(connectionImpl, referenceQueue);
            try {
                this.f28io = connectionImpl.getIO().getNetworkResources();
            } catch (SQLException unused) {
            }
        }

        void cleanup() {
            if (this.f28io != null) {
                try {
                    this.f28io.forceClose();
                } finally {
                    this.f28io = null;
                }
            }
        }
    }
}
