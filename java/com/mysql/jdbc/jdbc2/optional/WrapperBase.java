package com.mysql.jdbc.jdbc2.optional;

import com.mysql.jdbc.ExceptionInterceptor;
import com.mysql.jdbc.SQLError;
import com.mysql.jdbc.Util;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.sql.SQLException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class WrapperBase {
    protected ExceptionInterceptor exceptionInterceptor;
    protected MysqlPooledConnection pooledConnection;
    protected Map<Class<?>, Object> unwrappedInterfaces = null;

    protected void checkAndFireConnectionError(SQLException sQLException) throws SQLException {
        if (this.pooledConnection != null && SQLError.SQL_STATE_COMMUNICATION_LINK_FAILURE.equals(sQLException.getSQLState())) {
            this.pooledConnection.callConnectionEventListeners(1, sQLException);
            throw sQLException;
        }
        throw sQLException;
    }

    protected WrapperBase(MysqlPooledConnection mysqlPooledConnection) {
        this.pooledConnection = mysqlPooledConnection;
        this.exceptionInterceptor = this.pooledConnection.getExceptionInterceptor();
    }

    protected class ConnectionErrorFiringInvocationHandler implements InvocationHandler {
        Object invokeOn;

        public ConnectionErrorFiringInvocationHandler(Object obj) {
            this.invokeOn = null;
            this.invokeOn = obj;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            Object objInvoke;
            InvocationTargetException e;
            if ("equals".equals(method.getName())) {
                return Boolean.valueOf(objArr[0].equals(this));
            }
            try {
                objInvoke = method.invoke(this.invokeOn, objArr);
                if (objInvoke != null) {
                    try {
                        return proxyIfInterfaceIsJdbc(objInvoke, objInvoke.getClass());
                    } catch (InvocationTargetException e2) {
                        e = e2;
                        if (e.getTargetException() instanceof SQLException) {
                            WrapperBase.this.checkAndFireConnectionError((SQLException) e.getTargetException());
                            return objInvoke;
                        }
                        throw e;
                    }
                }
            } catch (InvocationTargetException e3) {
                objInvoke = null;
                e = e3;
            }
            return objInvoke;
        }

        private Object proxyIfInterfaceIsJdbc(Object obj, Class<?> cls) {
            Class<?>[] interfaces = cls.getInterfaces();
            if (interfaces.length <= 0) {
                return obj;
            }
            Class<?> cls2 = interfaces[0];
            String packageName = Util.getPackageName(cls2);
            if ("java.sql".equals(packageName) || "javax.sql".equals(packageName)) {
                return Proxy.newProxyInstance(obj.getClass().getClassLoader(), interfaces, WrapperBase.this.new ConnectionErrorFiringInvocationHandler(obj));
            }
            return proxyIfInterfaceIsJdbc(obj, cls2);
        }
    }
}
