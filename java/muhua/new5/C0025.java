package muhua.new5;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.security.Key;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: muhua.new5.ًًٌٍٍٍَُُِِّّْْٟٕٟٖٕٖٟٟٕٟٙ٘ٔ٘٘ٙٗٓٞٓٗ٘ٚٝٚ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0025 {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f7short = {2580, 3044};

    /* JADX INFO: renamed from: ̗̙̙̖̗, reason: not valid java name and contains not printable characters */
    public static boolean f8 = true;

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็, reason: contains not printable characters */
    public static String m179xac050302() {
        if (C0024.m165xf0c433e8() > 0) {
            return "۟ۥۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็, reason: contains not printable characters */
    public static String m180xbaa1ca36() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۧۤۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็, reason: contains not printable characters */
    public static String m181x6af2b736() {
        if (m186() <= 0) {
            return "ۦۤ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็, reason: contains not printable characters */
    public static int m182x20dfbb18(Object obj, int i) {
        if (C0032.m436() >= 0) {
            return C0031.m417(obj, i);
        }
        return 0;
    }

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็, reason: contains not printable characters */
    public static String m183xbe9a6c20() {
        if (m186() <= 0) {
            return "ZH0DKwgH6GCcRvXnO6d9Db7Vj";
        }
        return null;
    }

    /* JADX INFO: renamed from: MHHX⁣⁤⁤⁣⁤⁤⁣, reason: contains not printable characters */
    public static String m184MHHX() {
        if (C0032.m436() >= 0) {
            return "ۡۦۨ";
        }
        return null;
    }

    public static String O() {
        if (C0032.m436() > 0) {
            return "۠ۡۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ̖̗̙, reason: not valid java name and contains not printable characters */
    public static InputStream m185(Object obj, Object obj2) {
        if (m186() < 0) {
            return C0027.m345(obj, obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ̖̙̖̙, reason: not valid java name and contains not printable characters */
    public static int m186() {
        return (-1750704) ^ C0033.m669((Object) "ۣۣۣ");
    }

    /* JADX INFO: renamed from: ̗̙̖̗̙, reason: not valid java name and contains not printable characters */
    public static String m187() {
        if (m186() <= 0) {
            return "ۣۨۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ̗̙̗̗̗, reason: not valid java name and contains not printable characters */
    public static String m188() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۢۨۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ̗̙̙̖, reason: not valid java name and contains not printable characters */
    public static String m189() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۦۢ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ̙̙̙̙, reason: not valid java name and contains not printable characters */
    public static boolean m190(Object obj, Object obj2) {
        if (m186() <= 0) {
            return ((ArrayList) obj).remove(obj2);
        }
        return false;
    }

    /* JADX INFO: renamed from: ًًًًًًًًٍٍٍََُِِّْْْٖٖٖٜٕٖٖٓٚٛٚٓٔٚٛٔٚٝٙٙ, reason: not valid java name and contains not printable characters */
    public static String m191() {
        if (m186() <= 0) {
            return "ۥۣۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًٌٌٌٍَُِّّّْْٟٜٕٖٜٕٜٕٕٖٝٗٙٙٛٚٝٗ٘ٛٗٓٓٙ٘, reason: not valid java name and contains not printable characters */
    public static String m192() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۥۣۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٌٌٍٍَََِِْْْٕٕٜٖٖٖٕٚ٘ٞ٘ٝٚ٘ٙٛٞٚٗٚ٘ٓٔٝٗ, reason: not valid java name and contains not printable characters */
    public static String m193() {
        if (C0033.m706() > 0) {
            return "ۣۣۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٌٍٍََُُِِّّّّّْْٕٜٜٖٕٖٕٟٗٞٙٛٚٗٛٛٚٔٓٚٙ, reason: not valid java name and contains not printable characters */
    public static String m194() {
        if (C0033.m706() >= 0) {
            return "ۨۦۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًًٌٌٍَُُِِِّْٜٕٕٜٟٟٓٙ٘ٓٝٔ٘ٝٔ٘ٝٞٙٚٚٗٔٓٙ, reason: not valid java name and contains not printable characters */
    public static String m195() {
        if (C0033.m706() >= 0) {
            return "ۣۡۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ٌٌٍٍٍٍََََُُِّْٕٟٖٜٜٕٟٖٜٕٟٕٓٙٙٙٔٝٞٛٝٔٙٗٚ, reason: not valid java name and contains not printable characters */
    public static String m196() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۨۢ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٍََََِِّّْْْٕٕٖٟٜٜٟٛٓٞٔٞٓٛٝٚٞٞٞٗٚٛٚ٘ٝ, reason: not valid java name and contains not printable characters */
    public static String m197() {
        if (C0032.m436() >= 0) {
            return "ۡۧۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ٌٌٌٌٌٌٍٍَُُُِِّّْٕٜٕٖٟٟٕٕٚٞٗٝٞٝٚٛٙٚٛٞٚٛٚ, reason: not valid java name and contains not printable characters */
    public static Class m198(Object obj, Object obj2) {
        if (C0033.m706() >= 0) {
            return ((ClassLoader) obj).loadClass((String) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ٌٌٌٍٍَََُُُٕٜٜٕٖٜٗ٘ٔٝٛٗ٘٘٘ٝٓٝٓٝٔٚٞٙٛٓٝٓٓ, reason: not valid java name and contains not printable characters */
    public static String m199() {
        if (m186() <= 0) {
            return "۠ۥ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًٌََُُِِِْْْْٟٟٕٟٖٟٜٕٕٙٝٗٙٚٚٚٔٔٔ٘ٗٗٙٞٞ, reason: not valid java name and contains not printable characters */
    public static int m200(Object obj) {
        if (m186() < 0) {
            return Integer.parseInt((String) obj);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ًًًًٌٌٌُُُُُِّّّْٕٖٖٜٕٗٗٛٙٚٗٔٝٛٞٙٓٝٔٝ٘ٗٓ, reason: not valid java name and contains not printable characters */
    public static Object m201(Object obj, Object obj2) {
        if (C0032.m436() > 0) {
            return C0030.m393(obj, obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٍٍٍٍَُُُِّّْٖٖٕٟٖٕٖٕٕٖٓٗٛٛٗٓٗ٘ٔٗٚٙٗ٘ٚ, reason: not valid java name and contains not printable characters */
    public static String m202() {
        if (C0033.m706() > 0) {
            return "ۨ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٌٌٌٍَََََُِِِِّّْْٕٜٟٟ٘ٓٔٗٔٚٞٛٚٓٞٝ٘ٗٔ, reason: not valid java name and contains not printable characters */
    public static String m203() {
        if (C0033.m706() > 0) {
            return "ۡۥۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٌٌٍٍٍََُُُِِِّّْْٟٟٖٟٟٕٖٜٚٝٙٚٞٚ٘ٔٝٝٝٞ, reason: not valid java name and contains not printable characters */
    public static String m204(Object obj, Object obj2, Object obj3) {
        if (C0032.m436() >= 0) {
            return ((String) obj).replace((CharSequence) obj2, (CharSequence) obj3);
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٌٍٍٍََِِِّّّْٟٕٟٖٟٕٕٜٖٛٔٗٚ٘ٞٝٛٚٓٛٝ٘ٝٓ, reason: not valid java name and contains not printable characters */
    public static ClassLoader m205(Object obj) {
        if (C0033.m706() > 0) {
            return C0031.m414(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًًٍُُُِِِْْٜٜٟٜٜٜٕٗٝ٘ٓٔٔ٘ٚٞٓٙٝٔٙٗٓ٘ٛٞٝ, reason: not valid java name and contains not printable characters */
    public static String m206() {
        if (m186() <= 0) {
            return "۠ۨۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ٌٍَُُّّّْْْٟٟٖٜٜٖٖٕٕٖٖٟٟٓٞ٘ٝٝٓ٘ٙٝٛٞٔ٘ٓٛٚ, reason: not valid java name and contains not printable characters */
    public static String m207() {
        if (C0032.m436() >= 0) {
            return "۟ۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٍََُُِّّْْْْٕٟٕٟٖٟٟٜٜٕٖٜٟٓٙٚٞ٘ٓٚٗٔٓ٘ٛٛ, reason: not valid java name and contains not printable characters */
    public static void m208(Object obj) {
        if (C0032.m436() >= 0) {
            ((IOException) obj).printStackTrace();
        }
    }

    /* JADX INFO: renamed from: ًًٌٌٍٍٍٍٍَُِِِّّْٕٜٖٗٚٔٚٔٙٛٓٗٝٓ٘ٙٙٚٔٞٞٛ٘, reason: not valid java name and contains not printable characters */
    public static Object m209(Object obj) {
        if (C0024.m165xf0c433e8() >= 0) {
            return ((Map.Entry) obj).getValue();
        }
        return null;
    }

    /* JADX INFO: renamed from: ٌٌٌٌٍٍُُِِِّْْْْٕٖٟٟٕٕٜٟٕٙٗٓٞٞٝٙٞٓ٘ٛٞٚٔ٘, reason: not valid java name and contains not printable characters */
    public static String m210() {
        if (C0032.m436() >= 0) {
            return "ۡۦ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٍٍٍَُِِِّّّْٕٟٟٟٖٖٛٛٝٞٗٓ٘ٙٛٓٗٙٚٙٝٞٞٗ٘ٝ, reason: not valid java name and contains not printable characters */
    public static Iterator m211(Object obj) {
        if (C0033.m706() > 0) {
            return C0030.m390(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًٌٌٌٍٍٍٍََُُِّْْْٖٜٖٖٟٕٜٖٟٟٚٞٔٙٗٛٝ٘٘ٞٚ, reason: not valid java name and contains not printable characters */
    public static String m212() {
        if (C0033.m706() > 0) {
            return "ۧۦۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٌٍٍَُِِِِّٖٕٖٟٜٟٜٜٜٟٚٚ٘ٚٗٗٝٚٛٝٔٚٚٞٞ٘ٗ, reason: not valid java name and contains not printable characters */
    public static String m213() {
        if (C0032.m436() > 0) {
            return "ۦۣۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًٌٌٌٍٍٍََِِّْْْٟٖٟٜٜٕٖٟٜٕٗٔٓٔٝٔٛٞٚٙٓٔٝ, reason: not valid java name and contains not printable characters */
    public static byte[] m214(Object obj) {
        if (C0032.m436() > 0) {
            return C0031.m401(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًًًًٌٌٍٍَُِّّْٜٜٜٟٖٟٕ٘ٝٞٔ٘ٛٞ٘ٓٔٚٞٛٛٚٚٛ, reason: not valid java name and contains not printable characters */
    public static void m215() {
        if (C0033.m706() >= 0) {
            application3.muhuaya();
        }
    }

    /* JADX INFO: renamed from: ًًًٌٌٌٌٌٌٍٍََُُِّّّّٕٕٜٟٜٖٟٕٕٟٙٔٝٚٔٛ٘ٛٙ٘, reason: not valid java name and contains not printable characters */
    public static int m216(Object obj) {
        if (C0032.m436() > 0) {
            return obj.hashCode();
        }
        return 0;
    }

    /* JADX INFO: renamed from: ًٌٌٌٍََُُُْْْٕٖٜٜٖٟٟٙٓٝٝٛٚٚٓٛٓٓٙٚٗ٘ٝٚٙٙٓ, reason: not valid java name and contains not printable characters */
    public static String m217() {
        if (C0033.m706() >= 0) {
            return "۟ۢۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ٌٍٍٍٍَََُِِّّّْْٕٜٖٟٜٙٙٞٔٛٛٚٔٔٛٚٛٗٚٝٗٞٔٝ, reason: not valid java name and contains not printable characters */
    public static String m218() {
        if (m186() < 0) {
            return "ۥۦۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًٌٌٌَِْْْٕٟٖٜٟٟٜٚٔٔٙٚٝٛٝٗٛٛٔٓ٘ٙٗٞٗٓٚٝٛ, reason: not valid java name and contains not printable characters */
    public static double m219() {
        if (C0033.m706() >= 0) {
            return Math.random();
        }
        return 0.0d;
    }

    /* JADX INFO: renamed from: ًًًٌٌََََُُّْٟٜٟٟٟٜٛٙٔٛٔٙٝٚٞٓٓٔٝٚٙٛٚٙٛٔٓ, reason: not valid java name and contains not printable characters */
    public static String m220() {
        if (C0032.m436() > 0) {
            return "ۡۧۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٌٌٌٍٍَََََُُِِّْْْْٜٟٕٟٜٟٜ٘ٙٓٝٔٞٚٛٛٗٓ, reason: not valid java name and contains not printable characters */
    public static String m221() {
        if (C0033.m706() > 0) {
            return "ۣۤۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٌٌٍٍَُِِِِّّّٜٖٖٖٖٟٕٟٜ٘ٗٗٛٓٚ٘ٝٙٙ٘ٗٞٚٛ, reason: not valid java name and contains not printable characters */
    public static String m222() {
        if (m186() <= 0) {
            return "۠۠ۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٍٍٍٍََُُِِِِّّّّْٖٕٜٜٖٜٝٞٚٛٛٗٞٚٛٝٞ٘٘ٚ, reason: not valid java name and contains not printable characters */
    public static String m223() {
        if (C0032.m436() >= 0) {
            return "۟ۦ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٍٍٍٍََُِّْْٖٕٟٜٕٜٟٞٞٚٝٔٝ٘ٗٞٞٗٛٗٔٚٙٔٛٛ, reason: not valid java name and contains not printable characters */
    public static String m224(Object obj) {
        if (m186() <= 0) {
            return C0030.m394(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۖۘۖ, reason: not valid java name and contains not printable characters */
    public static String m225() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۣ۠ۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۖۚۛ, reason: not valid java name and contains not printable characters */
    public static int m226() {
        if (m186() < 0) {
            return C0029.m374();
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۖۛۢ, reason: not valid java name and contains not printable characters */
    public static String m227() {
        if (C0033.m706() > 0) {
            return "ۤۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۖ۟ۡ, reason: not valid java name and contains not printable characters */
    public static void m228(Object obj) {
        if (m186() < 0) {
            C0028.m368(obj);
        }
    }

    /* JADX INFO: renamed from: ۖۦۢ, reason: not valid java name and contains not printable characters */
    public static Key m229(Object obj, Object obj2) {
        if (C0024.m165xf0c433e8() >= 0) {
            return application5.m36(obj, obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۗۙۥ, reason: not valid java name and contains not printable characters */
    public static void m230(Object obj, Object obj2) {
        if (m186() <= 0) {
            ((PrintStream) obj).println(obj2);
        }
    }

    /* JADX INFO: renamed from: ۗۛۛ, reason: not valid java name and contains not printable characters */
    public static String m231() {
        if (C0032.m436() >= 0) {
            return "ۥۤۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۗ۟۫, reason: not valid java name and contains not printable characters */
    public static String m232() {
        if (C0033.m706() >= 0) {
            return "۠ۡۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۗۤۙ۠, reason: not valid java name and contains not printable characters */
    public static String m233() {
        if (C0032.m436() > 0) {
            return "ۣۡۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۗۦۢ, reason: not valid java name and contains not printable characters */
    public static String m234() {
        if (C0032.m436() >= 0) {
            return "۟ۧۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۗۨۦ, reason: not valid java name and contains not printable characters */
    public static String m235() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۨۧۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۘۘۖ, reason: not valid java name and contains not printable characters */
    public static String m236() {
        if (C0033.m706() > 0) {
            return "ۧۡ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۘۨۡ, reason: not valid java name and contains not printable characters */
    public static int m237() {
        if (C0032.m436() > 0) {
            return C0030.m396();
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۘ۬۬, reason: not valid java name and contains not printable characters */
    public static byte[] m238(Object obj, Object obj2) {
        if (C0033.m706() > 0) {
            return ((application5) obj).muhua7((byte[]) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۙۜۙ, reason: not valid java name and contains not printable characters */
    public static String m239() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۧۢۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۙۡۦ, reason: not valid java name and contains not printable characters */
    public static String m240() {
        if (m186() < 0) {
            return "ۣۣ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۙۨ۬, reason: not valid java name and contains not printable characters */
    public static String m241() {
        if (C0033.m706() > 0) {
            return "ۦۢۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۙ۫ۤ, reason: not valid java name and contains not printable characters */
    public static String m242() {
        if (m186() < 0) {
            return "ۨ۠۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۙ۬ۢ, reason: not valid java name and contains not printable characters */
    public static AssetManager m243(Object obj) {
        if (m186() <= 0) {
            return C0030.m387(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۚۘ۟, reason: not valid java name and contains not printable characters */
    public static String m244() {
        if (m186() < 0) {
            return "ۤۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۚۛ۫ۡ, reason: not valid java name and contains not printable characters */
    public static String m245() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۧ۟ۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۚ۠ۙ, reason: not valid java name and contains not printable characters */
    public static int m246(Object obj, int i) {
        if (C0024.m165xf0c433e8() >= 0) {
            return Integer.parseInt((String) obj, i);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۚۡۙ, reason: not valid java name and contains not printable characters */
    public static Application m247(Object obj) {
        if (m186() <= 0) {
            return C0028.m363(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۚ۬۟, reason: not valid java name and contains not printable characters */
    public static String m248() {
        if (C0032.m436() > 0) {
            return "ۦۨ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۙ۟, reason: not valid java name and contains not printable characters */
    public static String m249() {
        if (C0033.m706() > 0) {
            return "ۦۦۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۛۜۜ, reason: not valid java name and contains not printable characters */
    public static String m250() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۥۣۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۡۢ, reason: not valid java name and contains not printable characters */
    public static String m251() {
        if (C0024.m165xf0c433e8() > 0) {
            return "۠ۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۢۜ, reason: not valid java name and contains not printable characters */
    public static String m252() {
        if (C0032.m436() > 0) {
            return "ۣۦ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۤۙ, reason: not valid java name and contains not printable characters */
    public static byte[] m253(Object obj, Object obj2) {
        if (C0033.m706() > 0) {
            return ((application5) obj).muhua6((byte[]) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۤۡ, reason: not valid java name and contains not printable characters */
    public static String m254(Object obj, Object obj2) {
        if (C0032.m436() >= 0) {
            return ((application5) obj).muhua7((String) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟۟ۙ, reason: not valid java name and contains not printable characters */
    public static String m255() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۤۡۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۥۗ, reason: not valid java name and contains not printable characters */
    public static String m256() {
        if (C0033.m706() >= 0) {
            return "ۤۥۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟۫ۨۘ, reason: not valid java name and contains not printable characters */
    public static void m257(Object obj, Object obj2, int i, int i2) {
        if (C0024.m165xf0c433e8() >= 0) {
            ((ByteArrayOutputStream) obj).write((byte[]) obj2, i, i2);
        }
    }

    /* JADX INFO: renamed from: ۠۠ۘ, reason: not valid java name and contains not printable characters */
    public static String m258(Object obj) {
        if (C0024.m165xf0c433e8() >= 0) {
            return ((Throwable) obj).getMessage();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۢ۠, reason: not valid java name and contains not printable characters */
    public static String m259() {
        if (C0024.m165xf0c433e8() > 0) {
            return "۟ۨۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۤۘۥ, reason: not valid java name and contains not printable characters */
    public static String m260(Object obj, int i, int i2, int i3) {
        if (C0032.m436() >= 0) {
            return C0031.m416((short[]) obj, i, i2, i3);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۤۜۚ, reason: not valid java name and contains not printable characters */
    public static String m261() {
        if (m186() < 0) {
            return "۠ۨۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۘۚ, reason: not valid java name and contains not printable characters */
    public static String m262() {
        if (C0032.m436() >= 0) {
            return "xltrrypiicf7l0FUiKAK1v";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۛۙ۟, reason: not valid java name and contains not printable characters */
    public static boolean m263(Object obj, Object obj2) {
        if (C0024.m165xf0c433e8() >= 0) {
            return C0031.m409(obj, obj2);
        }
        return false;
    }

    /* JADX INFO: renamed from: ۡ۠ۜ, reason: not valid java name and contains not printable characters */
    public static String m264() {
        if (C0032.m436() > 0) {
            return "۠ۡۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۤۖ, reason: not valid java name and contains not printable characters */
    public static void m265(Object obj, Object obj2, Object obj3) throws IllegalAccessException {
        if (C0024.m165xf0c433e8() >= 0) {
            ((Field) obj).set(obj2, obj3);
        }
    }

    /* JADX INFO: renamed from: ۡۨۢ, reason: not valid java name and contains not printable characters */
    public static String m266() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۣۢۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۖۤ, reason: not valid java name and contains not printable characters */
    public static byte[] m267(Object obj) {
        if (m186() < 0) {
            return ((ByteArrayOutputStream) obj).toByteArray();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۗ۟, reason: not valid java name and contains not printable characters */
    public static Context m268(Object obj) {
        if (C0024.m165xf0c433e8() >= 0) {
            return C0031.m406(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۗۢ, reason: not valid java name and contains not printable characters */
    public static String m269() {
        if (m186() <= 0) {
            return "ۧۤ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۘۘۥ, reason: not valid java name and contains not printable characters */
    public static Set m270(Object obj) {
        if (m186() < 0) {
            return ((Map) obj).entrySet();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۘ۬, reason: not valid java name and contains not printable characters */
    public static void m271(Object obj, int i) {
        if (C0024.m165xf0c433e8() >= 0) {
            ((ByteArrayOutputStream) obj).write(i);
        }
    }

    /* JADX INFO: renamed from: ۢ۠ۨ, reason: not valid java name and contains not printable characters */
    public static String m272() {
        if (C0033.m706() > 0) {
            return "۠ۥ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۡۚ, reason: not valid java name and contains not printable characters */
    public static String m273() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۣۣۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۨۡ, reason: not valid java name and contains not printable characters */
    public static String m274() {
        if (m186() <= 0) {
            return "ۥۧ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۛۨ, reason: not valid java name and contains not printable characters */
    public static String m275() {
        if (C0033.m706() > 0) {
            return "ۧۨۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۢۦ, reason: not valid java name and contains not printable characters */
    public static String m276() {
        if (C0032.m436() > 0) {
            return "ۦۢۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۨ۬, reason: not valid java name and contains not printable characters */
    public static String m277(int i) {
        if (C0033.m706() >= 0) {
            return Integer.toHexString(i);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥۘۛ, reason: contains not printable characters */
    public static String m278() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "۟ۡۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥ۠ۚ, reason: contains not printable characters */
    public static String m279() {
        if (C0032.m436() > 0) {
            return "ۡۥۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥ۠ۡ, reason: contains not printable characters */
    public static String m280() {
        if (m186() < 0) {
            return "ۥ۠ۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥۡۤ, reason: contains not printable characters */
    public static String m281() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۥۥۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥۦۛ, reason: contains not printable characters */
    public static String m282() {
        if (C0033.m706() > 0) {
            return "ۣ۠ۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۦۚۡ, reason: contains not printable characters */
    public static String m283() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۨ۠ۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۦۛۖ, reason: contains not printable characters */
    public static String m284() {
        if (C0033.m706() > 0) {
            return "ۣ۟ۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۡۜۚ, reason: not valid java name and contains not printable characters */
    public static String m285() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۨ۟ۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۧ۟, reason: not valid java name and contains not printable characters */
    public static String m286() {
        if (C0032.m436() > 0) {
            return "ۦۡۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۗۨ, reason: not valid java name and contains not printable characters */
    public static String m287() {
        if (C0032.m436() > 0) {
            return "ۤ۟ۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۗۙ۬, reason: not valid java name and contains not printable characters */
    public static String m288() {
        if (C0032.m436() >= 0) {
            return "ۣۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۗ۫, reason: not valid java name and contains not printable characters */
    public static String m289() {
        if (C0033.m706() > 0) {
            return "۟ۥۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۗ۬ۘ, reason: not valid java name and contains not printable characters */
    public static char m290(Object obj, int i) {
        if (m186() < 0) {
            return ((String) obj).charAt(i);
        }
        return (char) 0;
    }

    /* JADX INFO: renamed from: ۫ۘ۠ۖ, reason: not valid java name and contains not printable characters */
    public static String m291(Object obj) {
        if (C0033.m706() >= 0) {
            return C0028.m364(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۚۛ, reason: not valid java name and contains not printable characters */
    public static String m292() {
        if (C0032.m436() >= 0) {
            return "ۥۦۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۤ۟, reason: not valid java name and contains not printable characters */
    public static String m293() {
        if (m186() <= 0) {
            return "ۣۢۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۧۖ, reason: not valid java name and contains not printable characters */
    public static String m294() {
        if (C0032.m436() >= 0) {
            return "۟۠ۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۨ۠, reason: not valid java name and contains not printable characters */
    public static String m295() {
        if (C0032.m436() >= 0) {
            return "۟ۡۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۬ۖۤۥ, reason: not valid java name and contains not printable characters */
    public static String m296() {
        if (C0032.m436() >= 0) {
            return "ۥۣۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۬ۗ۫ۢ, reason: not valid java name and contains not printable characters */
    public static String m297() {
        if (C0033.m706() >= 0) {
            return "ۦۤۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۬ۘۥ, reason: not valid java name and contains not printable characters */
    public static String m298() {
        if (C0032.m436() >= 0) {
            return "ۤۦۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۬ۡۚ, reason: not valid java name and contains not printable characters */
    public static String m299() {
        if (C0033.m706() > 0) {
            return "ۡۨۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۬ۢۜ, reason: not valid java name and contains not printable characters */
    public static String m300() {
        if (C0033.m706() > 0) {
            return "ۣۤۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 他妈的妖精被射精的强烈快感弄到晕晕然的楚天玉还在不停地喘息着, reason: contains not printable characters */
    public static Object m301(Object obj) {
        if (C0032.m436() > 0) {
            return C0027.m346(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: 你什么东西似的, reason: contains not printable characters */
    public static String m302() {
        if (C0032.m436() >= 0) {
            return "ۧۡ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你但是不知道我是你父亲, reason: contains not printable characters */
    public static String m303() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۦ۠ۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你好象儿子似的, reason: contains not printable characters */
    public static short[] m304() {
        if (C0032.m436() >= 0) {
            return f7short;
        }
        return null;
    }

    /* JADX INFO: renamed from: 你完全没有力量反抗我, reason: contains not printable characters */
    public static String m305(int i) {
        if (m186() < 0) {
            return C0028.m362(i);
        }
        return null;
    }

    /* JADX INFO: renamed from: 你就哈巴狗似的了啊, reason: contains not printable characters */
    public static String m306() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۣۥۣ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你必须吃屎还是怎么了, reason: contains not printable characters */
    public static String m307() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۥۨۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你接着怎么出来反抗我, reason: contains not printable characters */
    public static int m308(Object obj) {
        if (C0024.m165xf0c433e8() > 0) {
            return ((String) obj).length();
        }
        return 0;
    }

    /* JADX INFO: renamed from: 你自己什么东西似的了啊, reason: contains not printable characters */
    public static String m309() {
        if (m186() < 0) {
            return "ۣۥۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你表示必须明白情况, reason: contains not printable characters */
    public static String m310() {
        if (m186() <= 0) {
            return "ۣۧۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 侮辱你那小垃圾的速度无法和我坚持了呢小子, reason: contains not printable characters */
    public static String m311() {
        if (m186() <= 0) {
            return "ۡۥۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 呜玉儿你不要看不要看哥哥穿这样一定丑死了你不要看啦看到弟弟两眼眨也不眨, reason: contains not printable characters */
    public static String m312() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۧۤ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: 哀嚎着绯红的乳珠被粗暴地啃咬出血挺立的性器也被激烈地玩弄着楚慎之在弟弟无止无尽的连续攻击下已经完全丧失了理智和尊严化身肉欲的野兽, reason: contains not printable characters */
    public static String m313() {
        if (C0032.m436() >= 0) {
            return "۟ۤۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 啥速度也没的垃圾少年, reason: contains not printable characters */
    public static String m314() {
        if (m186() < 0) {
            return "۠ۢ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: 嗷嗷的速度把你揍成狗一样了是么弟弟你此刻啥心情呢, reason: contains not printable characters */
    public static String m315() {
        if (C0033.m706() >= 0) {
            return "ۥۣ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: 巨大汹涌的快感让楚慎之的眼泪一下就飚了出来他不停地大声哭叫着好象不这么做自己就要被那除了身上的这个人再无人能给予的快感给活活溺死了, reason: contains not printable characters */
    public static String m316x44f242f9() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۧۤۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 我去你母亲个臭b, reason: contains not printable characters */
    public static String m317b() {
        if (C0033.m706() > 0) {
            return "ۥۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 我在操你妈的同时给你妈的下体画了一幅清明上河图这使得你妈的卖逼事业在文学界也有了一定的名气你婊子妈让自己的逼沾上了文学的气息以后嫖客操你妈时还能增长文化⁠⁠⁤, reason: contains not printable characters */
    public static String m318xf0c433e8() {
        if (C0033.m706() > 0) {
            return "ۣ۟ۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 我在操你妈的同时给你妈的下体画了一幅清明上河图这使得你妈的卖逼事业在文学界也有了一定的名气你婊子妈让自己的逼沾上了文学的气息以后嫖客操你妈时还能增长文化⁣⁠⁠⁤⁠⁣, reason: contains not printable characters */
    public static String m319x45eebee0() {
        if (C0032.m436() >= 0) {
            return "۟ۥۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 我在操你妈的同时给你妈的下体画了一幅清明上河图这使得你妈的卖逼事业在文学界也有了一定的名气你婊子妈让自己的逼沾上了文学的气息以后嫖客操你妈时还能增长文化⁤⁠⁤⁤, reason: contains not printable characters */
    public static int m320x27c43af8(Object obj, int i) {
        if (C0033.m706() >= 0) {
            return ((String) obj).indexOf(i);
        }
        return 0;
    }

    /* JADX INFO: renamed from: 我我就是讨厌你, reason: contains not printable characters */
    public static String m321() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۣۨ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: 我是月黑风高偷你妈棺材钱的爹, reason: contains not printable characters */
    public static String m322(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* JADX INFO: renamed from: 我理解你的意思不就是小小的蜗牛少年感觉巴结我了是么丢人, reason: contains not printable characters */
    public static short[] m323() {
        if (C0032.m436() > 0) {
            return application2.m18();
        }
        return null;
    }

    /* JADX INFO: renamed from: 是不是哈巴狗似的了啊出来, reason: contains not printable characters */
    public static String m324() {
        if (C0033.m706() >= 0) {
            return "ۨۤ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: 晓得你一直速度被我打击的要死了是么篮子一样的, reason: contains not printable characters */
    public static String m325(String str) {
        String strM518 = C0032.m518();
        String strM519 = C0032.m518();
        for (int i = 0; i < 15; i++) {
            strM518 = C0024.m52(C0032.m484(C0032.m484(new StringBuffer(), strM518), m277(i)));
            strM519 = C0024.m52(C0033.m637(C0032.m484(new StringBuffer(), strM519), ((int) (m219() * ((double) 10))) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(m308(str) / 2);
        for (int i2 = 0; i2 < m308(str); i2 += 2) {
            m271(byteArrayOutputStream, (m320x27c43af8(strM518, m290(str, i2)) << 4) | m320x27c43af8(strM518, m290(str, i2 + 1)));
        }
        byte[] bArrM267 = m267(byteArrayOutputStream);
        String strM639 = C0033.m639(m304(), 0, 1, 2677);
        while (m308(strM639) > 0) {
            strM639 = C0032.m518();
            if (m308(strM639) == 0) {
                strM639 = C0033.m639(m304(), 1, 1, 2949);
            }
        }
        int iM308 = m308(strM639);
        int iM309 = m308(strM519);
        for (int i3 = 0; i3 < iM308; i3++) {
            bArrM267[i3] = (byte) (bArrM267[i3] ^ m290(strM519, i3 % iM309));
        }
        for (int iM3010 = 0; iM3010 < bArrM267.length; iM3010 = m308(C0032.m518()) + 1) {
        }
        return new String(bArrM267);
    }

    /* JADX INFO: renamed from: 虽然玉儿从小就是自己的死穴但反过来说他这个哥哥又何尝不是世上对弟弟最有影响力的人哼玉儿你先别太得意到最后胜利的人还不知道是谁呢, reason: contains not printable characters */
    public static String m326() {
        if (m186() < 0) {
            return "ۣۢ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: 蜗牛少年你自己儿子, reason: contains not printable characters */
    public static String m327() {
        if (m186() < 0) {
            return "ۣۤ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: 随便处女膜, reason: contains not printable characters */
    public static String m328() {
        if (C0032.m436() > 0) {
            return "ۡ۠ۧ";
        }
        return null;
    }
}
