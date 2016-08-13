.class public final enum Lorg/andengine/input/sensor/location/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/andengine/input/sensor/location/b;

.field public static final enum b:Lorg/andengine/input/sensor/location/b;

.field public static final enum c:Lorg/andengine/input/sensor/location/b;

.field private static final synthetic d:[Lorg/andengine/input/sensor/location/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/andengine/input/sensor/location/b;

    const-string v1, "AVAILABLE"

    invoke-direct {v0, v1, v2}, Lorg/andengine/input/sensor/location/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/input/sensor/location/b;->a:Lorg/andengine/input/sensor/location/b;

    new-instance v0, Lorg/andengine/input/sensor/location/b;

    const-string v1, "OUT_OF_SERVICE"

    invoke-direct {v0, v1, v3}, Lorg/andengine/input/sensor/location/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/input/sensor/location/b;->b:Lorg/andengine/input/sensor/location/b;

    new-instance v0, Lorg/andengine/input/sensor/location/b;

    const-string v1, "TEMPORARILY_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lorg/andengine/input/sensor/location/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/input/sensor/location/b;->c:Lorg/andengine/input/sensor/location/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/andengine/input/sensor/location/b;

    sget-object v1, Lorg/andengine/input/sensor/location/b;->a:Lorg/andengine/input/sensor/location/b;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/input/sensor/location/b;->b:Lorg/andengine/input/sensor/location/b;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/input/sensor/location/b;->c:Lorg/andengine/input/sensor/location/b;

    aput-object v1, v0, v4

    sput-object v0, Lorg/andengine/input/sensor/location/b;->d:[Lorg/andengine/input/sensor/location/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/input/sensor/location/b;
    .locals 1

    const-class v0, Lorg/andengine/input/sensor/location/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/input/sensor/location/b;

    return-object v0
.end method

.method public static values()[Lorg/andengine/input/sensor/location/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/andengine/input/sensor/location/b;->d:[Lorg/andengine/input/sensor/location/b;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/input/sensor/location/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
