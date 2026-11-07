package com.mysql.jdbc;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

/* JADX INFO: loaded from: classes.dex */
class NetworkResources {
    private final Socket mysqlConnection;
    private final InputStream mysqlInput;
    private final OutputStream mysqlOutput;

    protected NetworkResources(Socket socket, InputStream inputStream, OutputStream outputStream) {
        this.mysqlConnection = socket;
        this.mysqlInput = inputStream;
        this.mysqlOutput = outputStream;
    }

    protected final void forceClose() {
        try {
            try {
                if (this.mysqlInput != null) {
                    this.mysqlInput.close();
                }
                if (this.mysqlConnection != null && !this.mysqlConnection.isClosed() && !this.mysqlConnection.isInputShutdown()) {
                    this.mysqlConnection.shutdownInput();
                }
            } catch (Throwable th) {
                if (this.mysqlConnection != null && !this.mysqlConnection.isClosed() && !this.mysqlConnection.isInputShutdown()) {
                    try {
                        this.mysqlConnection.shutdownInput();
                    } catch (UnsupportedOperationException unused) {
                    }
                }
                throw th;
            }
        } catch (IOException | UnsupportedOperationException unused2) {
        }
        try {
            try {
                if (this.mysqlOutput != null) {
                    this.mysqlOutput.close();
                }
                if (this.mysqlConnection != null && !this.mysqlConnection.isClosed() && !this.mysqlConnection.isOutputShutdown()) {
                    this.mysqlConnection.shutdownOutput();
                }
            } catch (Throwable th2) {
                if (this.mysqlConnection != null && !this.mysqlConnection.isClosed() && !this.mysqlConnection.isOutputShutdown()) {
                    try {
                        this.mysqlConnection.shutdownOutput();
                    } catch (UnsupportedOperationException unused3) {
                    }
                }
                throw th2;
            }
        } catch (IOException | UnsupportedOperationException unused4) {
        }
        try {
            if (this.mysqlConnection != null) {
                this.mysqlConnection.close();
            }
        } catch (IOException unused5) {
        }
    }
}
