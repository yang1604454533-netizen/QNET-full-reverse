package muhua.new5;

import android.app.Activity;
import android.app.Application;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.res.AssetManager;
import android.os.Bundle;
import com.mysql.jdbc.MysqlErrorNumbers;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.security.InvalidKeyException;
import java.security.Key;
import javax.crypto.Cipher;

/* JADX INFO: renamed from: muhua.new5.实不相瞒其实我是搞房地产的我的朋友圈就是一座坟场有人的不想活了来我这找死还得带着爹带着妈现出售墓地哈谁妈死了我帮你埋我操你妈, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public class C0032 {

    /* JADX INFO: renamed from: short, reason: not valid java name */
    private static final short[] f20short = {1349, 1312};

    /* JADX INFO: renamed from: ًٌٍٍٍٍََََُُِِِِّّْْٕٕٟٜٜٜٛٝٛٚٓٔٞٚٛٚٞٓٞٞ, reason: not valid java name and contains not printable characters */
    public static boolean f21 = true;

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็, reason: contains not printable characters */
    public static void m420x708a5c42(Object obj) {
        if (C0025.m186() <= 0) {
            ((Application) obj).onCreate();
        }
    }

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็, reason: contains not printable characters */
    public static void m421x761e26e2(Object obj, boolean z) {
        if (m436() >= 0) {
            C0027.m350(obj, z);
        }
    }

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็, reason: contains not printable characters */
    public static String m422x2f612e02() {
        if (C0025.m186() <= 0) {
            return "ۣ۟۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็, reason: contains not printable characters */
    public static String m423xa10653ac() {
        if (C0025.m186() <= 0) {
            return "ۥۧۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็MHHXA็็็็็็็็็็็็็A็็็็็็็็็็็็็A็A็็็็็็็็็็็็A็็็็็็็็A็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็็A็็็็็A็็็็็็็็็็็็, reason: contains not printable characters */
    public static String m424xd155a338() {
        if (C0025.m186() < 0) {
            return "ۢ۠۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: MHHX⁠⁠⁠⁣⁣⁤, reason: contains not printable characters */
    public static void m425MHHX(Object obj, Object obj2, Object obj3) {
        if (C0033.m706() > 0) {
            ((Instrumentation) obj).callActivityOnCreate((Activity) obj2, (Bundle) obj3);
        }
    }

    /* JADX INFO: renamed from: MHHX⁣⁣⁣⁣⁣⁤, reason: contains not printable characters */
    public static String m426MHHX() {
        if (C0025.m186() <= 0) {
            return "ۤ۠";
        }
        return null;
    }

    public static String O() {
        if (C0025.m186() <= 0) {
            return "ۣۧۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ̖̗̗̗, reason: not valid java name and contains not printable characters */
    public static String m427() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۦۥۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ̖̙̖̗, reason: not valid java name and contains not printable characters */
    public static String m428() {
        if (m436() > 0) {
            return "UG0RgKpywSCVEJtKmib60QBkSeNXl";
        }
        return null;
    }

    /* JADX INFO: renamed from: ̖̙̙̖, reason: not valid java name and contains not printable characters */
    public static String m429() {
        if (C0024.m165xf0c433e8() > 0) {
            return "۟ۨ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ̖̙̙̖̖, reason: not valid java name and contains not printable characters */
    public static String m430() {
        if (m436() > 0) {
            return "ۤ۟ۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ̖̙̙̙, reason: not valid java name and contains not printable characters */
    public static String m431(Object obj) {
        if (m436() >= 0) {
            return C0027.m334(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ̗̙̖̖̖, reason: not valid java name and contains not printable characters */
    public static byte[] m432(Object obj, Object obj2) {
        if (C0024.m165xf0c433e8() >= 0) {
            return C0030.m381(obj, obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ̗̙̗̙̗, reason: not valid java name and contains not printable characters */
    public static String m433() {
        if (C0025.m186() <= 0) {
            return "ۤۡۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٌٌٍٍُُُِِّْْْٕٕٕٖٕٟٜٟٜٝٙٚٗٙٝٚٙ٘ٞ٘ٓٞ٘ٓ, reason: not valid java name and contains not printable characters */
    public static String m434() {
        if (m436() >= 0) {
            return "ۨۢۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٌٍٍََُُُِِّّٟٖٟٟٕٖٝٔٚٓٛٞٝٝٛ٘ٞٚ٘ٚٙٝٝٚٔ, reason: not valid java name and contains not printable characters */
    public static Class m435(Object obj) {
        if (m436() >= 0) {
            return C0028.m369(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٍٍََََُُِّّّْٟٕٜٕٕٟٕٚٔٙٚٝٔٝٝٗٙٙٔٝٞٙٞٙ, reason: not valid java name and contains not printable characters */
    public static int m436() {
        return 56377 ^ C0033.m669((Object) "ۣۣ");
    }

    /* JADX INFO: renamed from: ًٌٍٍٍََََُِّّّْْْْٕٖٟٟٕٜٕٕٖٓٚٙٔ٘ٙٗٓٚٛ٘ٗ٘, reason: not valid java name and contains not printable characters */
    public static String m437() {
        if (C0033.m706() > 0) {
            return "ۣۣۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٍٍٍٍَََُِِِّّّْٖٜٖٕٓٝٚ٘ٚٓٛٛٙ٘ٝٙٚٛٝٙ٘ٙٛ, reason: not valid java name and contains not printable characters */
    public static String m438() {
        if (C0025.m186() < 0) {
            return "ۨۡۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٌَََُُُِِِّّْْْٜٟٜٜٕٙ٘ٙٙ٘ٙٝٔ٘ٛٗٗٚ٘ٞٛٚ, reason: not valid java name and contains not printable characters */
    public static String m439() {
        if (m436() > 0) {
            return "۟ۧۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٍٍََََُُّّّْْٜٜٜٕٖٜٖٕٕٟٜٟٕٝٞٓٞٓٚٔٔ٘ٗٙ, reason: not valid java name and contains not printable characters */
    public static String m440() {
        if (m436() >= 0) {
            return "ۨۤۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًًٍَُُِِِّْْٖٕٕٖٖٟٟٓ٘ٚٝ٘ٗٞٛٙٝ٘ٗٙٗٔ٘ٔٚٚ, reason: not valid java name and contains not printable characters */
    public static String m441() {
        if (C0033.m706() > 0) {
            return "۠ۡۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٍٍٍََُّْْْْْٕٖٜٜٜٖٕٟٜٕٟ٘ٝٞٗٗٗٚٚٗٚٓٙٝٛ٘ٗ, reason: not valid java name and contains not printable characters */
    public static String m442() {
        if (m436() > 0) {
            return "ۦۧۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٍََُُِّّّّّّْْْْٖٜٕٕٓٗٗٛٗٛٞٓٗ٘ٝٝٗٓٛٚٗ, reason: not valid java name and contains not printable characters */
    public static String m443() {
        if (C0025.m186() <= 0) {
            return "ۦۣۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ٌٍٍَََََُُِِِِّّّّْْْٖٔٞٔٝٗٓٚٛٔٞٛ٘ٓٝٝٛٓٓ, reason: not valid java name and contains not printable characters */
    public static int m444(Object obj, Object obj2) {
        if (C0033.m706() >= 0) {
            return ((InputStream) obj).read((byte[]) obj2);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ٌٌٌٍََََُُُُِّْْٕٟٟٜٕٜٟٗٚٞٗٚٓٞٙٙٞٚٝٚٛٞ٘ٚ, reason: not valid java name and contains not printable characters */
    public static String m445() {
        if (C0033.m706() > 0) {
            return "۠ۢۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٍٍٍٍََُُّّّّْْْْٖٕٕٟٟٜٕٟٕٖٛ٘ٙٗٓٔٙٚ٘٘ٝٞ, reason: not valid java name and contains not printable characters */
    public static String m446() {
        if (C0025.m186() < 0) {
            return "ۤۤۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٍَِِِّّّّّْْْْٖٜٖٖٕٖٜٟٖٜٕٝٚٙٗٓٗٙٝٛٓ٘ٗٔ, reason: not valid java name and contains not printable characters */
    public static int m447(Object obj, int i) {
        if (C0025.m186() <= 0) {
            return C0028.m370(obj, i);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ًًًٌٍََُُُُِِّّْْْٜٖٜٟٖٕٕٗٝٛٞٓٓ٘ٓٞٛٛ٘ٔٚٝ, reason: not valid java name and contains not printable characters */
    public static Long m448(Object obj) {
        if (C0024.m165xf0c433e8() >= 0) {
            return Long.decode((String) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٍٍََََُِّّّٕٖٕٕٖٕٟٗٙٗ٘ٔٞٝ٘ٙ٘ٔٞٝٗٝٓٝٝٗٔ, reason: not valid java name and contains not printable characters */
    public static Field m449(Object obj, Object obj2) {
        if (m436() >= 0) {
            return ((Class) obj).getDeclaredField((String) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٍٍٍٍٍََََُِِِّّْْٟٖٕٕٖٖٖٜٖٗ٘ٞٔٔٞٛ٘ٚٝٛ, reason: not valid java name and contains not printable characters */
    public static String m450() {
        if (C0025.m186() < 0) {
            return "ۡۨ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٌٍََََُُِِّّّْْٖٖٜٕٖٟٟٜٕٟ٘ٗٝٛٝٞٗٞٔٞٓٓ, reason: not valid java name and contains not printable characters */
    public static String m451() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۦ۟ۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًًٌٌٌٍٍََُُِّّّْٜٜٖٟٟٙٓٚٛٓٚٗٛٞٞٔٙٔٗٔٗٓ, reason: not valid java name and contains not printable characters */
    public static String m452() {
        if (C0033.m706() > 0) {
            return "ۥۦ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٌٌٍَُِّٕٟٕٕٜٕٖٕٕٕٕٖٙٔٗٚٗ٘ٝٓ٘ٔٝ٘٘ٝ٘ٔٛٚ, reason: not valid java name and contains not printable characters */
    public static String m453() {
        if (C0025.m186() <= 0) {
            return "ۨۤۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًًٌٌٌٌٌٍَََُُِِّّْْٖٟٖٖٖٖٜٟٜٙ٘ٔٗٛٝٓٝٗٞ, reason: not valid java name and contains not printable characters */
    public static String m454() {
        if (C0025.m186() <= 0) {
            return "1NR";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٌٍٍُُُُِِِّْٕٖٖٖٖٖٖٕٙٗٞٔٔٔٝٛٓ٘ٓ٘ٙٓٓٝٞ, reason: not valid java name and contains not printable characters */
    public static String m455() {
        if (C0025.m186() <= 0) {
            return "ۡۦۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٌٌٍٍٍَُِِِّّّّْٕٜٜٕٖٜٜٜٟٜٚٙٚٞٗٚٙٛٞٔٙٛ, reason: not valid java name and contains not printable characters */
    public static String m456() {
        if (C0033.m706() > 0) {
            return "ۥۨۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٍَُُُِّّّْْٟٖٜٜٜٖٟٜٟٜٟٚٙٞٞٓٗٛٓٞٙٛٚ٘ٞٞ, reason: not valid java name and contains not printable characters */
    public static String m457() {
        if (C0033.m706() >= 0) {
            return "ۢۨۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٌٌٍُِِِّْْْْْٟٖٖٟٛٚٝٚٓ٘ٞٞٛٝٝٚٞٗٞٝ٘ٗٙٓٓ, reason: not valid java name and contains not printable characters */
    public static String m458() {
        if (C0025.m186() < 0) {
            return "ۦ۠ۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًًٌٌٍََُِِّّّّْْْٜٕٕٖٜٟٝٚٝٙٛٙٛٔٚ٘ٗٝٔٓٗٚ, reason: not valid java name and contains not printable characters */
    public static String m459() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۨۨۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٍَُُُِّّّْٖٖٖٟٜٖٕٜٟٞ٘ٙ٘ٛٓٝٛ٘ٛٞٛ٘ٛٞٓٗٚ, reason: not valid java name and contains not printable characters */
    public static String m460() {
        if (m436() >= 0) {
            return "۠ۡۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ٌٌٌٌٌٍٍٍَََُِِْْٖٖٜٖٜٟٖٖٞٞ٘ٙٝٚٞٙٞٛٗ٘ٝٔٝٙ, reason: not valid java name and contains not printable characters */
    public static String m461() {
        if (C0025.m186() <= 0) {
            return "ۣۣۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ًًٍٍٍٍَََُِِّٟٖٕٕٟٖٕٟٛٙٝٓ٘ٙٝٓٔٗٛٞٚٞ٘ٗٝٝٚ, reason: not valid java name and contains not printable characters */
    public static String m462(Object obj) {
        if (m436() > 0) {
            return application3.get((String) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ًٌٌٌٌََُُُُِّّّْْْٟٖٖٕٕ٘ٗٔٙٚٛٓٗٚٞٞٔٗٛٙٗٓ, reason: not valid java name and contains not printable characters */
    public static boolean m463(Object obj, Object obj2) {
        if (C0033.m706() >= 0) {
            return C0030.m383(obj, obj2);
        }
        return false;
    }

    /* JADX INFO: renamed from: ًًًٌٍَََُُُِِّّّْْٟٖٖٟٖٖٕٝٗٔٗٙٝٚٚٞٝٝٙٛٓ٘, reason: not valid java name and contains not printable characters */
    public static String m464() {
        if (C0033.m706() > 0) {
            return "ۧۤۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۖۚۥ۫, reason: not valid java name and contains not printable characters */
    public static short[] m465() {
        if (C0025.m186() <= 0) {
            return C0027.m348();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۖۜۖ, reason: not valid java name and contains not printable characters */
    public static String m466(Object obj) {
        if (m436() >= 0) {
            return C0029.m378((String) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۖۦۢ, reason: not valid java name and contains not printable characters */
    public static String m467() {
        if (C0025.m186() <= 0) {
            return "ۦۣۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۖۧۜ, reason: not valid java name and contains not printable characters */
    public static String m468() {
        if (C0025.m186() <= 0) {
            return "ۣۣۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۗۘۧ, reason: not valid java name and contains not printable characters */
    public static String m469() {
        if (C0033.m706() >= 0) {
            return "ۤۤ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۗۜۤۧ, reason: not valid java name and contains not printable characters */
    public static void m470(Object obj, Object obj2) {
        if (C0024.m165xf0c433e8() >= 0) {
            ((Context) obj).startActivity((Intent) obj2);
        }
    }

    /* JADX INFO: renamed from: ۗۨ۫, reason: not valid java name and contains not printable characters */
    public static String m471() {
        if (C0033.m706() > 0) {
            return "ۦ۠ۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۘۢ۟ۦ, reason: not valid java name and contains not printable characters */
    public static String m472() {
        if (m436() > 0) {
            return "ۦۨۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۘۥۖ, reason: not valid java name and contains not printable characters */
    public static String m473() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۣۧۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۘۨ۠, reason: not valid java name and contains not printable characters */
    public static Class m474(Object obj) {
        if (C0033.m706() > 0) {
            return C0031.m400(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۙۙۨ, reason: not valid java name and contains not printable characters */
    public static String m475() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۦۢۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۙۜۢ, reason: not valid java name and contains not printable characters */
    public static String m476() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "۠ۡ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۚۗۙ, reason: not valid java name and contains not printable characters */
    public static void m477(Object obj, int i, Object obj2) throws InvalidKeyException {
        if (m436() > 0) {
            ((Cipher) obj).init(i, (Key) obj2);
        }
    }

    /* JADX INFO: renamed from: ۚۛۘۜ, reason: not valid java name and contains not printable characters */
    public static String m478() {
        if (C0025.m186() <= 0) {
            return "۟۠ۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۚۜۧ, reason: not valid java name and contains not printable characters */
    public static int m479(Object obj) {
        if (C0033.m706() > 0) {
            return C0029.m375(obj);
        }
        return 0;
    }

    /* JADX INFO: renamed from: ۚ۟ۢۘ, reason: not valid java name and contains not printable characters */
    public static void m480(Object obj) {
        if (C0025.m186() <= 0) {
            C0028.m357(obj);
        }
    }

    /* JADX INFO: renamed from: ۚۢۙ, reason: not valid java name and contains not printable characters */
    public static String m481() {
        if (C0033.m706() >= 0) {
            return "ۧۧۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۚۦۦ, reason: not valid java name and contains not printable characters */
    public static Cipher m482(Object obj) {
        if (C0025.m186() <= 0) {
            return application5.m34(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۛۗۤ, reason: not valid java name and contains not printable characters */
    public static String m483() {
        if (m436() >= 0) {
            return "ۨۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۛ۫۟, reason: not valid java name and contains not printable characters */
    public static StringBuffer m484(Object obj, Object obj2) {
        if (C0025.m186() < 0) {
            return ((StringBuffer) obj).append((String) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۖۧ, reason: not valid java name and contains not printable characters */
    public static String m485() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۣۣۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۜۨ, reason: not valid java name and contains not printable characters */
    public static void m486(Object obj) {
        if (C0033.m706() > 0) {
            C0031.m418(obj);
        }
    }

    /* JADX INFO: renamed from: ۜۤۜ, reason: not valid java name and contains not printable characters */
    public static String m487() {
        if (C0025.m186() < 0) {
            return "ۢۥۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۤۡ, reason: not valid java name and contains not printable characters */
    public static String m488() {
        if (m436() >= 0) {
            return "ۦۣ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۥۗ, reason: not valid java name and contains not printable characters */
    public static String m489() {
        if (m436() > 0) {
            return "ۤ۟۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜۨۤ, reason: not valid java name and contains not printable characters */
    public static String m490() {
        if (C0033.m706() > 0) {
            return "ۣ۟ۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۜ۬ۤ, reason: not valid java name and contains not printable characters */
    public static String m491() {
        if (C0025.m186() <= 0) {
            return "۟۠ۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟ۘۖ, reason: not valid java name and contains not printable characters */
    public static String m492() {
        if (C0033.m706() >= 0) {
            return "ۥۥۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۟۠ۖ, reason: not valid java name and contains not printable characters */
    public static String m493() {
        if (C0033.m706() > 0) {
            return "ۤۢۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۗۜ, reason: not valid java name and contains not printable characters */
    public static String m494() {
        if (C0033.m706() >= 0) {
            return "ۨ۟ۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۙۡۘ, reason: not valid java name and contains not printable characters */
    public static void m495(Object obj) {
        if (C0033.m706() > 0) {
            ((Activity) obj).finish();
        }
    }

    /* JADX INFO: renamed from: ۠ۜۖ, reason: not valid java name and contains not printable characters */
    public static byte[] m496(Object obj, Object obj2) {
        if (C0033.m706() > 0) {
            return ((Cipher) obj).doFinal((byte[]) obj2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۤۜ, reason: not valid java name and contains not printable characters */
    public static String m497() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۣۡ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۠ۨ۟, reason: not valid java name and contains not printable characters */
    public static void m498(Object obj, boolean z) {
        if (C0025.m186() <= 0) {
            C0027.m333(obj, z);
        }
    }

    /* JADX INFO: renamed from: ۡۚ۠, reason: not valid java name and contains not printable characters */
    public static String m499(Object obj) {
        if (C0033.m706() >= 0) {
            return C0028.m356((String) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۜۙ, reason: not valid java name and contains not printable characters */
    public static String m500() {
        if (C0033.m706() >= 0) {
            return "ۧۨۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡ۟ۘ, reason: not valid java name and contains not printable characters */
    public static String m501() {
        if (C0025.m186() < 0) {
            return "ۣۤۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡ۠ۜ, reason: not valid java name and contains not printable characters */
    public static String m502() {
        if (C0033.m706() >= 0) {
            return "ۨ۟ۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡ۠۫, reason: not valid java name and contains not printable characters */
    public static boolean m503() {
        if (C0033.m706() >= 0) {
            return application2.f30muhua;
        }
        return false;
    }

    /* JADX INFO: renamed from: ۡۢ۠, reason: not valid java name and contains not printable characters */
    public static String m504() {
        if (C0025.m186() <= 0) {
            return "ۣۣۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡۤۗ, reason: not valid java name and contains not printable characters */
    public static String m505() {
        if (C0025.m186() < 0) {
            return "ۦ۠ۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۡ۫ۖ, reason: not valid java name and contains not printable characters */
    public static Cipher m506(Object obj) {
        if (m436() >= 0) {
            return Cipher.getInstance((String) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۗ۟, reason: not valid java name and contains not printable characters */
    public static String m507() {
        if (m436() >= 0) {
            return "۠ۢۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۛ۫, reason: not valid java name and contains not printable characters */
    public static Instrumentation m508(Object obj) {
        if (C0033.m706() > 0) {
            return application4.m26(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۜۘ, reason: not valid java name and contains not printable characters */
    public static void m509() {
        if (m436() > 0) {
            C0031.m411();
        }
    }

    /* JADX INFO: renamed from: ۢۡۘ, reason: not valid java name and contains not printable characters */
    public static String m510(Object obj) {
        if (C0024.m165xf0c433e8() > 0) {
            return C0027.m338(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢۤ۠, reason: not valid java name and contains not printable characters */
    public static String m511() {
        if (C0025.m186() < 0) {
            return "ۧۨۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢ۫ۚۜ, reason: not valid java name and contains not printable characters */
    public static String m512() {
        if (C0025.m186() <= 0) {
            return "ۥۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۢ۫۟, reason: not valid java name and contains not printable characters */
    public static String m513(short[] sArr, int i, int i2, int i3) {
        char[] cArr = new char[i2];
        for (int i4 = 0; i4 < i2; i4++) {
            cArr[i4] = (char) (sArr[i + i4] ^ i3);
        }
        return new String(cArr);
    }

    /* JADX INFO: renamed from: ۤۖۙۡ, reason: not valid java name and contains not printable characters */
    public static String m514() {
        if (m436() >= 0) {
            return "ۨۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۘ۠ۢ, reason: not valid java name and contains not printable characters */
    public static String m515() {
        if (C0033.m706() > 0) {
            return "ۦۨۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۥۛ, reason: not valid java name and contains not printable characters */
    public static String m516() {
        if (C0025.m186() <= 0) {
            return "ۧۦۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۥۥ, reason: not valid java name and contains not printable characters */
    public static String m517() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۧ۠ۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۦ۠, reason: not valid java name and contains not printable characters */
    public static String m518() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۤۧۛۨ, reason: not valid java name and contains not printable characters */
    public static String m519() {
        if (m436() >= 0) {
            return "ۧۢۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥۘۚ, reason: contains not printable characters */
    public static String m520() {
        if (C0033.m706() > 0) {
            return "ۦۥۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥۚۚ, reason: contains not printable characters */
    public static String m521() {
        if (C0025.m186() <= 0) {
            return "ۧ۠ۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۥۢۧ, reason: contains not printable characters */
    public static String m522() {
        if (C0033.m706() >= 0) {
            return "ۣۨۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۦۖۖۡ, reason: contains not printable characters */
    public static String m523() {
        if (C0033.m706() > 0) {
            return "ۧۦۣ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۦۖۗ, reason: contains not printable characters */
    public static String m524() {
        if (C0025.m186() < 0) {
            return "۠۠ۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۦۡۘ, reason: contains not printable characters */
    public static String m525() {
        if (C0025.m186() < 0) {
            return "ۣۨۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧ۟۟, reason: not valid java name and contains not printable characters */
    public static String m526() {
        if (C0033.m706() > 0) {
            return "ۣۨۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧ۠ۢۦ, reason: not valid java name and contains not printable characters */
    public static String m527(Object obj) {
        if (C0033.m706() >= 0) {
            return ((ByteArrayOutputStream) obj).toString();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧ۠۫, reason: not valid java name and contains not printable characters */
    public static String m528() {
        if (m436() >= 0) {
            return "ۣۡۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۢۡ, reason: not valid java name and contains not printable characters */
    public static String m529() {
        if (C0033.m706() > 0) {
            return "ۣ۟ۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۥۜ, reason: not valid java name and contains not printable characters */
    public static String m530() {
        if (C0025.m186() < 0) {
            return "ۧۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۥ۫, reason: not valid java name and contains not printable characters */
    public static String m531() {
        if (C0033.m706() > 0) {
            return "ۧۡۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۧۧۜۡ, reason: not valid java name and contains not printable characters */
    public static String m532() {
        if (m436() >= 0) {
            return "ۨۨ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۤۖ, reason: not valid java name and contains not printable characters */
    public static String m533() {
        if (C0025.m186() <= 0) {
            return "ۣۡۨ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۥ۠, reason: not valid java name and contains not printable characters */
    public static String m534() {
        if (C0025.m186() < 0) {
            return "ۢۢۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۨۨ۬, reason: not valid java name and contains not printable characters */
    public static String m535() {
        if (m436() >= 0) {
            return "ۤ۟ۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۙۡ, reason: not valid java name and contains not printable characters */
    public static void m536(Object obj, float f) {
        if (m436() > 0) {
            ((PrintStream) obj).println(f);
        }
    }

    /* JADX INFO: renamed from: ۫ۛۧ, reason: not valid java name and contains not printable characters */
    public static String m537() {
        if (m436() > 0) {
            return "۠ۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫۠ۨ, reason: not valid java name and contains not printable characters */
    public static Class m538(Object obj) {
        if (C0033.m706() >= 0) {
            return C0028.m360(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۡۘ, reason: not valid java name and contains not printable characters */
    public static String m539(int i, int i2) {
        if (C0024.m165xf0c433e8() >= 0) {
            return C0028.m353(i, i2);
        }
        return null;
    }

    /* JADX INFO: renamed from: ۫ۡ۬, reason: not valid java name and contains not printable characters */
    public static void m540(Object obj) {
        if (m436() >= 0) {
            ((Exception) obj).printStackTrace();
        }
    }

    /* JADX INFO: renamed from: ۫ۥ۬, reason: not valid java name and contains not printable characters */
    public static void m541(Object obj, int i) {
        if (C0033.m706() > 0) {
            ((PrintStream) obj).println(i);
        }
    }

    /* JADX INFO: renamed from: ۬ۛ۟, reason: not valid java name and contains not printable characters */
    public static String m542() {
        if (C0033.m706() > 0) {
            return "ۢۥۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: ۬۠ۤ, reason: not valid java name and contains not printable characters */
    public static AssetManager m543(Object obj) {
        if (C0033.m706() >= 0) {
            return ((Context) obj).getAssets();
        }
        return null;
    }

    /* JADX INFO: renamed from: ۬ۤۛ, reason: not valid java name and contains not printable characters */
    public static String m544() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۤۤۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你好象我儿子没有, reason: contains not printable characters */
    public static String m545() {
        if (C0025.m186() < 0) {
            return "ۨ۠ۡ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你妈阴道里长了一颗毒瘤待我一颗手雷扔进去瞬间可以把你妈阴道开拓成宽阔无涯的大黑逼, reason: contains not printable characters */
    public static String m546(String str) {
        String strM518 = m518();
        String strM519 = m518();
        for (int i = 0; i < 15; i++) {
            strM518 = C0024.m52(m484(m484(new StringBuffer(), strM518), C0025.m277(i)));
            strM519 = C0024.m52(C0033.m637(m484(new StringBuffer(), strM519), ((int) (C0025.m219() * ((double) 10))) ^ i));
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(C0025.m308(str) / 2);
        for (int i2 = 0; i2 < C0025.m308(str); i2 += 2) {
            C0025.m271(byteArrayOutputStream, (C0025.m320x27c43af8(strM518, C0025.m290(str, i2)) << 4) | C0025.m320x27c43af8(strM518, C0025.m290(str, i2 + 1)));
        }
        byte[] bArrM267 = C0025.m267(byteArrayOutputStream);
        String strM51 = C0024.m51(m562xd0c506e3(), 0, 1, MysqlErrorNumbers.ER_UPDATE_LOG_DEPRECATED_TRANSLATED);
        while (C0025.m308(strM51) > 0) {
            strM51 = m518();
            if (C0025.m308(strM51) == 0) {
                strM51 = C0024.m51(m562xd0c506e3(), 1, 1, MysqlErrorNumbers.ER_VIEW_NO_EXPLAIN);
            }
        }
        int iM308 = C0025.m308(strM51);
        int iM309 = C0025.m308(strM519);
        for (int i3 = 0; i3 < iM308; i3++) {
            bArrM267[i3] = (byte) (bArrM267[i3] ^ C0025.m290(strM519, i3 % iM309));
        }
        for (int iM3010 = 0; iM3010 < bArrM267.length; iM3010 = C0025.m308(m518()) + 1) {
        }
        return new String(bArrM267);
    }

    /* JADX INFO: renamed from: 你就哈巴狗似的了啊, reason: contains not printable characters */
    public static String m547() {
        if (m436() >= 0) {
            return "ۣ۟۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你怎么出来反抗我啊, reason: contains not printable characters */
    public static String m548(Object obj, int i, int i2, int i3) {
        if (C0025.m186() <= 0) {
            return C0028.m371((short[]) obj, i, i2, i3);
        }
        return null;
    }

    /* JADX INFO: renamed from: 你清楚情况吗蜗牛少年, reason: contains not printable characters */
    public static String m549() {
        if (m436() > 0) {
            return "۟ۡۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你的菊花开在你的坟头, reason: contains not printable characters */
    public static String m550() {
        if (m436() >= 0) {
            return "۠ۨ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: 你语无伦次似的啊, reason: contains not printable characters */
    public static String m551() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۥۣۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 冷言冷语草拟吗, reason: contains not printable characters */
    public static byte[] m552(Object obj) {
        if (C0025.m186() < 0) {
            return C0031.m408(obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: 呜玉儿你在生气吗你在生哥哥的气吗, reason: contains not printable characters */
    public static String m553() {
        if (C0033.m706() >= 0) {
            return "ۦ۟ۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 啊啊我快要疯了, reason: contains not printable characters */
    public static String m554() {
        if (m436() >= 0) {
            return "ۤ۠ۤ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 啊啊玉儿给我给我啊你为什么不给我你不要哥哥了吗但哥哥要你啊玉儿玉儿射给我发觉到少年至今一次也没泄身的楚慎之咬着牙淫荡地扭摆起腰身将插在自己小穴里的肉棒死命地绞紧终于听见楚天玉闷哼一声在一阵狂插猛抽后如愿以偿地让他的精液射进了自己炙热的肉穴里, reason: contains not printable characters */
    public static void m555xc34e0f4a(Object obj) {
        if (m436() > 0) {
            C0027.m336(obj);
        }
    }

    /* JADX INFO: renamed from: 啊等一下给我给我少年射出的一股股浓精被一滴不剩地吞进嘴里楚慎之还意犹味尽地将舌头伸进尖端的小孔里将残存的体液扫得干干净净, reason: contains not printable characters */
    public static String m556() {
        if (C0025.m186() < 0) {
            return "ۨۧ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: 在雨幕下甩动的发丝, reason: contains not printable characters */
    public static void m557(Object obj) {
        if (C0033.m706() >= 0) {
            application2.init((Application) obj);
        }
    }

    /* JADX INFO: renamed from: 大家草拟吗, reason: contains not printable characters */
    public static String m558() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۦۧۥ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 婆娑在你妈b里弹十面埋伏, reason: contains not printable characters */
    public static String m559b() {
        if (C0033.m706() >= 0) {
            return "ۤ۠ۦ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 小穴里红红的媚肉被不停地翻进翻出股间的玉柱随着抽插的动作也不停地摇晃楚天玉看到如此淫乱的画面鼻血都快喷了出来, reason: contains not printable characters */
    public static String m560() {
        if (m436() >= 0) {
            return "ۦ۠۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: 我在操你妈的同时给你妈的下体画了一幅清明上河图这使得你妈的卖逼事业在文学界也有了一定的名气你婊子妈让自己的逼沾上了文学的气息以后嫖客操你妈时还能增长文化⁠⁠⁠⁣⁣⁠, reason: contains not printable characters */
    public static PrintStream m561x40d0319c() {
        if (C0033.m706() > 0) {
            return System.out;
        }
        return null;
    }

    /* JADX INFO: renamed from: 我在操你妈的同时给你妈的下体画了一幅清明上河图这使得你妈的卖逼事业在文学界也有了一定的名气你婊子妈让自己的逼沾上了文学的气息以后嫖客操你妈时还能增长文化⁤⁤⁠⁤⁣, reason: contains not printable characters */
    public static short[] m562xd0c506e3() {
        if (m436() >= 0) {
            return f20short;
        }
        return null;
    }

    /* JADX INFO: renamed from: 我是月黑风高偷你妈棺材钱的爹, reason: contains not printable characters */
    public static String m563() {
        if (C0033.m706() >= 0) {
            return "۟ۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 是不是叫花子青年, reason: contains not printable characters */
    public static String m564() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۣۥ۠";
        }
        return null;
    }

    /* JADX INFO: renamed from: 是不是害怕爸爸速度了啊, reason: contains not printable characters */
    public static String m565() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۣۧ۟";
        }
        return null;
    }

    /* JADX INFO: renamed from: 是么, reason: contains not printable characters */
    public static String m566() {
        if (C0024.m165xf0c433e8() > 0) {
            return "ۣۢۧ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 玉儿玉儿你怎么会这么可爱啊你叫哥哥要拿你怎么办好想就这样把你吃掉再也不给别人看见, reason: contains not printable characters */
    public static String m567() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۥ۟ۢ";
        }
        return null;
    }

    /* JADX INFO: renamed from: 硬邦邦的性器生生地在那窄窄的肠壁狠狠地刮转了一圈又痛又爽的疯狂感受使得楚慎之一下就被操醒了过来, reason: contains not printable characters */
    public static String m568() {
        if (C0033.m706() > 0) {
            return "nvj7zSeYm";
        }
        return null;
    }

    /* JADX INFO: renamed from: 自己哈巴狗似的了啊, reason: contains not printable characters */
    public static String m569() {
        if (C0024.m165xf0c433e8() >= 0) {
            return "ۣۤۧ";
        }
        return null;
    }
}
