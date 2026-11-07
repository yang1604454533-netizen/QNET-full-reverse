package com.mysql.jdbc.log;

import com.mysql.jdbc.profiler.ProfilerEvent;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public class Jdk14Logger implements Log {
    private static final Level DEBUG = Level.FINE;
    private static final Level ERROR = Level.SEVERE;
    private static final Level FATAL = Level.SEVERE;
    private static final Level INFO = Level.INFO;
    private static final Level TRACE = Level.FINEST;
    private static final Level WARN = Level.WARNING;
    protected Logger jdkLogger;

    public Jdk14Logger(String str) {
        this.jdkLogger = null;
        this.jdkLogger = Logger.getLogger(str);
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isDebugEnabled() {
        return this.jdkLogger.isLoggable(Level.FINE);
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isErrorEnabled() {
        return this.jdkLogger.isLoggable(Level.SEVERE);
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isFatalEnabled() {
        return this.jdkLogger.isLoggable(Level.SEVERE);
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isInfoEnabled() {
        return this.jdkLogger.isLoggable(Level.INFO);
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isTraceEnabled() {
        return this.jdkLogger.isLoggable(Level.FINEST);
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isWarnEnabled() {
        return this.jdkLogger.isLoggable(Level.WARNING);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logDebug(Object obj) {
        logInternal(DEBUG, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logDebug(Object obj, Throwable th) {
        logInternal(DEBUG, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logError(Object obj) {
        logInternal(ERROR, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logError(Object obj, Throwable th) {
        logInternal(ERROR, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logFatal(Object obj) {
        logInternal(FATAL, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logFatal(Object obj, Throwable th) {
        logInternal(FATAL, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logInfo(Object obj) {
        logInternal(INFO, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logInfo(Object obj, Throwable th) {
        logInternal(INFO, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logTrace(Object obj) {
        logInternal(TRACE, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logTrace(Object obj, Throwable th) {
        logInternal(TRACE, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logWarn(Object obj) {
        logInternal(WARN, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logWarn(Object obj, Throwable th) {
        logInternal(WARN, obj, th);
    }

    private static final int findCallerStackDepth(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        for (int i = 0; i < length; i++) {
            String className = stackTraceElementArr[i].getClassName();
            if (!className.startsWith("com.mysql.jdbc") || className.startsWith("com.mysql.jdbc.compliance")) {
                return i;
            }
        }
        return 0;
    }

    private void logInternal(Level level, Object obj, Throwable th) {
        String strValueOf;
        if (this.jdkLogger.isLoggable(level)) {
            String methodName = "N/A";
            String str = "N/A";
            if (obj instanceof ProfilerEvent) {
                strValueOf = LogUtils.expandProfilerEventIfNecessary(obj).toString();
            } else {
                StackTraceElement[] stackTrace = new Throwable().getStackTrace();
                int iFindCallerStackDepth = findCallerStackDepth(stackTrace);
                if (iFindCallerStackDepth != 0) {
                    String className = stackTrace[iFindCallerStackDepth].getClassName();
                    str = className;
                    methodName = stackTrace[iFindCallerStackDepth].getMethodName();
                }
                strValueOf = String.valueOf(obj);
            }
            String str2 = strValueOf;
            String str3 = methodName;
            String str4 = str;
            if (th == null) {
                this.jdkLogger.logp(level, str4, str3, str2);
            } else {
                this.jdkLogger.logp(level, str4, str3, str2, th);
            }
        }
    }
}
