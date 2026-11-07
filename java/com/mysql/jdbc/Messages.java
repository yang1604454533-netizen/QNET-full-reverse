package com.mysql.jdbc;

import java.text.MessageFormat;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.ResourceBundle;

/* JADX INFO: loaded from: classes.dex */
public class Messages {
    private static final String BUNDLE_NAME = "com.mysql.jdbc.LocalizedErrorMessages";
    private static final ResourceBundle RESOURCE_BUNDLE;

    static {
        try {
            try {
                RESOURCE_BUNDLE = ResourceBundle.getBundle(BUNDLE_NAME, Locale.getDefault(), Messages.class.getClassLoader());
            } catch (Throwable th) {
                try {
                    RESOURCE_BUNDLE = ResourceBundle.getBundle(BUNDLE_NAME);
                } catch (Throwable th2) {
                    RuntimeException runtimeException = new RuntimeException("Can't load resource bundle due to underlying exception " + th.toString());
                    runtimeException.initCause(th2);
                    throw runtimeException;
                }
            }
        } catch (Throwable th3) {
            RESOURCE_BUNDLE = null;
            throw th3;
        }
    }

    public static String getString(String str) {
        if (RESOURCE_BUNDLE == null) {
            throw new RuntimeException("Localized messages from resource bundle 'com.mysql.jdbc.LocalizedErrorMessages' not loaded during initialization of driver.");
        }
        try {
            if (str == null) {
                throw new IllegalArgumentException("Message key can not be null");
            }
            String string = RESOURCE_BUNDLE.getString(str);
            if (string != null) {
                return string;
            }
            return "Missing error message for key '" + str + "'";
        } catch (MissingResourceException unused) {
            return '!' + str + '!';
        }
    }

    public static String getString(String str, Object[] objArr) {
        return MessageFormat.format(getString(str), objArr);
    }

    private Messages() {
    }
}
