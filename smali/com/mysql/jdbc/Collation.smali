.class Lcom/mysql/jdbc/Collation;
.super Ljava/lang/Object;
.source "CharsetMapping.java"


# instance fields
.field public final collationName:Ljava/lang/String;

.field public final index:I

.field public final mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

.field public final priority:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 941
    iput p1, p0, Lcom/mysql/jdbc/Collation;->index:I

    .line 942
    iput-object p2, p0, Lcom/mysql/jdbc/Collation;->collationName:Ljava/lang/String;

    .line 943
    iput p3, p0, Lcom/mysql/jdbc/Collation;->priority:I

    .line 944
    sget-object p1, Lcom/mysql/jdbc/CharsetMapping;->CHARSET_NAME_TO_CHARSET:Ljava/util/Map;

    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/jdbc/MysqlCharset;

    iput-object p1, p0, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 950
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "index="

    .line 951
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    iget v1, p0, Lcom/mysql/jdbc/Collation;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",collationName="

    .line 953
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    iget-object v1, p0, Lcom/mysql/jdbc/Collation;->collationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",charsetName="

    .line 955
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    iget-object v1, p0, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    iget-object v1, v1, Lcom/mysql/jdbc/MysqlCharset;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",javaCharsetName="

    .line 957
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 958
    iget-object v1, p0, Lcom/mysql/jdbc/Collation;->mysqlCharset:Lcom/mysql/jdbc/MysqlCharset;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mysql/jdbc/MysqlCharset;->getMatchingJavaEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 959
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
