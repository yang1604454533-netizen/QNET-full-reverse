package com.mysql.fabric.xmlrpc.base;

import java.util.Stack;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.helpers.DefaultHandler;

/* JADX INFO: loaded from: classes.dex */
public class ResponseParser extends DefaultHandler {
    private MethodResponse resp = null;
    Stack<Object> elNames = new Stack<>();
    Stack<Object> objects = new Stack<>();

    public MethodResponse getMethodResponse() {
        return this.resp;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String str, String str2, String str3, Attributes attributes) throws SAXException {
        if (str3 != null) {
            this.elNames.push(str3);
            if (str3.equals("methodResponse")) {
                this.objects.push(new MethodResponse());
                return;
            }
            if (str3.equals("params")) {
                this.objects.push(new Params());
                return;
            }
            if (str3.equals("param")) {
                this.objects.push(new Param());
                return;
            }
            if (str3.equals("value")) {
                this.objects.push(new Value());
                return;
            }
            if (str3.equals("array")) {
                this.objects.push(new Array());
                return;
            }
            if (str3.equals("data")) {
                this.objects.push(new Data());
                return;
            }
            if (str3.equals("struct")) {
                this.objects.push(new Struct());
            } else if (str3.equals("member")) {
                this.objects.push(new Member());
            } else if (str3.equals("fault")) {
                this.objects.push(new Fault());
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String str, String str2, String str3) throws SAXException {
        String str4 = (String) this.elNames.pop();
        if (str4 != null) {
            if (str4.equals("methodResponse")) {
                this.resp = (MethodResponse) this.objects.pop();
                return;
            }
            if (str4.equals("params")) {
                ((MethodResponse) this.objects.peek()).setParams((Params) this.objects.pop());
                return;
            }
            if (str4.equals("param")) {
                ((Params) this.objects.peek()).addParam((Param) this.objects.pop());
                return;
            }
            if (str4.equals("value")) {
                Value value = (Value) this.objects.pop();
                Object objPeek = this.objects.peek();
                if (objPeek instanceof Data) {
                    ((Data) objPeek).addValue(value);
                    return;
                }
                if (objPeek instanceof Param) {
                    ((Param) objPeek).setValue(value);
                    return;
                } else if (objPeek instanceof Member) {
                    ((Member) objPeek).setValue(value);
                    return;
                } else {
                    if (objPeek instanceof Fault) {
                        ((Fault) objPeek).setValue(value);
                        return;
                    }
                    return;
                }
            }
            if (str4.equals("array")) {
                ((Value) this.objects.peek()).setArray((Array) this.objects.pop());
                return;
            }
            if (str4.equals("data")) {
                ((Array) this.objects.peek()).setData((Data) this.objects.pop());
                return;
            }
            if (str4.equals("struct")) {
                ((Value) this.objects.peek()).setStruct((Struct) this.objects.pop());
            } else if (str4.equals("member")) {
                ((Struct) this.objects.peek()).addMember((Member) this.objects.pop());
            } else if (str4.equals("fault")) {
                ((MethodResponse) this.objects.peek()).setFault((Fault) this.objects.pop());
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] cArr, int i, int i2) throws SAXException {
        try {
            String str = (String) this.elNames.peek();
            if (str != null) {
                if (str.equals("name")) {
                    ((Member) this.objects.peek()).setName(new String(cArr, i, i2));
                    return;
                }
                if (str.equals("value")) {
                    ((Value) this.objects.peek()).appendString(new String(cArr, i, i2));
                    return;
                }
                if (!str.equals("i4") && !str.equals("int")) {
                    if (str.equals("boolean")) {
                        ((Value) this.objects.peek()).setBoolean(new String(cArr, i, i2));
                        return;
                    }
                    if (str.equals("string")) {
                        ((Value) this.objects.peek()).appendString(new String(cArr, i, i2));
                        return;
                    }
                    if (str.equals("double")) {
                        ((Value) this.objects.peek()).setDouble(new String(cArr, i, i2));
                        return;
                    } else if (str.equals("dateTime.iso8601")) {
                        ((Value) this.objects.peek()).setDateTime(new String(cArr, i, i2));
                        return;
                    } else {
                        if (str.equals("base64")) {
                            ((Value) this.objects.peek()).setBase64(new String(cArr, i, i2).getBytes());
                            return;
                        }
                        return;
                    }
                }
                ((Value) this.objects.peek()).setInt(new String(cArr, i, i2));
            }
        } catch (Exception e) {
            throw new SAXParseException(e.getMessage(), null, e);
        }
    }
}
