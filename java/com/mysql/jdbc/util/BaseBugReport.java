package com.mysql.jdbc.util;

import com.mysql.jdbc.Driver;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseBugReport {
    private Connection conn;
    private Driver driver;

    public String getUrl() {
        return "jdbc:mysql:///test";
    }

    public abstract void runTest() throws Exception;

    public abstract void setUp() throws Exception;

    public abstract void tearDown() throws Exception;

    public BaseBugReport() {
        try {
            this.driver = new Driver();
        } catch (SQLException e) {
            throw new RuntimeException(e.toString());
        }
    }

    public final void run() throws Exception {
        try {
            setUp();
            runTest();
        } finally {
            tearDown();
        }
    }

    protected final void assertTrue(String str, boolean z) throws Exception {
        if (z) {
            return;
        }
        throw new Exception("Assertion failed: " + str);
    }

    protected final void assertTrue(boolean z) throws Exception {
        assertTrue("(no message given)", z);
    }

    public final synchronized Connection getConnection() throws SQLException {
        if (this.conn == null || this.conn.isClosed()) {
            this.conn = getNewConnection();
        }
        return this.conn;
    }

    public final synchronized Connection getNewConnection() throws SQLException {
        return getConnection(getUrl());
    }

    public final synchronized Connection getConnection(String str) throws SQLException {
        return getConnection(str, null);
    }

    public final synchronized Connection getConnection(String str, Properties properties) throws SQLException {
        return this.driver.connect(str, properties);
    }
}
