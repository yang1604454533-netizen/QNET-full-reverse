package com.tencent.qnet.ui.login.model;

/* JADX INFO: loaded from: classes.dex */
public class CookieInfo {
    private String cstfToken;
    private String sessionId;

    public String getCstfToken() {
        return this.cstfToken;
    }

    public void setCstfToken(String str) {
        this.cstfToken = str;
    }

    public String getSessionId() {
        return this.sessionId;
    }

    public void setSessionId(String str) {
        this.sessionId = str;
    }

    public boolean hasCookie() {
        return (this.sessionId == null || this.sessionId.equals("")) ? false : true;
    }

    public String getLoginCookie() {
        return this.sessionId != null ? this.sessionId : "";
    }
}
