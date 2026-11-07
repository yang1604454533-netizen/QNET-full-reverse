package com.mysql.fabric.proto.xmlrpc;

import com.mysql.fabric.FabricCommunicationException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface XmlRpcMethodCaller {
    List<?> call(String str, Object[] objArr) throws FabricCommunicationException;

    void clearHeader(String str);

    void setHeader(String str, String str2);
}
