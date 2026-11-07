package com.tencent.qnet.ui.login.model;

/* JADX INFO: loaded from: classes.dex */
public class ConnInfo {
    private int code;
    private String codeDescription;
    private int extendData;
    private String result;
    private boolean success;

    public String getResult() {
        return this.result;
    }

    public void setResult(String str) {
        this.result = str;
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int i) {
        this.code = i;
    }

    public String getCodeDescription() {
        return this.codeDescription;
    }

    public void setCodeDescription(String str) {
        this.codeDescription = str;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setSuccess(boolean z) {
        this.success = z;
    }

    public void setExtendData(int i) {
        this.extendData = i;
    }

    public int getExtendData() {
        return this.extendData;
    }
}
