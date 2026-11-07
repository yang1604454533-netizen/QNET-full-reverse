package com.mysql.jdbc.log;

import com.mysql.jdbc.Util;
import com.mysql.jdbc.profiler.ProfilerEvent;
import com.tencent.qnet.core.CommandUtil;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class StandardLogger implements Log {
    private static final int DEBUG = 4;
    private static final int ERROR = 1;
    private static final int FATAL = 0;
    private static final int INFO = 3;
    private static final int TRACE = 5;
    private static final int WARN = 2;
    private static StringBuffer bufferedLog;
    private boolean logLocationInfo;

    @Override // com.mysql.jdbc.log.Log
    public boolean isDebugEnabled() {
        return true;
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isErrorEnabled() {
        return true;
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isFatalEnabled() {
        return true;
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isInfoEnabled() {
        return true;
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isTraceEnabled() {
        return true;
    }

    @Override // com.mysql.jdbc.log.Log
    public boolean isWarnEnabled() {
        return true;
    }

    public StandardLogger(String str) {
        this(str, false);
    }

    public StandardLogger(String str, boolean z) {
        this.logLocationInfo = true;
        this.logLocationInfo = z;
    }

    public static void startLoggingToBuffer() {
        bufferedLog = new StringBuffer();
    }

    public static void dropBuffer() {
        bufferedLog = null;
    }

    public static Appendable getBuffer() {
        return bufferedLog;
    }

    @Override // com.mysql.jdbc.log.Log
    public void logDebug(Object obj) {
        logInternal(4, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logDebug(Object obj, Throwable th) {
        logInternal(4, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logError(Object obj) {
        logInternal(1, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logError(Object obj, Throwable th) {
        logInternal(1, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logFatal(Object obj) {
        logInternal(0, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logFatal(Object obj, Throwable th) {
        logInternal(0, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logInfo(Object obj) {
        logInternal(3, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logInfo(Object obj, Throwable th) {
        logInternal(3, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logTrace(Object obj) {
        logInternal(5, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logTrace(Object obj, Throwable th) {
        logInternal(5, obj, th);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logWarn(Object obj) {
        logInternal(2, obj, null);
    }

    @Override // com.mysql.jdbc.log.Log
    public void logWarn(Object obj, Throwable th) {
        logInternal(2, obj, th);
    }

    protected void logInternal(int i, Object obj, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(new Date().toString());
        sb.append(" ");
        switch (i) {
            case 0:
                sb.append("FATAL: ");
                break;
            case 1:
                sb.append("ERROR: ");
                break;
            case 2:
                sb.append("WARN: ");
                break;
            case 3:
                sb.append("INFO: ");
                break;
            case 4:
                sb.append("DEBUG: ");
                break;
            case 5:
                sb.append("TRACE: ");
                break;
        }
        if (obj instanceof ProfilerEvent) {
            sb.append(LogUtils.expandProfilerEventIfNecessary(obj));
        } else {
            if (this.logLocationInfo && i != 5) {
                sb.append(LogUtils.findCallingClassAndMethod(new Throwable()));
                sb.append(" ");
            }
            if (obj != null) {
                sb.append(String.valueOf(obj));
            }
        }
        if (th != null) {
            sb.append(CommandUtil.COMMAND_LINE_END);
            sb.append(CommandUtil.COMMAND_LINE_END);
            sb.append("EXCEPTION STACK TRACE:");
            sb.append(CommandUtil.COMMAND_LINE_END);
            sb.append(CommandUtil.COMMAND_LINE_END);
            sb.append(Util.stackTraceToString(th));
        }
        String string = sb.toString();
        System.err.println(string);
        if (bufferedLog != null) {
            bufferedLog.append(string);
        }
    }
}
