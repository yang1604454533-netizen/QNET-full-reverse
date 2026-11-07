.class public Lcom/mysql/jdbc/JDBC4CallableStatement;
.super Lcom/mysql/jdbc/CallableStatement;
.source "JDBC4CallableStatement.java"


# direct methods
.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Lcom/mysql/jdbc/CallableStatement$CallableStatementParamInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/CallableStatement;-><init>(Lcom/mysql/jdbc/MySQLConnection;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public getCharacterStream(I)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 143
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    .line 145
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 156
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mysql/jdbc/ResultSetInternalMethods;->getCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    .line 158
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getNCharacterStream(I)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 167
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 169
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNCharacterStream(I)Ljava/io/Reader;

    move-result-object p1

    .line 171
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 182
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNCharacterStream(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    .line 184
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getNClob(I)Ljava/sql/NClob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 195
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(I)Ljava/sql/NClob;

    move-result-object p1

    .line 197
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getNClob(Ljava/lang/String;)Ljava/sql/NClob;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 208
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNClob(Ljava/lang/String;)Ljava/sql/NClob;

    move-result-object p1

    .line 210
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getNString(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 219
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 221
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNString(I)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getNString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 234
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getNString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getRowId(I)Ljava/sql/RowId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 86
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(I)Ljava/sql/RowId;

    move-result-object p1

    .line 88
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getRowId(Ljava/lang/String;)Ljava/sql/RowId;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 96
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getRowId(Ljava/lang/String;)Ljava/sql/RowId;

    move-result-object p1

    .line 98
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getSQLXML(I)Ljava/sql/SQLXML;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->mapOutputParameterIndexToRsIndex(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(I)Ljava/sql/SQLXML;

    move-result-object p1

    .line 67
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getOutputParameters(I)Lcom/mysql/jdbc/ResultSetInternalMethods;

    move-result-object v0

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/mysql/jdbc/JDBC4ResultSet;

    invoke-virtual {p0, p1}, Lcom/mysql/jdbc/JDBC4CallableStatement;->fixParameterName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/mysql/jdbc/JDBC4ResultSet;->getSQLXML(Ljava/lang/String;)Ljava/sql/SQLXML;

    move-result-object p1

    .line 78
    invoke-interface {v0}, Lcom/mysql/jdbc/ResultSetInternalMethods;->wasNull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4CallableStatement;->outputParamWasNull:Z

    return-object p1
.end method

.method public setNClob(ILjava/sql/NClob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 115
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V

    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setNClob(ILjava/io/Reader;)V

    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/io/Reader;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setNClob(ILjava/io/Reader;J)V

    return-void
.end method

.method public setNClob(Ljava/lang/String;Ljava/sql/NClob;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setNClob(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/NClob;)V

    return-void
.end method

.method public setNString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4CallableStatement;->setNString(ILjava/lang/String;)V

    return-void
.end method

.method public setRowId(ILjava/sql/RowId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 46
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V

    return-void
.end method

.method public setRowId(Ljava/lang/String;Ljava/sql/RowId;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setRowId(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/RowId;)V

    return-void
.end method

.method public setSQLXML(ILjava/sql/SQLXML;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 54
    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V

    return-void
.end method

.method public setSQLXML(Ljava/lang/String;Ljava/sql/SQLXML;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/mysql/jdbc/JDBC4CallableStatement;->getNamedParamIndex(Ljava/lang/String;Z)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/mysql/jdbc/JDBC4PreparedStatementHelper;->setSQLXML(Lcom/mysql/jdbc/PreparedStatement;ILjava/sql/SQLXML;)V

    return-void
.end method
