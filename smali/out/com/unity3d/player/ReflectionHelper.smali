.class final Lcom/unity3d/player/ReflectionHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/ReflectionHelper$b;,
        Lcom/unity3d/player/ReflectionHelper$a;
    }
.end annotation


# static fields
.field protected static LOG:Z = false

.field protected static final LOGV:Z = false

.field private static a:[Lcom/unity3d/player/ReflectionHelper$a;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x1000

    new-array v0, v0, [Lcom/unity3d/player/ReflectionHelper$a;

    sput-object v0, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/unity3d/player/ReflectionHelper;->b:J

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/Class;)F
    .registers 3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_28

    :try_start_15
    invoke-virtual {p0, p1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0
    :try_end_19
    .catch Ljava/lang/ClassCastException; {:try_start_15 .. :try_end_19} :catch_1e

    if-eqz v0, :cond_1e

    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :catch_1e
    :cond_1e
    :try_start_1e
    invoke-virtual {p1, p0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/ClassCastException; {:try_start_1e .. :try_end_22} :catch_28

    if-eqz p0, :cond_28

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :catch_28
    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F
    .registers 9

    array-length v0, p2

    if-nez v0, :cond_7

    const p0, 0x3dcccccd    # 0.1f

    return p0

    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    :cond_c
    array-length v1, p1

    :goto_d
    add-int/lit8 v1, v1, 0x1

    array-length v2, p2

    if-eq v1, v2, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2c

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1a
    if-ge v0, v2, :cond_2c

    aget-object v4, p1, v0

    add-int/lit8 v5, v3, 0x1

    aget-object v3, p2, v3

    invoke-static {v4, v3}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result v3

    mul-float v1, v1, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_1a

    :cond_2c
    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Class;)F

    move-result p0

    mul-float v1, v1, p0

    return v1
.end method

.method static synthetic a()J
    .registers 2

    sget-wide v0, Lcom/unity3d/player/ReflectionHelper;->b:J

    return-wide v0
.end method

.method private static a(Ljava/lang/String;[I)Ljava/lang/Class;
    .registers 5

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_a8

    aget v1, p1, v0

    add-int/lit8 v2, v1, 0x1

    aput v2, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    const/16 v2, 0x29

    if-eq v1, v2, :cond_0

    const/16 v2, 0x4c

    if-ne v1, v2, :cond_41

    const/16 v1, 0x3b

    aget v2, p1, v0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a8

    aget v2, p1, v0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    const/16 p1, 0x2f

    const/16 v0, 0x2e

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :try_start_3c
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_40
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_40} :catch_a8

    return-object p0

    :cond_41
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_48

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_48
    const/16 v2, 0x49

    if-ne v1, v2, :cond_4f

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_4f
    const/16 v2, 0x46

    if-ne v1, v2, :cond_56

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_56
    const/16 v2, 0x56

    if-ne v1, v2, :cond_5d

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_5d
    const/16 v2, 0x42

    if-ne v1, v2, :cond_64

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_64
    const/16 v2, 0x43

    if-ne v1, v2, :cond_6b

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_6b
    const/16 v2, 0x53

    if-ne v1, v2, :cond_72

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_72
    const/16 v2, 0x4a

    if-ne v1, v2, :cond_79

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_79
    const/16 v2, 0x44

    if-ne v1, v2, :cond_80

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_80
    const/16 v2, 0x5b

    if-ne v1, v2, :cond_91

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;[I)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_91
    const/4 p0, 0x5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "! parseType; "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, " is not known!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :catch_a8
    :cond_a8
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyInvoke(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyLogJNIInvokeException(J)V

    return-void
.end method

.method private static declared-synchronized a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V
    .registers 5

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    sget-object p1, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    invoke-virtual {p0}, Lcom/unity3d/player/ReflectionHelper$a;->hashCode()I

    move-result v1

    sget-object v2, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aput-object p0, p1, v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized a(Lcom/unity3d/player/ReflectionHelper$a;)Z
    .registers 6

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    invoke-virtual {p0}, Lcom/unity3d/player/ReflectionHelper$a;->hashCode()I

    move-result v2

    sget-object v3, Lcom/unity3d/player/ReflectionHelper;->a:[Lcom/unity3d/player/ReflectionHelper$a;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/unity3d/player/ReflectionHelper$a;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_20

    if-nez v2, :cond_1a

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_1a
    :try_start_1a
    iget-object v1, v1, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    iput-object v1, p0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_20

    monitor-exit v0

    return v4

    :catchall_20
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/Class;
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_b
    aget v3, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1d

    invoke-static {p0, v0}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;[I)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    add-int/lit8 v3, v1, 0x1

    aput-object v2, p0, v1

    move v1, v3

    goto :goto_27

    :cond_39
    return-object p0
.end method

.method static synthetic b(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/unity3d/player/ReflectionHelper;->nativeProxyFinalize(J)V

    return-void
.end method

.method protected static endUnityLaunch()V
    .registers 4

    sget-wide v0, Lcom/unity3d/player/ReflectionHelper;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/unity3d/player/ReflectionHelper;->b:J

    return-void
.end method

.method protected static getConstructorID(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Constructor;
    .registers 12

    new-instance v0, Lcom/unity3d/player/ReflectionHelper$a;

    const-string v1, ""

    invoke-direct {v0, p0, v1, p1}, Lcom/unity3d/player/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Constructor;

    goto :goto_42

    :cond_12
    invoke-static {p1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1e
    if-ge v5, v4, :cond_3e

    aget-object v7, v3, v5

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v8

    cmpl-float v9, v8, v2

    if-lez v9, :cond_3b

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v8, v2

    if-eqz v2, :cond_39

    move-object v6, v7

    move v2, v8

    goto :goto_3b

    :cond_39
    move-object v6, v7

    goto :goto_3e

    :cond_3b
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_3e
    :goto_3e
    invoke-static {v0, v6}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V

    move-object v0, v6

    :goto_42
    if-eqz v0, :cond_45

    return-object v0

    :cond_45
    new-instance v0, Ljava/lang/NoSuchMethodError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<init>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method

.method protected static getFieldID(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .registers 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    new-instance v3, Lcom/unity3d/player/ReflectionHelper$a;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0, v1}, Lcom/unity3d/player/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1a

    iget-object v3, v3, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    check-cast v3, Ljava/lang/reflect/Field;

    goto/16 :goto_89

    :cond_1a
    invoke-static/range {p2 .. p2}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v8

    :goto_21
    if-eqz v4, :cond_85

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    array-length v11, v10

    move-object v12, v9

    move v9, v7

    const/4 v7, 0x0

    :goto_2b
    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v7, v11, :cond_5e

    aget-object v14, v10, v7

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-ne v2, v15, :cond_5b

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_5b

    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15, v8, v5}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v15

    cmpl-float v16, v15, v9

    if-lez v16, :cond_5b

    cmpl-float v9, v15, v13

    if-eqz v9, :cond_58

    move-object v12, v14

    move v9, v15

    goto :goto_5b

    :cond_58
    move-object v9, v14

    move v7, v15

    goto :goto_60

    :cond_5b
    :goto_5b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_5e
    move v7, v9

    move-object v9, v12

    :goto_60
    cmpl-float v10, v7, v13

    if-eqz v10, :cond_85

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-nez v10, :cond_85

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v10

    if-nez v10, :cond_85

    const-class v10, Ljava/lang/Object;

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    sget-object v10, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_85

    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_21

    :cond_85
    invoke-static {v3, v9}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V

    move-object v3, v9

    :goto_89
    if-nez v3, :cond_b0

    new-instance v3, Ljava/lang/NoSuchFieldError;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v2, :cond_95

    const-string v2, "static"

    goto :goto_97

    :cond_95
    const-string v2, "non-static"

    :goto_97
    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "no %s field with name=\'%s\' signature=\'%s\' in class L%s;"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b0
    return-object v3
.end method

.method protected static getFieldSignature(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "boolean"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "Z"

    return-object p0

    :cond_19
    const-string v0, "byte"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, "B"

    return-object p0

    :cond_24
    const-string v0, "char"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string p0, "C"

    return-object p0

    :cond_2f
    const-string v0, "double"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    const-string p0, "D"

    return-object p0

    :cond_3a
    const-string v0, "float"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string p0, "F"

    return-object p0

    :cond_45
    const-string v0, "int"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const-string p0, "I"

    return-object p0

    :cond_50
    const-string v0, "long"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string p0, "J"

    return-object p0

    :cond_5b
    const-string v0, "short"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string p0, "S"

    :cond_65
    return-object p0

    :cond_66
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "L"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static getMethodID(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;
    .registers 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    new-instance v3, Lcom/unity3d/player/ReflectionHelper$a;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0, v1}, Lcom/unity3d/player/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1a

    iget-object v3, v3, Lcom/unity3d/player/ReflectionHelper$a;->a:Ljava/lang/reflect/Member;

    check-cast v3, Ljava/lang/reflect/Method;

    goto/16 :goto_91

    :cond_1a
    invoke-static/range {p2 .. p2}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_20
    if-eqz v4, :cond_8d

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    array-length v11, v10

    move-object v12, v9

    move v9, v7

    const/4 v7, 0x0

    :goto_2a
    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v7, v11, :cond_61

    aget-object v14, v10, v7

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v15

    if-ne v2, v15, :cond_5e

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_5e

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-static {v15, v8, v5}, Lcom/unity3d/player/ReflectionHelper;->a(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Class;)F

    move-result v8

    cmpl-float v15, v8, v9

    if-lez v15, :cond_5e

    cmpl-float v9, v8, v13

    if-eqz v9, :cond_5b

    move v9, v8

    move-object v12, v14

    goto :goto_5e

    :cond_5b
    move v7, v8

    move-object v9, v14

    goto :goto_63

    :cond_5e
    :goto_5e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_61
    move v7, v9

    move-object v9, v12

    :goto_63
    cmpl-float v8, v7, v13

    if-eqz v8, :cond_8d

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_8d

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v8

    if-nez v8, :cond_8d

    const-class v8, Ljava/lang/Object;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8d

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8d

    if-eqz v2, :cond_87

    const/4 v4, 0x0

    goto :goto_20

    :cond_87
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    move-object v4, v8

    goto :goto_20

    :cond_8d
    invoke-static {v3, v9}, Lcom/unity3d/player/ReflectionHelper;->a(Lcom/unity3d/player/ReflectionHelper$a;Ljava/lang/reflect/Member;)V

    move-object v3, v9

    :goto_91
    if-nez v3, :cond_b8

    new-instance v3, Ljava/lang/NoSuchMethodError;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    if-eqz v2, :cond_9d

    const-string v2, "static"

    goto :goto_9f

    :cond_9d
    const-string v2, "non-static"

    :goto_9f
    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    const/4 v0, 0x2

    aput-object v1, v5, v0

    const/4 v0, 0x3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "no %s method with name=\'%s\' signature=\'%s\' in class L%s;"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b8
    return-object v3
.end method

.method private static native nativeProxyFinalize(J)V
.end method

.method private static native nativeProxyInvoke(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method private static native nativeProxyLogJNIInvokeException(J)V
.end method

.method protected static newProxyInstance(JLjava/lang/Class;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/unity3d/player/ReflectionHelper;->newProxyInstance(J[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static newProxyInstance(J[Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5

    const-class v0, Lcom/unity3d/player/ReflectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/ReflectionHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/unity3d/player/ReflectionHelper$1;-><init>(J[Ljava/lang/Class;)V

    invoke-static {v0, p2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected static setNativeExceptionOnProxy(Ljava/lang/Object;JZ)V
    .registers 4

    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    check-cast p0, Lcom/unity3d/player/ReflectionHelper$b;

    invoke-interface {p0, p1, p2, p3}, Lcom/unity3d/player/ReflectionHelper$b;->a(JZ)V

    return-void
.end method
