.class Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "JDBC4MysqlSQLXML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mysql/jdbc/JDBC4MysqlSQLXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleSaxToReader"
.end annotation


# instance fields
.field buf:Ljava/lang/StringBuilder;

.field private inCDATA:Z

.field final synthetic this$0:Lcom/mysql/jdbc/JDBC4MysqlSQLXML;


# direct methods
.method constructor <init>(Lcom/mysql/jdbc/JDBC4MysqlSQLXML;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->this$0:Lcom/mysql/jdbc/JDBC4MysqlSQLXML;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 658
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    .line 697
    iput-boolean p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->inCDATA:Z

    return-void
.end method

.method private escapeCharsForXml(CZ)V
    .locals 3

    const/16 v0, 0xd

    if-eq p1, v0, :cond_9

    const/16 v0, 0x22

    if-eq p1, v0, :cond_7

    const/16 v0, 0x26

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    const/16 v1, 0xa

    const/16 v2, 0x9

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_0

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_3

    :cond_0
    const/16 v0, 0x7f

    if-lt p1, v0, :cond_1

    const/16 v0, 0x9f

    if-le p1, v0, :cond_3

    :cond_1
    const/16 v0, 0x2028

    if-eq p1, v0, :cond_3

    if-eqz p2, :cond_2

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 782
    :cond_2
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 778
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v0, "&#x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 753
    :cond_4
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, "&gt;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 749
    :cond_5
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, "&lt;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 757
    :cond_6
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, "&amp;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    if-nez p2, :cond_8

    .line 763
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 765
    :cond_8
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, "&quot;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 771
    :cond_9
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, "&#xD;"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method private escapeCharsForXml(Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 728
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 731
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->escapeCharsForXml(CZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private escapeCharsForXml([CIIZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    add-int v1, p2, v0

    .line 742
    aget-char v1, p1, v1

    invoke-direct {p0, v1, p4}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->escapeCharsForXml(CZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 686
    iget-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->inCDATA:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 687
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->escapeCharsForXml([CIIZ)V

    goto :goto_0

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public comment([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 713
    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    add-int v2, p2, v0

    aget-char v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, "-->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 705
    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->inCDATA:Z

    .line 706
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 694
    invoke-virtual {p0, p1, p2, p3}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->characters([CII)V

    return-void
.end method

.method public startCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 701
    iput-boolean v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->inCDATA:Z

    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 661
    iget-object v0, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\'1.0\' encoding=\'UTF-8\'?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 670
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, "<"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 674
    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 675
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->escapeCharsForXml(Ljava/lang/String;Z)V

    .line 678
    iget-object p2, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p3, "\""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 682
    :cond_0
    iget-object p1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method toReader()Ljava/io/Reader;
    .locals 2

    .line 720
    new-instance v0, Ljava/io/StringReader;

    iget-object v1, p0, Lcom/mysql/jdbc/JDBC4MysqlSQLXML$SimpleSaxToReader;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
