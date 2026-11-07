package com.mysql.jdbc;

import java.io.CharArrayWriter;

/* JADX INFO: loaded from: classes.dex */
class WatchableWriter extends CharArrayWriter {
    private WriterWatcher watcher;

    WatchableWriter() {
    }

    @Override // java.io.CharArrayWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        if (this.watcher != null) {
            this.watcher.writerClosed(this);
        }
    }

    public void setWatcher(WriterWatcher writerWatcher) {
        this.watcher = writerWatcher;
    }
}
