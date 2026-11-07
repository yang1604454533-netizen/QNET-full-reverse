package com.mysql.fabric.proto.xmlrpc;

import com.mysql.fabric.FabricCommunicationException;
import com.mysql.fabric.xmlrpc.Client;
import com.mysql.fabric.xmlrpc.base.Array;
import com.mysql.fabric.xmlrpc.base.Member;
import com.mysql.fabric.xmlrpc.base.MethodCall;
import com.mysql.fabric.xmlrpc.base.Param;
import com.mysql.fabric.xmlrpc.base.Params;
import com.mysql.fabric.xmlrpc.base.Struct;
import com.mysql.fabric.xmlrpc.base.Value;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class InternalXmlRpcMethodCaller implements XmlRpcMethodCaller {
    private Client xmlRpcClient;

    public InternalXmlRpcMethodCaller(String str) throws FabricCommunicationException {
        try {
            this.xmlRpcClient = new Client(str);
        } catch (MalformedURLException e) {
            throw new FabricCommunicationException(e);
        }
    }

    private Object unwrapValue(Value value) {
        if (value.getType() == 8) {
            return methodResponseArrayToList((Array) value.getValue());
        }
        if (value.getType() == 7) {
            HashMap map = new HashMap();
            for (Member member : ((Struct) value.getValue()).getMember()) {
                map.put(member.getName(), unwrapValue(member.getValue()));
            }
            return map;
        }
        return value.getValue();
    }

    private List<Object> methodResponseArrayToList(Array array) {
        ArrayList arrayList = new ArrayList();
        Iterator<Value> it = array.getData().getValue().iterator();
        while (it.hasNext()) {
            arrayList.add(unwrapValue(it.next()));
        }
        return arrayList;
    }

    @Override // com.mysql.fabric.proto.xmlrpc.XmlRpcMethodCaller
    public void setHeader(String str, String str2) {
        this.xmlRpcClient.setHeader(str, str2);
    }

    @Override // com.mysql.fabric.proto.xmlrpc.XmlRpcMethodCaller
    public void clearHeader(String str) {
        this.xmlRpcClient.clearHeader(str);
    }

    @Override // com.mysql.fabric.proto.xmlrpc.XmlRpcMethodCaller
    public List<Object> call(String str, Object[] objArr) throws FabricCommunicationException {
        MethodCall methodCall = new MethodCall();
        Params params = new Params();
        if (objArr == null) {
            objArr = new Object[0];
        }
        for (int i = 0; i < objArr.length; i++) {
            if (objArr[i] == null) {
                throw new NullPointerException("nil args unsupported");
            }
            if (String.class.isAssignableFrom(objArr[i].getClass())) {
                params.addParam(new Param(new Value((String) objArr[i])));
            } else if (Double.class.isAssignableFrom(objArr[i].getClass())) {
                params.addParam(new Param(new Value(((Double) objArr[i]).doubleValue())));
            } else if (Integer.class.isAssignableFrom(objArr[i].getClass())) {
                params.addParam(new Param(new Value(((Integer) objArr[i]).intValue())));
            } else {
                throw new IllegalArgumentException("Unknown argument type: " + objArr[i].getClass());
            }
        }
        methodCall.setMethodName(str);
        methodCall.setParams(params);
        try {
            return methodResponseArrayToList((Array) this.xmlRpcClient.execute(methodCall).getParams().getParam().get(0).getValue().getValue());
        } catch (Exception e) {
            throw new FabricCommunicationException("Error during call to `" + str + "' (args=" + Arrays.toString(objArr) + ")", e);
        }
    }
}
