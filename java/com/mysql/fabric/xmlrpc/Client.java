package com.mysql.fabric.xmlrpc;

import com.mysql.fabric.xmlrpc.base.MethodCall;
import com.mysql.fabric.xmlrpc.base.MethodResponse;
import com.mysql.fabric.xmlrpc.base.ResponseParser;
import com.mysql.fabric.xmlrpc.exceptions.MySQLFabricException;
import com.tencent.connect.common.Constants;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

/* JADX INFO: loaded from: classes.dex */
public class Client {
    private Map<String, String> headers = new HashMap();
    private URL url;

    public Client(String str) throws MalformedURLException {
        this.url = new URL(str);
    }

    public void setHeader(String str, String str2) {
        this.headers.put(str, str2);
    }

    public void clearHeader(String str) {
        this.headers.remove(str);
    }

    public MethodResponse execute(MethodCall methodCall) throws Throwable {
        HttpURLConnection httpURLConnection;
        try {
            httpURLConnection = (HttpURLConnection) this.url.openConnection();
            try {
                httpURLConnection.setRequestMethod(Constants.HTTP_POST);
                httpURLConnection.setRequestProperty("User-Agent", "MySQL XML-RPC");
                httpURLConnection.setRequestProperty("Content-Type", "text/xml");
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setDoInput(true);
                httpURLConnection.setDoOutput(true);
                for (Map.Entry<String, String> entry : this.headers.entrySet()) {
                    httpURLConnection.setRequestProperty(entry.getKey(), entry.getValue());
                }
                String string = methodCall.toString();
                OutputStream outputStream = httpURLConnection.getOutputStream();
                outputStream.write(string.getBytes());
                outputStream.flush();
                outputStream.close();
                InputStream inputStream = httpURLConnection.getInputStream();
                SAXParser sAXParserNewSAXParser = SAXParserFactory.newInstance().newSAXParser();
                ResponseParser responseParser = new ResponseParser();
                sAXParserNewSAXParser.parse(inputStream, responseParser);
                inputStream.close();
                MethodResponse methodResponse = responseParser.getMethodResponse();
                if (methodResponse.getFault() != null) {
                    throw new MySQLFabricException(methodResponse.getFault());
                }
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return methodResponse;
            } catch (Throwable th) {
                th = th;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            httpURLConnection = null;
        }
    }
}
