.class public Lcom/mysql/jdbc/util/ResultSetUtil;
.super Ljava/lang/Object;
.source "ResultSetUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendResultSetSlashGStyle(Ljava/lang/StringBuilder;Ljava/sql/ResultSet;)Ljava/lang/StringBuilder;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Ljava/sql/ResultSet;->getMetaData()Ljava/sql/ResultSetMetaData;

    move-result-object v0

    .line 38
    invoke-interface {v0}, Ljava/sql/ResultSetMetaData;->getColumnCount()I

    move-result v1

    .line 41
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 44
    invoke-interface {v0, v6}, Ljava/sql/ResultSetMetaData;->getColumnLabel(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v4

    .line 46
    aget-object v7, v2, v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v5, :cond_0

    .line 47
    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v4

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 53
    :goto_1
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "*************************** "

    .line 54
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". row ***************************\n"

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_4

    .line 59
    aget-object v6, v2, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v5, v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_2

    const-string v8, " "

    .line 62
    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 65
    :cond_2
    aget-object v6, v2, v0

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    .line 66
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    .line 68
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 71
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    const-string v6, "NULL"

    .line 73
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v6, "\n"

    .line 76
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v0, "\n"

    .line 79
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v4

    goto :goto_1

    :cond_5
    return-object p0
.end method
