.class public final enum Lorg/andengine/input/sensor/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/andengine/input/sensor/b;

.field public static final enum b:Lorg/andengine/input/sensor/b;

.field public static final enum c:Lorg/andengine/input/sensor/b;

.field public static final enum d:Lorg/andengine/input/sensor/b;

.field private static final synthetic f:[Lorg/andengine/input/sensor/b;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/andengine/input/sensor/b;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v5}, Lorg/andengine/input/sensor/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/input/sensor/b;->a:Lorg/andengine/input/sensor/b;

    new-instance v0, Lorg/andengine/input/sensor/b;

    const-string v1, "UI"

    invoke-direct {v0, v1, v3, v4}, Lorg/andengine/input/sensor/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/input/sensor/b;->b:Lorg/andengine/input/sensor/b;

    new-instance v0, Lorg/andengine/input/sensor/b;

    const-string v1, "GAME"

    invoke-direct {v0, v1, v4, v3}, Lorg/andengine/input/sensor/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/input/sensor/b;->c:Lorg/andengine/input/sensor/b;

    new-instance v0, Lorg/andengine/input/sensor/b;

    const-string v1, "FASTEST"

    invoke-direct {v0, v1, v5, v2}, Lorg/andengine/input/sensor/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/input/sensor/b;->d:Lorg/andengine/input/sensor/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/input/sensor/b;

    sget-object v1, Lorg/andengine/input/sensor/b;->a:Lorg/andengine/input/sensor/b;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/input/sensor/b;->b:Lorg/andengine/input/sensor/b;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/input/sensor/b;->c:Lorg/andengine/input/sensor/b;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/input/sensor/b;->d:Lorg/andengine/input/sensor/b;

    aput-object v1, v0, v5

    sput-object v0, Lorg/andengine/input/sensor/b;->f:[Lorg/andengine/input/sensor/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/andengine/input/sensor/b;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/input/sensor/b;
    .locals 1

    const-class v0, Lorg/andengine/input/sensor/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/input/sensor/b;

    return-object v0
.end method

.method public static values()[Lorg/andengine/input/sensor/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/andengine/input/sensor/b;->f:[Lorg/andengine/input/sensor/b;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/input/sensor/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
