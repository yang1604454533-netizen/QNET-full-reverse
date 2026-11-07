package com.mysql.fabric.proto.xmlrpc;

import com.mysql.fabric.FabricCommunicationException;
import java.io.IOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AuthenticatedXmlRpcMethodCaller implements XmlRpcMethodCaller {
    private String password;
    private XmlRpcMethodCaller underlyingCaller;
    private String url;
    private String username;

    public AuthenticatedXmlRpcMethodCaller(XmlRpcMethodCaller xmlRpcMethodCaller, String str, String str2, String str3) {
        this.underlyingCaller = xmlRpcMethodCaller;
        this.url = str;
        this.username = str2;
        this.password = str3;
    }

    @Override // com.mysql.fabric.proto.xmlrpc.XmlRpcMethodCaller
    public void setHeader(String str, String str2) {
        this.underlyingCaller.setHeader(str, str2);
    }

    @Override // com.mysql.fabric.proto.xmlrpc.XmlRpcMethodCaller
    public void clearHeader(String str) {
        this.underlyingCaller.clearHeader(str);
    }

    @Override // com.mysql.fabric.proto.xmlrpc.XmlRpcMethodCaller
    public List<?> call(String str, Object[] objArr) throws FabricCommunicationException {
        try {
            this.underlyingCaller.setHeader("Authorization", DigestAuthentication.generateAuthorizationHeader(DigestAuthentication.parseDigestChallenge(DigestAuthentication.getChallengeHeader(this.url)), this.username, this.password));
            return this.underlyingCaller.call(str, objArr);
        } catch (IOException e) {
            throw new FabricCommunicationException("Unable to obtain challenge header for authentication", e);
        }
    }
}
