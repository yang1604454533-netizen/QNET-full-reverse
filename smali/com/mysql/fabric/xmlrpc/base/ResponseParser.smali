.class public Lcom/mysql/fabric/xmlrpc/base/ResponseParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ResponseParser.java"


# instance fields
.field elNames:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 41
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    .line 42
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v1, "name"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Member;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Member;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string v1, "value"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->appendString(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    const-string v1, "i4"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const-string v1, "boolean"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBoolean(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "string"

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->appendString(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "double"

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 139
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDouble(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string v1, "dateTime.iso8601"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 141
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDateTime(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v1, "base64"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 143
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBase64([B)V

    goto :goto_1

    .line 133
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mysql/fabric/xmlrpc/base/Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setInt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 147
    new-instance p2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    throw p2
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 75
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_b

    const-string p2, "methodResponse"

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    goto/16 :goto_0

    :cond_0
    const-string p2, "params"

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 80
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Params;

    .line 81
    iget-object p2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 82
    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->setParams(Lcom/mysql/fabric/xmlrpc/base/Params;)V

    goto/16 :goto_0

    :cond_1
    const-string p2, "param"

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 84
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Param;

    .line 85
    iget-object p2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/Params;

    .line 86
    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/Params;->addParam(Lcom/mysql/fabric/xmlrpc/base/Param;)V

    goto/16 :goto_0

    :cond_2
    const-string p2, "value"

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 88
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 89
    iget-object p2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    .line 90
    instance-of p3, p2, Lcom/mysql/fabric/xmlrpc/base/Data;

    if-eqz p3, :cond_3

    .line 91
    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/Data;

    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/Data;->addValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto/16 :goto_0

    .line 92
    :cond_3
    instance-of p3, p2, Lcom/mysql/fabric/xmlrpc/base/Param;

    if-eqz p3, :cond_4

    .line 93
    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/Param;

    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/Param;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto/16 :goto_0

    .line 94
    :cond_4
    instance-of p3, p2, Lcom/mysql/fabric/xmlrpc/base/Member;

    if-eqz p3, :cond_5

    .line 95
    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/Member;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto/16 :goto_0

    .line 96
    :cond_5
    instance-of p3, p2, Lcom/mysql/fabric/xmlrpc/base/Fault;

    if-eqz p3, :cond_b

    .line 97
    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/Fault;

    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/Fault;->setValue(Lcom/mysql/fabric/xmlrpc/base/Value;)V

    goto/16 :goto_0

    :cond_6
    const-string p2, "array"

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 100
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Array;

    .line 101
    iget-object p2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 102
    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setArray(Lcom/mysql/fabric/xmlrpc/base/Array;)V

    goto :goto_0

    :cond_7
    const-string p2, "data"

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 104
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Data;

    .line 105
    iget-object p2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/Array;

    .line 106
    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/Array;->setData(Lcom/mysql/fabric/xmlrpc/base/Data;)V

    goto :goto_0

    :cond_8
    const-string p2, "struct"

    .line 107
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 108
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Struct;

    .line 109
    iget-object p2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/Value;

    .line 110
    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setStruct(Lcom/mysql/fabric/xmlrpc/base/Struct;)V

    goto :goto_0

    :cond_9
    const-string p2, "member"

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 112
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Member;

    .line 113
    iget-object p2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/Struct;

    .line 114
    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/Struct;->addMember(Lcom/mysql/fabric/xmlrpc/base/Member;)V

    goto :goto_0

    :cond_a
    const-string p2, "fault"

    .line 115
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 116
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mysql/fabric/xmlrpc/base/Fault;

    .line 117
    iget-object p2, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    .line 118
    invoke-virtual {p2, p1}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;->setFault(Lcom/mysql/fabric/xmlrpc/base/Fault;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public getMethodResponse()Lcom/mysql/fabric/xmlrpc/base/MethodResponse;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->resp:Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-eqz p3, :cond_8

    .line 49
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->elNames:Ljava/util/Stack;

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "methodResponse"

    .line 51
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance p2, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;

    invoke-direct {p2}, Lcom/mysql/fabric/xmlrpc/base/MethodResponse;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_0
    const-string p1, "params"

    .line 53
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance p2, Lcom/mysql/fabric/xmlrpc/base/Params;

    invoke-direct {p2}, Lcom/mysql/fabric/xmlrpc/base/Params;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    const-string p1, "param"

    .line 55
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance p2, Lcom/mysql/fabric/xmlrpc/base/Param;

    invoke-direct {p2}, Lcom/mysql/fabric/xmlrpc/base/Param;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    const-string p1, "value"

    .line 57
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance p2, Lcom/mysql/fabric/xmlrpc/base/Value;

    invoke-direct {p2}, Lcom/mysql/fabric/xmlrpc/base/Value;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string p1, "array"

    .line 59
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance p2, Lcom/mysql/fabric/xmlrpc/base/Array;

    invoke-direct {p2}, Lcom/mysql/fabric/xmlrpc/base/Array;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    const-string p1, "data"

    .line 61
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 62
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance p2, Lcom/mysql/fabric/xmlrpc/base/Data;

    invoke-direct {p2}, Lcom/mysql/fabric/xmlrpc/base/Data;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const-string p1, "struct"

    .line 63
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 64
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance p2, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-direct {p2}, Lcom/mysql/fabric/xmlrpc/base/Struct;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    const-string p1, "member"

    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 66
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance p2, Lcom/mysql/fabric/xmlrpc/base/Member;

    invoke-direct {p2}, Lcom/mysql/fabric/xmlrpc/base/Member;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string p1, "fault"

    .line 67
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 68
    iget-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/ResponseParser;->objects:Ljava/util/Stack;

    new-instance p2, Lcom/mysql/fabric/xmlrpc/base/Fault;

    invoke-direct {p2}, Lcom/mysql/fabric/xmlrpc/base/Fault;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_0
    return-void
.end method
