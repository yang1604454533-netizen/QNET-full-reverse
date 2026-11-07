package com.mysql.jdbc;

import java.sql.SQLException;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class IterateBlock<T> {
    DatabaseMetaData.IteratorWithCleanup<T> iteratorWithCleanup;
    Iterator<T> javaIterator;
    boolean stopIterating;

    abstract void forEach(T t) throws SQLException;

    IterateBlock(DatabaseMetaData.IteratorWithCleanup<T> iteratorWithCleanup) {
        this.stopIterating = false;
        this.iteratorWithCleanup = iteratorWithCleanup;
        this.javaIterator = null;
    }

    IterateBlock(Iterator<T> it) {
        this.stopIterating = false;
        this.javaIterator = it;
        this.iteratorWithCleanup = null;
    }

    public void doForAll() throws SQLException {
        if (this.iteratorWithCleanup != null) {
            while (this.iteratorWithCleanup.hasNext()) {
                try {
                    forEach(this.iteratorWithCleanup.next());
                    if (this.stopIterating) {
                        break;
                    }
                } finally {
                    this.iteratorWithCleanup.close();
                }
            }
            return;
        }
        while (this.javaIterator.hasNext()) {
            forEach(this.javaIterator.next());
            if (this.stopIterating) {
                return;
            }
        }
    }

    public final boolean fullIteration() {
        return !this.stopIterating;
    }
}
