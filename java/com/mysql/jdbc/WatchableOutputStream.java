package com.mysql.jdbc;

import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
class WatchableOutputStream extends ByteArrayOutputStream {
    private OutputStreamWatcher watcher;

    WatchableOutputStream() {
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        if (this.watcher != null) {
            this.watcher.streamClosed(this);
        }
    }

    public void setWatcher(OutputStreamWatcher outputStreamWatcher) {
        this.watcher = outputStreamWatcher;
    }
}
