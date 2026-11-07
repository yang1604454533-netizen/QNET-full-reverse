.class public Lcom/mysql/jdbc/util/ErrorMappingsDocGenerator;
.super Ljava/lang/Object;
.source "ErrorMappingsDocGenerator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/mysql/jdbc/SQLError;->dumpSqlStatesMappingsAsXml()V

    return-void
.end method
