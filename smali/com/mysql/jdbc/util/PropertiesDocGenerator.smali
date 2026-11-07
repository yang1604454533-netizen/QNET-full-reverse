.class public Lcom/mysql/jdbc/util/PropertiesDocGenerator;
.super Lcom/mysql/jdbc/ConnectionPropertiesImpl;
.source "PropertiesDocGenerator.java"


# static fields
.field static final serialVersionUID:J = -0x43949c78a93f4d17L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/mysql/jdbc/ConnectionPropertiesImpl;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 38
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Lcom/mysql/jdbc/util/PropertiesDocGenerator;

    invoke-direct {v0}, Lcom/mysql/jdbc/util/PropertiesDocGenerator;-><init>()V

    invoke-virtual {v0}, Lcom/mysql/jdbc/util/PropertiesDocGenerator;->exposeAsXml()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method
