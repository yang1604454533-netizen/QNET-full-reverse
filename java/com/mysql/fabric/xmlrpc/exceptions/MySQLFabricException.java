package com.mysql.fabric.xmlrpc.exceptions;

import com.mysql.fabric.xmlrpc.base.Fault;
import com.mysql.fabric.xmlrpc.base.Struct;
import java.sql.SQLException;

/* JADX INFO: loaded from: classes.dex */
public class MySQLFabricException extends SQLException {
    static final long serialVersionUID = -8776763137552613517L;

    public MySQLFabricException() {
    }

    public MySQLFabricException(Fault fault) {
        super((String) ((Struct) fault.getValue().getValue()).getMember().get(1).getValue().getValue(), "", ((Integer) ((Struct) fault.getValue().getValue()).getMember().get(0).getValue().getValue()).intValue());
    }

    public MySQLFabricException(String str, String str2, int i) {
        super(str, str2, i);
    }

    public MySQLFabricException(String str, String str2) {
        super(str, str2);
    }

    public MySQLFabricException(String str) {
        super(str);
    }
}
