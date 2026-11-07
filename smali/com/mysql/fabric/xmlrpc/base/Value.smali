.class public Lcom/mysql/fabric/xmlrpc/base/Value;
.super Ljava/lang/Object;
.source "Value.java"


# static fields
.field public static final TYPE_array:B = 0x8t

.field public static final TYPE_base64:B = 0x6t

.field public static final TYPE_boolean:B = 0x2t

.field public static final TYPE_dateTime_iso8601:B = 0x5t

.field public static final TYPE_double:B = 0x4t

.field public static final TYPE_i4:B = 0x0t

.field public static final TYPE_int:B = 0x1t

.field public static final TYPE_string:B = 0x3t

.field public static final TYPE_struct:B = 0x7t


# instance fields
.field private dtf:Ljavax/xml/datatype/DatatypeFactory;

.field protected objType:B

.field protected objValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 46
    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 46
    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDouble(D)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 46
    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 53
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setInt(I)V

    return-void
.end method

.method public constructor <init>(Lcom/mysql/fabric/xmlrpc/base/Array;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 46
    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 81
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setArray(Lcom/mysql/fabric/xmlrpc/base/Array;)V

    return-void
.end method

.method public constructor <init>(Lcom/mysql/fabric/xmlrpc/base/Struct;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 46
    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 77
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setStruct(Lcom/mysql/fabric/xmlrpc/base/Struct;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 46
    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 57
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setString(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/GregorianCalendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 46
    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 69
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setDateTime(Ljava/util/GregorianCalendar;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 46
    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 61
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBoolean(Z)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 46
    iput-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 73
    invoke-virtual {p0, p1}, Lcom/mysql/fabric/xmlrpc/base/Value;->setBase64([B)V

    return-void
.end method

.method private escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 212
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 213
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x26

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_1

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_0

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v2, "&gt;"

    .line 222
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "&lt;"

    .line 219
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "&amp;"

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public appendString(Ljava/lang/String;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 109
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public getType()B
    .locals 1

    .line 89
    iget-byte v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setArray(Lcom/mysql/fabric/xmlrpc/base/Array;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 164
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setBase64([B)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 154
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setBoolean(Ljava/lang/String;)V
    .locals 2

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 121
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    :goto_1
    const/4 p1, 0x2

    .line 123
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setBoolean(Z)V
    .locals 0

    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 114
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/lang/String;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 149
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setDateTime(Ljava/util/GregorianCalendar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->dtf:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 141
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setDouble(D)V
    .locals 0

    .line 127
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 128
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setDouble(Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 133
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setInt(I)V
    .locals 0

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 94
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setInt(Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 99
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 104
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public setStruct(Lcom/mysql/fabric/xmlrpc/base/Struct;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 159
    iput-byte p1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<value>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    iget-byte v1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objType:B

    packed-switch v1, :pswitch_data_0

    .line 203
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<string>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mysql/fabric/xmlrpc/base/Value;->escapeXMLChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</string>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 199
    :pswitch_1
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Array;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Array;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 195
    :pswitch_2
    iget-object v1, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v1, Lcom/mysql/fabric/xmlrpc/base/Struct;

    invoke-virtual {v1}, Lcom/mysql/fabric/xmlrpc/base/Struct;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 191
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<base64>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</base64>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 187
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<dateTime.iso8601>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v2, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {v2}, Ljavax/xml/datatype/XMLGregorianCalendar;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</dateTime.iso8601>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 183
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<double>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</double>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 179
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<boolean>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</boolean>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 175
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<int>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</int>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<i4>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mysql/fabric/xmlrpc/base/Value;->objValue:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "</i4>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "</value>"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
