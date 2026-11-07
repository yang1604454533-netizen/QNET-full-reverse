package com.tencent.qnet.global;

/* JADX INFO: loaded from: classes.dex */
public class QnetGlobalDefine {

    public enum QNET_HTTP_RESP_TYPE {
        HTTP_RESP_SUCCESS,
        HTTP_RESP_TIMEOUT,
        HTTP_RESP_UNDEFINED
    }

    public enum QnetMessageType {
        MS_VERSION_UPDATE,
        MS_VERSION_VERIFY_TIMEOUT,
        MS_HTTP_REQUEST_ERR,
        MS_NET_PROPOSAL_LOADED,
        MS_NET_PROPOSAL_LOAD_FAILED
    }

    public enum VERSION_UPDATE {
        VERSION_NEED_UPDATE,
        VERSION_UPDATE_COMPLETE,
        LATEST_VERSION
    }
}
