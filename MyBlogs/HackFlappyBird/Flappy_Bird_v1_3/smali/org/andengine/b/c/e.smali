.class public final enum Lorg/andengine/b/c/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/andengine/b/c/e;

.field public static final enum b:Lorg/andengine/b/c/e;

.field public static final enum c:Lorg/andengine/b/c/e;

.field public static final enum d:Lorg/andengine/b/c/e;

.field private static final synthetic e:[Lorg/andengine/b/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/andengine/b/c/e;

    const-string v1, "LANDSCAPE_FIXED"

    invoke-direct {v0, v1, v2}, Lorg/andengine/b/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/b/c/e;->a:Lorg/andengine/b/c/e;

    new-instance v0, Lorg/andengine/b/c/e;

    const-string v1, "LANDSCAPE_SENSOR"

    invoke-direct {v0, v1, v3}, Lorg/andengine/b/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/b/c/e;->b:Lorg/andengine/b/c/e;

    new-instance v0, Lorg/andengine/b/c/e;

    const-string v1, "PORTRAIT_FIXED"

    invoke-direct {v0, v1, v4}, Lorg/andengine/b/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/b/c/e;->c:Lorg/andengine/b/c/e;

    new-instance v0, Lorg/andengine/b/c/e;

    const-string v1, "PORTRAIT_SENSOR"

    invoke-direct {v0, v1, v5}, Lorg/andengine/b/c/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/b/c/e;->d:Lorg/andengine/b/c/e;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/b/c/e;

    sget-object v1, Lorg/andengine/b/c/e;->a:Lorg/andengine/b/c/e;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/b/c/e;->b:Lorg/andengine/b/c/e;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/b/c/e;->c:Lorg/andengine/b/c/e;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/b/c/e;->d:Lorg/andengine/b/c/e;

    aput-object v1, v0, v5

    sput-object v0, Lorg/andengine/b/c/e;->e:[Lorg/andengine/b/c/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/b/c/e;
    .locals 1

    const-class v0, Lorg/andengine/b/c/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/b/c/e;

    return-object v0
.end method

.method public static values()[Lorg/andengine/b/c/e;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/andengine/b/c/e;->e:[Lorg/andengine/b/c/e;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/b/c/e;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
