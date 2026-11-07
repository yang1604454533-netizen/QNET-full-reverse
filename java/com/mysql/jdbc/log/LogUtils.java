package com.mysql.jdbc.log;

import com.mysql.jdbc.Util;
import com.mysql.jdbc.profiler.ProfilerEvent;

/* JADX INFO: loaded from: classes.dex */
public class LogUtils {
    public static final String CALLER_INFORMATION_NOT_AVAILABLE = "Caller information not available";
    private static final String LINE_SEPARATOR = System.getProperty("line.separator");
    private static final int LINE_SEPARATOR_LENGTH = LINE_SEPARATOR.length();

    public static Object expandProfilerEventIfNecessary(Object obj) {
        if (!(obj instanceof ProfilerEvent)) {
            return obj;
        }
        StringBuilder sb = new StringBuilder();
        ProfilerEvent profilerEvent = (ProfilerEvent) obj;
        String eventCreationPointAsString = profilerEvent.getEventCreationPointAsString();
        if (eventCreationPointAsString == null) {
            eventCreationPointAsString = Util.stackTraceToString(new Throwable());
        }
        sb.append("Profiler Event: [");
        switch (profilerEvent.getEventType()) {
            case 0:
                sb.append("WARN");
                break;
            case 1:
                sb.append("CONSTRUCT");
                break;
            case 2:
                sb.append("PREPARE");
                break;
            case 3:
                sb.append("QUERY");
                break;
            case 4:
                sb.append("EXECUTE");
                break;
            case 5:
                sb.append("FETCH");
                break;
            case 6:
                sb.append("SLOW QUERY");
                break;
            default:
                sb.append("UNKNOWN");
                break;
        }
        sb.append("] ");
        sb.append(eventCreationPointAsString);
        sb.append(" duration: ");
        sb.append(profilerEvent.getEventDuration());
        sb.append(" ");
        sb.append(profilerEvent.getDurationUnits());
        sb.append(", connection-id: ");
        sb.append(profilerEvent.getConnectionId());
        sb.append(", statement-id: ");
        sb.append(profilerEvent.getStatementId());
        sb.append(", resultset-id: ");
        sb.append(profilerEvent.getResultSetId());
        String message = profilerEvent.getMessage();
        if (message != null) {
            sb.append(", message: ");
            sb.append(message);
        }
        return sb;
    }

    public static String findCallingClassAndMethod(Throwable th) {
        int iIndexOf;
        String strStackTraceToString = Util.stackTraceToString(th);
        String strSubstring = CALLER_INFORMATION_NOT_AVAILABLE;
        int iLastIndexOf = strStackTraceToString.lastIndexOf("com.mysql.jdbc");
        if (iLastIndexOf != -1) {
            int iIndexOf2 = strStackTraceToString.indexOf("com.mysql.jdbc.compliance", iLastIndexOf);
            if (iIndexOf2 != -1) {
                iIndexOf = iIndexOf2 - LINE_SEPARATOR_LENGTH;
            } else {
                iIndexOf = strStackTraceToString.indexOf(LINE_SEPARATOR, iLastIndexOf);
            }
            if (iIndexOf != -1) {
                int iIndexOf3 = strStackTraceToString.indexOf(LINE_SEPARATOR, LINE_SEPARATOR_LENGTH + iIndexOf);
                if (iIndexOf3 != -1) {
                    strSubstring = strStackTraceToString.substring(iIndexOf + LINE_SEPARATOR_LENGTH, iIndexOf3);
                } else {
                    strSubstring = strStackTraceToString.substring(iIndexOf + LINE_SEPARATOR_LENGTH);
                }
            }
        }
        if (strSubstring.startsWith("\tat ") || strSubstring.startsWith("at ")) {
            return strSubstring;
        }
        return "at " + strSubstring;
    }
}
