.class public Lcom/mysql/jdbc/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mysql/jdbc/Util$RandStructcture;
    }
.end annotation


# static fields
.field private static final MYSQL_JDBC_PACKAGE_ROOT:Ljava/lang/String;

.field private static enclosingInstance:Lcom/mysql/jdbc/Util;

.field private static final implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static isColdFusion:Z

.field private static isJdbc4:Z

.field private static isJdbc42:Z

.field private static final isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static jvmUpdateNumber:I

.field private static jvmVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 61
    new-instance v0, Lcom/mysql/jdbc/Util;

    invoke-direct {v0}, Lcom/mysql/jdbc/Util;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/Util;->enclosingInstance:Lcom/mysql/jdbc/Util;

    const/4 v0, -0x1

    .line 67
    sput v0, Lcom/mysql/jdbc/Util;->jvmVersion:I

    .line 69
    sput v0, Lcom/mysql/jdbc/Util;->jvmUpdateNumber:I

    const/4 v1, 0x0

    .line 71
    sput-boolean v1, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "java.sql.NClob"

    .line 75
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 76
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isJdbc4:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    sput-boolean v1, Lcom/mysql/jdbc/Util;->isJdbc4:Z

    :goto_0
    :try_start_1
    const-string v3, "java.sql.JDBCType"

    .line 82
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isJdbc42:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 85
    :catch_1
    sput-boolean v1, Lcom/mysql/jdbc/Util;->isJdbc42:Z

    :goto_1
    const-string v3, "java.version"

    .line 88
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    if-eq v4, v0, :cond_0

    move v4, v5

    .line 92
    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    goto :goto_2

    :cond_0
    move v4, v5

    :cond_1
    if-le v4, v5, :cond_2

    .line 98
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/mysql/jdbc/Util;->jvmVersion:I

    goto :goto_4

    .line 101
    :cond_2
    sget-boolean v4, Lcom/mysql/jdbc/Util;->isJdbc42:Z

    if-eqz v4, :cond_3

    const/16 v4, 0x8

    goto :goto_3

    :cond_3
    sget-boolean v4, Lcom/mysql/jdbc/Util;->isJdbc4:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x6

    goto :goto_3

    :cond_4
    const/4 v4, 0x5

    :goto_3
    sput v4, Lcom/mysql/jdbc/Util;->jvmVersion:I

    :goto_4
    const-string v4, "_"

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    if-eq v4, v0, :cond_5

    move v4, v5

    .line 106
    :goto_5
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_6

    goto :goto_5

    :cond_5
    move v4, v5

    :cond_6
    if-le v4, v5, :cond_7

    .line 112
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/mysql/jdbc/Util;->jvmUpdateNumber:I

    .line 121
    :cond_7
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3}, Lcom/mysql/jdbc/Util;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    const-string v4, "coldfusion"

    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v2, 0x0

    :goto_6
    sput-boolean v2, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    goto :goto_7

    .line 126
    :cond_9
    sput-boolean v1, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    .line 571
    :goto_7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    .line 618
    const-class v0, Lcom/mysql/jdbc/MultiHostConnectionProxy;

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "jdbc"

    .line 620
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mysql/jdbc/Util;->MYSQL_JDBC_PACKAGE_ROOT:Ljava/lang/String;

    .line 635
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mysql/jdbc/Util;->implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDifferences(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Map<",
            "**>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 486
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 488
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 489
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 494
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_1

    .line 496
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    .line 497
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    goto :goto_1

    .line 500
    :cond_1
    :try_start_0
    new-instance v3, Ljava/lang/Double;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 501
    new-instance v1, Ljava/lang/Double;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    .line 507
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 511
    :cond_2
    instance-of v4, v1, Ljava/lang/Byte;

    if-eqz v4, :cond_3

    .line 512
    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    sub-int/2addr v3, v1

    int-to-byte v1, v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 513
    :cond_3
    instance-of v4, v1, Ljava/lang/Short;

    if-eqz v4, :cond_4

    .line 514
    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    sub-int/2addr v3, v1

    int-to-short v1, v3

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 515
    :cond_4
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    .line 516
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 517
    :cond_5
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_6

    .line 518
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 519
    :cond_6
    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_7

    .line 520
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 521
    :cond_7
    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_8

    .line 522
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->shortValue()S

    move-result v3

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->shortValue()S

    move-result v1

    sub-int/2addr v3, v1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 523
    :cond_8
    instance-of v4, v1, Ljava/math/BigDecimal;

    if-eqz v4, :cond_9

    .line 524
    check-cast v3, Ljava/math/BigDecimal;

    check-cast v1, Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 525
    :cond_9
    instance-of v4, v1, Ljava/math/BigInteger;

    if-eqz v4, :cond_0

    .line 526
    check-cast v3, Ljava/math/BigInteger;

    check-cast v1, Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public static getImplementedInterfaces(Ljava/lang/Class;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 647
    sget-object v0, Lcom/mysql/jdbc/Util;->implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 652
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v1, p0

    .line 655
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    check-cast v2, [Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 656
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 658
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    .line 659
    sget-object v1, Lcom/mysql/jdbc/Util;->implementedInterfacesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static getInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            "Lcom/mysql/jdbc/ExceptionInterceptor;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 408
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/mysql/jdbc/Util;->handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Can\'t instantiate required class"

    const-string p2, "S1000"

    .line 414
    invoke-static {p1, p2, p0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "Can\'t instantiate required class"

    const-string p2, "S1000"

    .line 412
    invoke-static {p1, p2, p0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    const-string p1, "Can\'t instantiate required class"

    const-string p2, "S1000"

    .line 410
    invoke-static {p1, p2, p0, p3}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static getJVMUpdateNumber()I
    .locals 1

    .line 147
    sget v0, Lcom/mysql/jdbc/Util;->jvmUpdateNumber:I

    return v0
.end method

.method public static getJVMVersion()I
    .locals 1

    .line 139
    sget v0, Lcom/mysql/jdbc/Util;->jvmVersion:I

    return v0
.end method

.method public static getPackageName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 712
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    .line 713
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 715
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static final handleNewInstance(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;[",
            "Ljava/lang/Object;",
            "Lcom/mysql/jdbc/ExceptionInterceptor;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 425
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 433
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .line 435
    instance-of p1, p0, Ljava/sql/SQLException;

    if-nez p1, :cond_1

    .line 439
    instance-of p1, p0, Ljava/lang/ExceptionInInitializerError;

    if-eqz p1, :cond_0

    .line 440
    check-cast p0, Ljava/lang/ExceptionInInitializerError;

    invoke-virtual {p0}, Ljava/lang/ExceptionInInitializerError;->getException()Ljava/lang/Throwable;

    move-result-object p0

    .line 443
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S1000"

    invoke-static {p1, v0, p0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    .line 436
    :cond_1
    check-cast p0, Ljava/sql/SQLException;

    throw p0

    :catch_1
    move-exception p0

    const-string p1, "Can\'t instantiate required class"

    const-string v0, "S1000"

    .line 431
    invoke-static {p1, v0, p0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    const-string p1, "Can\'t instantiate required class"

    const-string v0, "S1000"

    .line 429
    invoke-static {p1, v0, p0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    const-string p1, "Can\'t instantiate required class"

    const-string v0, "S1000"

    .line 427
    invoke-static {p1, v0, p0, p2}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p0

    throw p0
.end method

.method public static hashPre41Password(Ljava/lang/String;)[J
    .locals 1

    .line 214
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object p0

    return-object p0
.end method

.method public static hashPre41Password(Ljava/lang/String;Ljava/lang/String;)[J
    .locals 2

    :try_start_0
    const-string v0, "\\s"

    const-string v1, ""

    .line 207
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/mysql/jdbc/Util;->newHash([B)[J

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    .line 209
    new-array p0, p0, [J

    return-object p0
.end method

.method public static interfaceExists(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "java.net.NetworkInterface"

    .line 457
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getByName"

    const/4 v3, 0x0

    .line 458
    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p0, v4, v0

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    return v0
.end method

.method public static isColdFusion()Z
    .locals 1

    .line 151
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isColdFusion:Z

    return v0
.end method

.method public static isCommunityEdition(Ljava/lang/String;)Z
    .locals 0

    .line 158
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->isEnterpriseEdition(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isEnterpriseEdition(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "enterprise"

    .line 165
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "commercial"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "advanced"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isJdbc4()Z
    .locals 1

    .line 131
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc4:Z

    return v0
.end method

.method public static isJdbc42()Z
    .locals 1

    .line 135
    sget-boolean v0, Lcom/mysql/jdbc/Util;->isJdbc42:Z

    return v0
.end method

.method public static isJdbcInterface(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 584
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 586
    :try_start_0
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->getPackageName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->isJdbcPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 598
    :catch_0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v0, v4

    .line 599
    invoke-static {v5}, Lcom/mysql/jdbc/Util;->isJdbcInterface(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 600
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 605
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->isJdbcInterface(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 606
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 610
    :cond_4
    sget-object v0, Lcom/mysql/jdbc/Util;->isJdbcInterfaceCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v3
.end method

.method public static isJdbcPackage(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "java.sql"

    .line 630
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "javax.sql"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mysql/jdbc/Util;->MYSQL_JDBC_PACKAGE_ROOT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static jvmMeetsMinimum(II)Z
    .locals 1

    .line 143
    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v0

    if-gt v0, p0, :cond_1

    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMVersion()I

    move-result v0

    if-ne v0, p0, :cond_0

    invoke-static {}, Lcom/mysql/jdbc/Util;->getJVMUpdateNumber()I

    move-result p0

    if-lt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static loadExtensions(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;Ljava/lang/String;Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mysql/jdbc/Connection;",
            "Ljava/util/Properties;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mysql/jdbc/ExceptionInterceptor;",
            ")",
            "Ljava/util/List<",
            "Lcom/mysql/jdbc/Extension;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, ","

    const/4 v2, 0x1

    .line 548
    invoke-static {p2, v1, v2}, Lcom/mysql/jdbc/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 553
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 554
    :try_start_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 555
    :try_start_2
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mysql/jdbc/Extension;

    .line 556
    invoke-interface {v5, p0, p1}, Lcom/mysql/jdbc/Extension;->init(Lcom/mysql/jdbc/Connection;Ljava/util/Properties;)V

    .line 558
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    move-object v5, v6

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v6, v5

    goto :goto_1

    :cond_0
    return-object v0

    :catch_2
    move-exception p0

    move-object v6, v3

    .line 561
    :goto_1
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v6, p1, v1

    invoke-static {p3, p1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p4}, Lcom/mysql/jdbc/SQLError;->createSQLException(Ljava/lang/String;Lcom/mysql/jdbc/ExceptionInterceptor;)Ljava/sql/SQLException;

    move-result-object p1

    .line 562
    invoke-virtual {p1, p0}, Ljava/sql/SQLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 564
    throw p1
.end method

.method public static newCrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    if-eqz v0, :cond_3

    .line 173
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 177
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mysql/jdbc/Util;->newHash([B)[J

    move-result-object v1

    move-object/from16 v2, p2

    .line 178
    invoke-static {v0, v2}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;Ljava/lang/String;)[J

    move-result-object v0

    const-wide/32 v2, 0x3fffffff

    const/4 v4, 0x0

    .line 180
    aget-wide v5, v1, v4

    aget-wide v7, v0, v4

    xor-long/2addr v5, v7

    rem-long/2addr v5, v2

    const/4 v7, 0x1

    .line 181
    aget-wide v8, v1, v7

    aget-wide v10, v0, v7

    xor-long v0, v8, v10

    rem-long/2addr v0, v2

    .line 182
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    new-array v7, v7, [C

    move-wide v8, v0

    const/4 v0, 0x0

    .line 184
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    const-wide/high16 v10, 0x403f000000000000L    # 31.0

    const-wide/16 v12, 0x21

    const-wide/16 v14, 0x3

    if-ge v0, v1, :cond_1

    mul-long v5, v5, v14

    add-long/2addr v5, v8

    .line 185
    rem-long/2addr v5, v2

    add-long/2addr v8, v5

    add-long/2addr v8, v12

    .line 186
    rem-long/2addr v8, v2

    long-to-double v12, v5

    long-to-double v14, v2

    div-double/2addr v12, v14

    mul-double v12, v12, v10

    const-wide/high16 v10, 0x4050000000000000L    # 64.0

    add-double/2addr v12, v10

    .line 188
    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v1, v10

    int-to-byte v1, v1

    int-to-char v1, v1

    .line 189
    aput-char v1, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    mul-long v5, v5, v14

    const/4 v0, 0x0

    add-long/2addr v5, v8

    .line 192
    rem-long/2addr v5, v2

    add-long/2addr v8, v5

    add-long/2addr v8, v12

    .line 193
    rem-long/2addr v8, v2

    long-to-double v0, v5

    long-to-double v2, v2

    div-double/2addr v0, v2

    mul-double v0, v0, v10

    .line 195
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-byte v0, v0

    .line 197
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 198
    aget-char v1, v7, v4

    int-to-char v2, v0

    xor-int/2addr v1, v2

    int-to-char v1, v1

    aput-char v1, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 201
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_3
    :goto_2
    return-object v0
.end method

.method static newHash([B)[J
    .locals 17

    move-object/from16 v0, p0

    .line 223
    array-length v1, v0

    const/4 v2, 0x0

    const-wide/32 v3, 0x50305735

    const-wide/16 v5, 0x7

    const-wide/32 v7, 0x12345671

    move-wide v8, v7

    move-wide v6, v5

    move-wide v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v10, v0, v3

    and-int/lit16 v10, v10, 0xff

    int-to-long v10, v10

    const-wide/16 v12, 0x3f

    and-long/2addr v12, v4

    add-long/2addr v12, v6

    mul-long v12, v12, v10

    const/16 v14, 0x8

    shl-long v15, v4, v14

    add-long/2addr v12, v15

    xor-long/2addr v4, v12

    shl-long v12, v8, v14

    xor-long/2addr v12, v4

    add-long/2addr v8, v12

    add-long/2addr v6, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 230
    new-array v0, v0, [J

    const-wide/32 v6, 0x7fffffff

    and-long v3, v4, v6

    aput-wide v3, v0, v2

    and-long v1, v8, v6

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public static oldCrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    if-eqz p0, :cond_2

    .line 246
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->oldHash(Ljava/lang/String;)J

    move-result-wide v0

    .line 251
    invoke-static {p0}, Lcom/mysql/jdbc/Util;->oldHash(Ljava/lang/String;)J

    move-result-wide v2

    xor-long/2addr v0, v2

    const-wide/32 v2, 0x1ffffff

    .line 254
    rem-long/2addr v0, v2

    const-wide/16 v4, 0x2

    .line 256
    div-long v4, v0, v4

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    new-array p0, p0, [C

    const/4 v6, 0x0

    .line 260
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    const-wide/16 v7, 0x3

    mul-long v0, v0, v7

    add-long/2addr v0, v4

    .line 261
    rem-long/2addr v0, v2

    add-long/2addr v4, v0

    const-wide/16 v7, 0x21

    add-long/2addr v4, v7

    .line 262
    rem-long/2addr v4, v2

    long-to-double v7, v0

    long-to-double v9, v2

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x403f000000000000L    # 31.0

    mul-double v7, v7, v9

    const-wide/high16 v9, 0x4050000000000000L    # 64.0

    add-double/2addr v7, v9

    .line 264
    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    int-to-byte v7, v7

    int-to-char v7, v7

    .line 265
    aput-char v7, p0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 268
    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_2
    :goto_1
    return-object p0
.end method

.method static oldHash(Ljava/lang/String;)J
    .locals 11

    const-wide/32 v0, 0x50305735

    const-wide/16 v2, 0x7

    const/4 v4, 0x0

    .line 276
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 277
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 281
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3f

    and-long/2addr v7, v0

    add-long/2addr v7, v2

    mul-long v7, v7, v5

    const/16 v9, 0x8

    shl-long v9, v0, v9

    add-long/2addr v7, v9

    xor-long/2addr v0, v7

    add-long/2addr v2, v5

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static randomInit(JJ)Lcom/mysql/jdbc/Util$RandStructcture;
    .locals 3

    .line 290
    new-instance v0, Lcom/mysql/jdbc/Util$RandStructcture;

    sget-object v1, Lcom/mysql/jdbc/Util;->enclosingInstance:Lcom/mysql/jdbc/Util;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/mysql/jdbc/Util$RandStructcture;-><init>(Lcom/mysql/jdbc/Util;)V

    const-wide/32 v1, 0x3fffffff

    .line 292
    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    .line 293
    iget-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    long-to-double v1, v1

    iput-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValueDbl:D

    .line 294
    iget-wide v1, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long/2addr p0, v1

    iput-wide p0, v0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    .line 295
    iget-wide p0, v0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long/2addr p2, p0

    iput-wide p2, v0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    return-object v0
.end method

.method public static readObject(Ljava/sql/ResultSet;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-interface {p0, p1}, Ljava/sql/ResultSet;->getBinaryStream(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .line 316
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    return-object p0
.end method

.method public static resultSetToMap(Ljava/util/Map;Ljava/sql/ResultSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 466
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 467
    invoke-interface {p1, v0}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static resultSetToMap(Ljava/util/Map;Ljava/sql/ResultSet;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 473
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static resultSetToMap(Ljava/util/Map;Ljava/sql/ResultSet;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 480
    :goto_0
    invoke-interface {p1}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-interface {p1, p2}, Ljava/sql/ResultSet;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, p3}, Ljava/sql/ResultSet;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static rnd(Lcom/mysql/jdbc/Util$RandStructcture;)D
    .locals 4

    .line 322
    iget-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    const-wide/16 v2, 0x3

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    .line 323
    iget-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x21

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValue:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed2:J

    .line 325
    iget-wide v0, p0, Lcom/mysql/jdbc/Util$RandStructcture;->seed1:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/mysql/jdbc/Util$RandStructcture;->maxValueDbl:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static scramble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/16 v0, 0x8

    .line 335
    new-array v1, v0, [B

    const-string v2, ""

    const/4 v3, 0x0

    .line 338
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 340
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 341
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->hashPre41Password(Ljava/lang/String;)[J

    move-result-object p1

    .line 342
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mysql/jdbc/Util;->newHash([B)[J

    move-result-object v0

    .line 344
    aget-wide v4, p1, v3

    aget-wide v6, v0, v3

    xor-long/2addr v4, v6

    const/4 v2, 0x1

    aget-wide v6, p1, v2

    aget-wide v8, v0, v2

    xor-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Lcom/mysql/jdbc/Util;->randomInit(JJ)Lcom/mysql/jdbc/Util$RandStructcture;

    move-result-object p1

    .line 347
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v4, v0, 0x1

    const-wide/high16 v5, 0x403f000000000000L    # 31.0

    if-ge v0, p0, :cond_0

    add-int/lit8 v0, v2, 0x1

    .line 351
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->rnd(Lcom/mysql/jdbc/Util$RandStructcture;)D

    move-result-wide v7

    mul-double v7, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x4050000000000000L    # 64.0

    add-double/2addr v5, v7

    double-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    move v2, v0

    move v0, v4

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {p1}, Lcom/mysql/jdbc/Util;->rnd(Lcom/mysql/jdbc/Util$RandStructcture;)D

    move-result-wide p0

    mul-double p0, p0, v5

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    int-to-byte p0, p0

    .line 357
    :goto_1
    array-length p1, v1

    if-ge v3, p1, :cond_1

    .line 358
    aget-byte p1, v1, v3

    xor-int/2addr p1, p0

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 361
    :cond_1
    invoke-static {v1}, Lcom/mysql/jdbc/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public static secondsSinceMillis(J)J
    .locals 2

    .line 675
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/16 p0, 0x3e8

    div-long/2addr v0, p0

    return-wide v0
.end method

.method public static stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Util.1"

    .line 378
    invoke-static {v1}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    .line 381
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "Util.2"

    .line 386
    invoke-static {v2}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 392
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 394
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    const-string p0, "Util.3"

    .line 396
    invoke-static {p0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "Util.4"

    .line 400
    invoke-static {p0}, Lcom/mysql/jdbc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static truncateAndConvertToInt(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 p0, -0x80000000

    goto :goto_0

    :cond_1
    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static truncateAndConvertToInt([J)[I
    .locals 6

    .line 695
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 697
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    .line 698
    aget-wide v2, p0, v1

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    goto :goto_1

    :cond_0
    aget-wide v2, p0, v1

    const-wide/32 v4, -0x80000000

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/high16 v2, -0x80000000

    goto :goto_1

    :cond_1
    aget-wide v2, p0, v1

    long-to-int v2, v2

    :goto_1
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
