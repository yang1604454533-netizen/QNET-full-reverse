package com.tencent.qnet.common;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CloneUtils {
    public static <T extends Serializable> T clone(T t) {
        T t2 = null;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            objectOutputStream.writeObject(t);
            objectOutputStream.close();
            ObjectInputStream objectInputStream = new ObjectInputStream(new ByteArrayInputStream(byteArrayOutputStream.toByteArray()));
            T t3 = (T) objectInputStream.readObject();
            try {
                objectInputStream.close();
                return t3;
            } catch (Exception e) {
                t2 = t3;
                e = e;
                e.printStackTrace();
                return t2;
            }
        } catch (Exception e2) {
            e = e2;
        }
    }
}
