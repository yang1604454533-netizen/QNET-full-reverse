package com.mysql.jdbc.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes.dex */
public class Slf4JLogger implements Log {
    private Logger log;

    public Slf4JLogger(String str) {
        this.log = LoggerFactory.getLogger(str);
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isDebugEnabled() {
        return this.log.isDebugEnabled();
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isErrorEnabled() {
        return this.log.isErrorEnabled();
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isFatalEnabled() {
        return this.log.isErrorEnabled();
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isInfoEnabled() {
        return this.log.isInfoEnabled();
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isTraceEnabled() {
        return this.log.isTraceEnabled();
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isWarnEnabled() {
        return this.log.isWarnEnabled();
    }

    @Override // com.mysql.jdbc.log.Log
    public void logDebug(Object obj) {
        this.log.debug(obj.toString());
    }

    @Override // com.mysql.jdbc.log.Log
    public void logDebug(Object obj, Throwable th) {
        this.log.debug(obj.toString(), th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logError(Object obj) {
        this.log.error(obj.toString());
    }

    @Override // com.mysql.jdbc.log.Log
    public void logError(Object obj, Throwable th) {
        this.log.error(obj.toString(), th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logFatal(Object obj) {
        this.log.error(obj.toString());
    }

    @Override // com.mysql.jdbc.log.Log
    public void logFatal(Object obj, Throwable th) {
        this.log.error(obj.toString(), th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logInfo(Object obj) {
        this.log.info(obj.toString());
    }

    @Override // com.mysql.jdbc.log.Log
    public void logInfo(Object obj, Throwable th) {
        this.log.info(obj.toString(), th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logTrace(Object obj) {
        this.log.trace(obj.toString());
    }

    @Override // com.mysql.jdbc.log.Log
    public void logTrace(Object obj, Throwable th) {
        this.log.trace(obj.toString(), th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logWarn(Object obj) {
        this.log.warn(obj.toString());
    }

    @Override // com.mysql.jdbc.log.Log
    public void logWarn(Object obj, Throwable th) {
        this.log.warn(obj.toString(), th);
    }
}
