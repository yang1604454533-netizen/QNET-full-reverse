package com.mysql.fabric.xmlrpc.base;

import java.util.Arrays;
import java.util.GregorianCalendar;
import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import javax.xml.datatype.XMLGregorianCalendar;

/* JADX INFO: loaded from: classes.dex */
public class Value {
    public static final byte TYPE_array = 8;
    public static final byte TYPE_base64 = 6;
    public static final byte TYPE_boolean = 2;
    public static final byte TYPE_dateTime_iso8601 = 5;
    public static final byte TYPE_double = 4;
    public static final byte TYPE_i4 = 0;
    public static final byte TYPE_int = 1;
    public static final byte TYPE_string = 3;
    public static final byte TYPE_struct = 7;
    protected Object objValue = "";
    protected byte objType = 3;
    private DatatypeFactory dtf = null;

    public Value() {
    }

    public Value(int i) {
        setInt(i);
    }

    public Value(String str) {
        setString(str);
    }

    public Value(boolean z) {
        setBoolean(z);
    }

    public Value(double d) {
        setDouble(d);
    }

    public Value(GregorianCalendar gregorianCalendar) throws DatatypeConfigurationException {
        setDateTime(gregorianCalendar);
    }

    public Value(byte[] bArr) {
        setBase64(bArr);
    }

    public Value(Struct struct) {
        setStruct(struct);
    }

    public Value(Array array) {
        setArray(array);
    }

    public Object getValue() {
        return this.objValue;
    }

    public byte getType() {
        return this.objType;
    }

    public void setInt(int i) {
        this.objValue = Integer.valueOf(i);
        this.objType = (byte) 1;
    }

    public void setInt(String str) {
        this.objValue = Integer.valueOf(str);
        this.objType = (byte) 1;
    }

    public void setString(String str) {
        this.objValue = str;
        this.objType = (byte) 3;
    }

    public void appendString(String str) {
        if (this.objValue != null) {
            str = this.objValue + str;
        }
        this.objValue = str;
        this.objType = (byte) 3;
    }

    public void setBoolean(boolean z) {
        this.objValue = Boolean.valueOf(z);
        this.objType = (byte) 2;
    }

    public void setBoolean(String str) {
        if (str.trim().equals("1") || str.trim().equalsIgnoreCase("true")) {
            this.objValue = true;
        } else {
            this.objValue = false;
        }
        this.objType = (byte) 2;
    }

    public void setDouble(double d) {
        this.objValue = Double.valueOf(d);
        this.objType = (byte) 4;
    }

    public void setDouble(String str) {
        this.objValue = Double.valueOf(str);
        this.objType = (byte) 4;
    }

    public void setDateTime(GregorianCalendar gregorianCalendar) throws DatatypeConfigurationException {
        if (this.dtf == null) {
            this.dtf = DatatypeFactory.newInstance();
        }
        this.objValue = this.dtf.newXMLGregorianCalendar(gregorianCalendar);
        this.objType = (byte) 5;
    }

    public void setDateTime(String str) throws DatatypeConfigurationException {
        if (this.dtf == null) {
            this.dtf = DatatypeFactory.newInstance();
        }
        this.objValue = this.dtf.newXMLGregorianCalendar(str);
        this.objType = (byte) 5;
    }

    public void setBase64(byte[] bArr) {
        this.objValue = bArr;
        this.objType = (byte) 6;
    }

    public void setStruct(Struct struct) {
        this.objValue = struct;
        this.objType = (byte) 7;
    }

    public void setArray(Array array) {
        this.objValue = array;
        this.objType = (byte) 8;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("<value>");
        switch (this.objType) {
            case 0:
                sb.append("<i4>" + ((Integer) this.objValue).toString() + "</i4>");
                break;
            case 1:
                sb.append("<int>" + ((Integer) this.objValue).toString() + "</int>");
                break;
            case 2:
                sb.append("<boolean>" + (((Boolean) this.objValue).booleanValue() ? 1 : 0) + "</boolean>");
                break;
            case 3:
            default:
                sb.append("<string>" + escapeXMLChars(this.objValue.toString()) + "</string>");
                break;
            case 4:
                sb.append("<double>" + ((Double) this.objValue).toString() + "</double>");
                break;
            case 5:
                sb.append("<dateTime.iso8601>" + ((XMLGregorianCalendar) this.objValue).toString() + "</dateTime.iso8601>");
                break;
            case 6:
                sb.append("<base64>" + Arrays.toString((byte[]) this.objValue) + "</base64>");
                break;
            case 7:
                sb.append(((Struct) this.objValue).toString());
                break;
            case 8:
                sb.append(((Array) this.objValue).toString());
                break;
        }
        sb.append("</value>");
        return sb.toString();
    }

    private String escapeXMLChars(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt == '&') {
                sb.append("&amp;");
            } else if (cCharAt == '<') {
                sb.append("&lt;");
            } else if (cCharAt == '>') {
                sb.append("&gt;");
            } else {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }
}
