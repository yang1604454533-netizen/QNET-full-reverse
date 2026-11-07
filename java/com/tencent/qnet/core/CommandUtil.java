package com.tencent.qnet.core;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class CommandUtil {
    public static final String COMMAND_EXIT = "exit\n";
    public static final String COMMAND_LINE_END = "\n";
    public static final String COMMAND_SH = "sh";
    private static List<String> m_results = new ArrayList();

    private static void debug(String str) {
    }

    public static List<String> execute(String str) {
        return execute(new String[]{str});
    }

    /* JADX WARN: Code duplicated, block: B:101:0x015e A[Catch: IOException -> 0x0155, TRY_LEAVE, TryCatch #7 {IOException -> 0x0155, blocks: (B:95:0x0151, B:99:0x0159, B:101:0x015e), top: B:130:0x0151 }] */
    /* JADX WARN: Code duplicated, block: B:115:0x018d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x018f A[Catch: IOException -> 0x018b, TryCatch #12 {IOException -> 0x018b, blocks: (B:112:0x0187, B:116:0x018f, B:118:0x0194), top: B:136:0x0187 }] */
    /* JADX WARN: Code duplicated, block: B:118:0x0194 A[Catch: IOException -> 0x018b, TRY_LEAVE, TryCatch #12 {IOException -> 0x018b, blocks: (B:112:0x0187, B:116:0x018f, B:118:0x0194), top: B:136:0x0187 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x019d  */
    /* JADX WARN: Code duplicated, block: B:130:0x0151 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:134:0x012c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:136:0x0187 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0132 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x0134 A[Catch: IOException -> 0x0130, TryCatch #9 {IOException -> 0x0130, blocks: (B:78:0x012c, B:82:0x0134, B:84:0x0139), top: B:134:0x012c }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0139 A[Catch: IOException -> 0x0130, TRY_LEAVE, TryCatch #9 {IOException -> 0x0130, blocks: (B:78:0x012c, B:82:0x0134, B:84:0x0139), top: B:134:0x012c }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0142 A[PHI: r0 r2 r3 r4 r5 r6
  0x0142: PHI (r0v10 java.io.DataOutputStream) = (r0v8 java.io.DataOutputStream), (r0v11 java.io.DataOutputStream) binds: [B:87:0x0140, B:104:0x0165] A[DONT_GENERATE, DONT_INLINE]
  0x0142: PHI (r2v10 java.lang.StringBuilder) = (r2v8 java.lang.StringBuilder), (r2v11 java.lang.StringBuilder) binds: [B:87:0x0140, B:104:0x0165] A[DONT_GENERATE, DONT_INLINE]
  0x0142: PHI (r3v13 java.lang.Process) = (r3v11 java.lang.Process), (r3v14 java.lang.Process) binds: [B:87:0x0140, B:104:0x0165] A[DONT_GENERATE, DONT_INLINE]
  0x0142: PHI (r4v9 int) = (r4v7 int), (r4v10 int) binds: [B:87:0x0140, B:104:0x0165] A[DONT_GENERATE, DONT_INLINE]
  0x0142: PHI (r5v10 java.io.BufferedReader) = (r5v8 java.io.BufferedReader), (r5v11 java.io.BufferedReader) binds: [B:87:0x0140, B:104:0x0165] A[DONT_GENERATE, DONT_INLINE]
  0x0142: PHI (r6v10 java.io.BufferedReader) = (r6v8 java.io.BufferedReader), (r6v11 java.io.BufferedReader) binds: [B:87:0x0140, B:104:0x0165] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:98:0x0157 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x0159 A[Catch: IOException -> 0x0155, TryCatch #7 {IOException -> 0x0155, blocks: (B:95:0x0151, B:99:0x0159, B:101:0x015e), top: B:130:0x0151 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v37 */
    /* JADX WARN: Type inference failed for: r6v6, types: [java.io.BufferedReader] */
    public static List<String> execute(String[] strArr) throws Throwable {
        Process processExec;
        DataOutputStream dataOutputStream;
        StringBuilder sb;
        BufferedReader bufferedReader;
        ?? r6;
        BufferedReader bufferedReader2;
        BufferedReader bufferedReader3;
        int iWaitFor;
        BufferedReader bufferedReader4;
        BufferedReader bufferedReader5;
        BufferedReader bufferedReader6;
        m_results.clear();
        DataOutputStream dataOutputStream2 = null;
        bufferedReader = null;
        dataOutputStream2 = null;
        dataOutputStream2 = null;
        BufferedReader bufferedReader7 = null;
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        debug("execute command start : " + strArr);
        try {
            try {
                processExec = Runtime.getRuntime().exec(COMMAND_SH);
                try {
                    dataOutputStream = new DataOutputStream(processExec.getOutputStream());
                    try {
                        try {
                            for (String str : strArr) {
                                if (str != null) {
                                    dataOutputStream.write(str.getBytes());
                                    dataOutputStream.writeBytes(COMMAND_LINE_END);
                                    dataOutputStream.flush();
                                }
                            }
                            dataOutputStream.writeBytes(COMMAND_EXIT);
                            dataOutputStream.flush();
                            iWaitFor = processExec.waitFor();
                            try {
                                sb = new StringBuilder();
                                try {
                                    bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
                                    try {
                                        bufferedReader4 = new BufferedReader(new InputStreamReader(processExec.getErrorStream()));
                                        while (true) {
                                            try {
                                                String line = bufferedReader.readLine();
                                                if (line == null) {
                                                    break;
                                                }
                                                m_results.add(line);
                                                debug(" command line item : " + line);
                                            } catch (IOException e) {
                                                e = e;
                                                bufferedReader6 = bufferedReader4;
                                                dataOutputStream2 = dataOutputStream;
                                                bufferedReader4 = bufferedReader6;
                                                e.printStackTrace();
                                                if (dataOutputStream2 != null) {
                                                    try {
                                                        dataOutputStream2.close();
                                                        if (bufferedReader != null) {
                                                            bufferedReader.close();
                                                        }
                                                        if (bufferedReader4 != null) {
                                                            bufferedReader4.close();
                                                        }
                                                    } catch (IOException e2) {
                                                        e2.printStackTrace();
                                                        if (processExec != null) {
                                                            processExec.destroy();
                                                        }
                                                        debug(String.format(Locale.CHINA, "execute command end,errorMsg:%s,and status %d: ", sb, Integer.valueOf(iWaitFor)));
                                                        return m_results;
                                                    }
                                                } else {
                                                    if (bufferedReader != null) {
                                                        bufferedReader.close();
                                                    }
                                                    if (bufferedReader4 != null) {
                                                        bufferedReader4.close();
                                                    }
                                                }
                                                if (processExec != null) {
                                                    processExec.destroy();
                                                }
                                            } catch (Exception e3) {
                                                e = e3;
                                                bufferedReader5 = bufferedReader4;
                                                dataOutputStream2 = dataOutputStream;
                                                bufferedReader4 = bufferedReader5;
                                                e.printStackTrace();
                                                if (dataOutputStream2 != null) {
                                                    try {
                                                        dataOutputStream2.close();
                                                        if (bufferedReader != null) {
                                                            bufferedReader.close();
                                                        }
                                                        if (bufferedReader4 != null) {
                                                            bufferedReader4.close();
                                                        }
                                                    } catch (IOException e4) {
                                                        e4.printStackTrace();
                                                        if (processExec != null) {
                                                            processExec.destroy();
                                                        }
                                                        debug(String.format(Locale.CHINA, "execute command end,errorMsg:%s,and status %d: ", sb, Integer.valueOf(iWaitFor)));
                                                        return m_results;
                                                    }
                                                } else {
                                                    if (bufferedReader != null) {
                                                        bufferedReader.close();
                                                    }
                                                    if (bufferedReader4 != null) {
                                                        bufferedReader4.close();
                                                    }
                                                }
                                                if (processExec != null) {
                                                    processExec.destroy();
                                                }
                                            } catch (Throwable th) {
                                                th = th;
                                                bufferedReader7 = bufferedReader;
                                                r6 = bufferedReader4;
                                                if (dataOutputStream != null) {
                                                    try {
                                                        dataOutputStream.close();
                                                        if (bufferedReader7 != null) {
                                                            bufferedReader7.close();
                                                        }
                                                        if (r6 != 0) {
                                                            r6.close();
                                                        }
                                                    } catch (IOException e5) {
                                                        e5.printStackTrace();
                                                        if (processExec != null) {
                                                            throw th;
                                                        }
                                                        processExec.destroy();
                                                        throw th;
                                                    }
                                                } else {
                                                    if (bufferedReader7 != null) {
                                                        bufferedReader7.close();
                                                    }
                                                    if (r6 != 0) {
                                                        r6.close();
                                                    }
                                                }
                                                if (processExec != null) {
                                                    throw th;
                                                }
                                                processExec.destroy();
                                                throw th;
                                            }
                                        }
                                        while (true) {
                                            String line2 = bufferedReader4.readLine();
                                            if (line2 != null) {
                                                sb.append(line2);
                                            } else {
                                                try {
                                                    break;
                                                } catch (IOException e6) {
                                                    e6.printStackTrace();
                                                }
                                            }
                                        }
                                        dataOutputStream.close();
                                        bufferedReader.close();
                                        bufferedReader4.close();
                                        if (processExec != null) {
                                            processExec.destroy();
                                        }
                                        iWaitFor = iWaitFor;
                                    } catch (IOException e7) {
                                        e = e7;
                                        bufferedReader6 = null;
                                    } catch (Exception e8) {
                                        e = e8;
                                        bufferedReader5 = null;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        bufferedReader4 = null;
                                    }
                                } catch (IOException e9) {
                                    bufferedReader4 = null;
                                    dataOutputStream2 = dataOutputStream;
                                    iWaitFor = iWaitFor;
                                    e = e9;
                                    bufferedReader = null;
                                } catch (Exception e10) {
                                    bufferedReader4 = null;
                                    dataOutputStream2 = dataOutputStream;
                                    iWaitFor = iWaitFor;
                                    e = e10;
                                    bufferedReader = null;
                                }
                            } catch (IOException e11) {
                                bufferedReader = null;
                                bufferedReader4 = null;
                                dataOutputStream2 = dataOutputStream;
                                iWaitFor = iWaitFor;
                                e = e11;
                                sb = null;
                            } catch (Exception e12) {
                                bufferedReader = null;
                                bufferedReader4 = null;
                                dataOutputStream2 = dataOutputStream;
                                iWaitFor = iWaitFor;
                                e = e12;
                                sb = null;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            r6 = 0;
                            if (dataOutputStream != null) {
                                dataOutputStream.close();
                                if (bufferedReader7 != null) {
                                    bufferedReader7.close();
                                }
                                if (r6 != 0) {
                                    r6.close();
                                }
                            } else {
                                if (bufferedReader7 != null) {
                                    bufferedReader7.close();
                                }
                                if (r6 != 0) {
                                    r6.close();
                                }
                            }
                            if (processExec != null) {
                                throw th;
                            }
                            processExec.destroy();
                            throw th;
                        }
                    } catch (IOException e13) {
                        e = e13;
                        sb = null;
                        bufferedReader = null;
                        bufferedReader3 = null;
                        dataOutputStream2 = dataOutputStream;
                        iWaitFor = -1;
                        bufferedReader4 = bufferedReader3;
                        e.printStackTrace();
                        if (dataOutputStream2 != null) {
                            dataOutputStream2.close();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (bufferedReader4 != null) {
                                bufferedReader4.close();
                            }
                        } else {
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (bufferedReader4 != null) {
                                bufferedReader4.close();
                            }
                        }
                        if (processExec != null) {
                            processExec.destroy();
                        }
                        debug(String.format(Locale.CHINA, "execute command end,errorMsg:%s,and status %d: ", sb, Integer.valueOf(iWaitFor)));
                        return m_results;
                    } catch (Exception e14) {
                        e = e14;
                        sb = null;
                        bufferedReader = null;
                        bufferedReader2 = null;
                        dataOutputStream2 = dataOutputStream;
                        iWaitFor = -1;
                        bufferedReader4 = bufferedReader2;
                        e.printStackTrace();
                        if (dataOutputStream2 != null) {
                            dataOutputStream2.close();
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (bufferedReader4 != null) {
                                bufferedReader4.close();
                            }
                        } else {
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                            if (bufferedReader4 != null) {
                                bufferedReader4.close();
                            }
                        }
                        if (processExec != null) {
                            processExec.destroy();
                        }
                        debug(String.format(Locale.CHINA, "execute command end,errorMsg:%s,and status %d: ", sb, Integer.valueOf(iWaitFor)));
                        return m_results;
                    }
                } catch (IOException e15) {
                    e = e15;
                    sb = null;
                    bufferedReader = null;
                    bufferedReader3 = bufferedReader;
                    iWaitFor = -1;
                    bufferedReader4 = bufferedReader3;
                    e.printStackTrace();
                    if (dataOutputStream2 != null) {
                        dataOutputStream2.close();
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        if (bufferedReader4 != null) {
                            bufferedReader4.close();
                        }
                    } else {
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        if (bufferedReader4 != null) {
                            bufferedReader4.close();
                        }
                    }
                    if (processExec != null) {
                        processExec.destroy();
                    }
                    debug(String.format(Locale.CHINA, "execute command end,errorMsg:%s,and status %d: ", sb, Integer.valueOf(iWaitFor)));
                    return m_results;
                } catch (Exception e16) {
                    e = e16;
                    sb = null;
                    bufferedReader = null;
                    bufferedReader2 = bufferedReader;
                    iWaitFor = -1;
                    bufferedReader4 = bufferedReader2;
                    e.printStackTrace();
                    if (dataOutputStream2 != null) {
                        dataOutputStream2.close();
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        if (bufferedReader4 != null) {
                            bufferedReader4.close();
                        }
                    } else {
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        if (bufferedReader4 != null) {
                            bufferedReader4.close();
                        }
                    }
                    if (processExec != null) {
                        processExec.destroy();
                    }
                    debug(String.format(Locale.CHINA, "execute command end,errorMsg:%s,and status %d: ", sb, Integer.valueOf(iWaitFor)));
                    return m_results;
                } catch (Throwable th4) {
                    th = th4;
                    dataOutputStream = null;
                    r6 = dataOutputStream;
                    if (dataOutputStream != null) {
                        dataOutputStream.close();
                        if (bufferedReader7 != null) {
                            bufferedReader7.close();
                        }
                        if (r6 != 0) {
                            r6.close();
                        }
                    } else {
                        if (bufferedReader7 != null) {
                            bufferedReader7.close();
                        }
                        if (r6 != 0) {
                            r6.close();
                        }
                    }
                    if (processExec != null) {
                        throw th;
                    }
                    processExec.destroy();
                    throw th;
                }
            } catch (Throwable th5) {
                th = th5;
                dataOutputStream = dataOutputStream2;
            }
        } catch (IOException e17) {
            e = e17;
            sb = null;
            processExec = null;
            bufferedReader = null;
        } catch (Exception e18) {
            e = e18;
            sb = null;
            processExec = null;
            bufferedReader = null;
        } catch (Throwable th6) {
            th = th6;
            processExec = null;
            dataOutputStream = null;
        }
        debug(String.format(Locale.CHINA, "execute command end,errorMsg:%s,and status %d: ", sb, Integer.valueOf(iWaitFor)));
        return m_results;
    }

    public static int GetPingTime(String str) {
        List<String> listExecute = execute(String.format("/system/bin/ping -c 5 %s", str));
        if (listExecute.size() <= 0) {
            return -1;
        }
        ArrayList arrayList = new ArrayList();
        for (String str2 : listExecute) {
            int iIndexOf = str2.indexOf("time=");
            if (iIndexOf > 0) {
                int length = iIndexOf + "time=".length();
                int iLastIndexOf = str2.lastIndexOf(" ms");
                if (iLastIndexOf == str2.length() - 3) {
                    try {
                        arrayList.add(Float.valueOf(Float.parseFloat(str2.substring(length, iLastIndexOf))));
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        if (arrayList.size() <= 0) {
            return -1;
        }
        Object[] array = arrayList.toArray();
        Arrays.sort(array);
        return (int) ((Float) array[array.length / 2]).floatValue();
    }
}
