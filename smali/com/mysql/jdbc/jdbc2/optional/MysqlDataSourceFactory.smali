.class public Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;
.super Ljava/lang/Object;
.source "MysqlDataSourceFactory.java"

# interfaces
.implements Ljavax/naming/spi/ObjectFactory;


# static fields
.field protected static final DATA_SOURCE_CLASS_NAME:Ljava/lang/String; = "com.mysql.jdbc.jdbc2.optional.MysqlDataSource"

.field protected static final POOL_DATA_SOURCE_CLASS_NAME:Ljava/lang/String; = "com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource"

.field protected static final XA_DATA_SOURCE_CLASS_NAME:Ljava/lang/String; = "com.mysql.jdbc.jdbc2.optional.MysqlXADataSource"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;
    .locals 0

    .line 129
    invoke-virtual {p2, p1}, Ljavax/naming/Reference;->get(Ljava/lang/String;)Ljavax/naming/RefAddr;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Ljavax/naming/RefAddr;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getObjectInstance(Ljava/lang/Object;Ljavax/naming/Name;Ljavax/naming/Context;Ljava/util/Hashtable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljavax/naming/Name;",
            "Ljavax/naming/Context;",
            "Ljava/util/Hashtable<",
            "**>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    check-cast p1, Ljavax/naming/Reference;

    .line 65
    invoke-virtual {p1}, Ljavax/naming/Reference;->getClassName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string p3, "com.mysql.jdbc.jdbc2.optional.MysqlDataSource"

    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "com.mysql.jdbc.jdbc2.optional.MysqlConnectionPoolDataSource"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "com.mysql.jdbc.jdbc2.optional.MysqlXADataSource"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 72
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p2, 0xcea

    const-string p4, "port"

    .line 79
    invoke-direct {p0, p4, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 82
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 85
    :cond_1
    invoke-virtual {p3, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPort(I)V

    const-string p2, "user"

    .line 87
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 90
    invoke-virtual {p3, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setUser(Ljava/lang/String;)V

    :cond_2
    const-string p2, "password"

    .line 93
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 96
    invoke-virtual {p3, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPassword(Ljava/lang/String;)V

    :cond_3
    const-string p2, "serverName"

    .line 99
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 102
    invoke-virtual {p3, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setServerName(Ljava/lang/String;)V

    :cond_4
    const-string p2, "databaseName"

    .line 105
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 108
    invoke-virtual {p3, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setDatabaseName(Ljava/lang/String;)V

    :cond_5
    const-string p2, "explicitUrl"

    .line 111
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 114
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "url"

    .line 115
    invoke-direct {p0, p2, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSourceFactory;->nullSafeRefAddrStringGet(Ljava/lang/String;Ljavax/naming/Reference;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setUrl(Ljava/lang/String;)V

    .line 119
    :cond_6
    invoke-virtual {p3, p1}, Lcom/mysql/jdbc/jdbc2/optional/MysqlDataSource;->setPropertiesViaRef(Ljavax/naming/Reference;)V

    return-object p3

    :catch_0
    move-exception p1

    .line 74
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create DataSource of class \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\', reason: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method
