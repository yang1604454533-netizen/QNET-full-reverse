.class public Lcom/tencent/qnet/common/MySqlAdapter;
.super Ljava/lang/Object;
.source "MySqlAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CloseConnection(Ljava/sql/Connection;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 46
    :try_start_0
    invoke-interface {p0}, Ljava/sql/Connection;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static execSQL(Ljava/sql/Connection;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 158
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    :catch_0
    const/4 v1, 0x0

    .line 166
    :try_start_1
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    .line 169
    :try_start_2
    invoke-interface {p0, p1}, Ljava/sql/Statement;->execute(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 178
    :try_start_3
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 174
    :goto_1
    :try_start_4
    sget-object p0, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insert Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    .line 178
    :try_start_5
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_3
    :cond_2
    :goto_2
    return v0

    :goto_3
    if-eqz v1, :cond_3

    :try_start_6
    invoke-interface {v1}, Ljava/sql/Statement;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_4

    .line 183
    :catch_4
    :cond_3
    throw p1
.end method

.method public static openConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/sql/Connection;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.mysql.jdbc.Driver"

    .line 29
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-string v1, "%s?user=%s&password=%s&useUnicode=true&characterEncoding=utf-8"

    const/4 v2, 0x3

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object p2, v2, p0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0}, Ljava/sql/DriverManager;->getConnection(Ljava/lang/String;)Ljava/sql/Connection;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 37
    :goto_0
    sget-object p1, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception 111:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 34
    :goto_1
    sget-object p1, Lcom/tencent/qnet/global/GlobalSettings;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public static query(Ljava/sql/Connection;Ljava/lang/String;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 59
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    .line 68
    :catch_0
    :try_start_1
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 69
    :try_start_2
    invoke-interface {p0, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v1

    .line 71
    invoke-interface {v1}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v2

    if-eqz p1, :cond_3

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 74
    :goto_0
    :try_start_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x1

    :goto_1
    if-gt v4, v2, :cond_1

    .line 77
    invoke-interface {v1, v4}, Ljava/sql/ResultSetMetaData;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 87
    :try_start_5
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_4
    if-eqz p0, :cond_7

    .line 91
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_4

    :catch_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_5

    :catch_4
    move-exception p0

    move-object p1, v0

    move-object v3, p1

    move-object v0, p0

    move-object p0, v3

    .line 83
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz p1, :cond_5

    .line 87
    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_5
    if-eqz p0, :cond_6

    .line 91
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_5

    :catch_5
    :cond_6
    move-object v0, v3

    :catch_6
    :cond_7
    :goto_4
    return-object v0

    :catchall_2
    move-exception v0

    :goto_5
    if-eqz p1, :cond_8

    .line 87
    :try_start_8
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_8
    if-eqz p0, :cond_9

    .line 91
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_7

    .line 98
    :catch_7
    :cond_9
    throw v0
.end method

.method public static queryVersion(Ljava/sql/Connection;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 114
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    :catch_0
    const/4 v1, 0x0

    .line 125
    :try_start_1
    invoke-interface {p0}, Ljava/sql/Connection;->createStatement()Ljava/sql/Statement;

    move-result-object p0
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    :try_start_2
    invoke-interface {p0, p1}, Ljava/sql/Statement;->executeQuery(Ljava/lang/String;)Ljava/sql/ResultSet;

    move-result-object p1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_1

    .line 127
    :try_start_3
    invoke-interface {p1}, Ljava/sql/ResultSet;->first()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CurVersion"

    .line 128
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->findColumn(Ljava/lang/String;)I

    move-result v1

    .line 129
    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 137
    :try_start_4
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_2
    if-eqz p0, :cond_4

    .line 141
    :goto_1
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object p1, v1

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v1

    move-object p1, p0

    goto :goto_4

    :catch_3
    move-exception p0

    move-object p1, v1

    move-object v1, p0

    move-object p0, p1

    .line 133
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p1, :cond_3

    .line 137
    :try_start_6
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V
    :try_end_6
    .catch Ljava/sql/SQLException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    if-eqz p0, :cond_4

    goto :goto_1

    :catch_4
    :cond_4
    :goto_3
    return v0

    :catchall_2
    move-exception v0

    :goto_4
    if-eqz p1, :cond_5

    :try_start_7
    invoke-interface {p1}, Ljava/sql/ResultSet;->close()V

    :cond_5
    if-eqz p0, :cond_6

    .line 141
    invoke-interface {p0}, Ljava/sql/Statement;->close()V
    :try_end_7
    .catch Ljava/sql/SQLException; {:try_start_7 .. :try_end_7} :catch_5

    .line 148
    :catch_5
    :cond_6
    throw v0
.end method
