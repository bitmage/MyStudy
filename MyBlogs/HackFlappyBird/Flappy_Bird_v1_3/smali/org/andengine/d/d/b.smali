.class public Lorg/andengine/d/d/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lorg/andengine/d/d/b;->a:[F

    return-void
.end method

.method public static final a(I)F
    .locals 1

    and-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static final a(FFFF)I
    .locals 3

    const/high16 v2, 0x437f

    mul-float v0, v2, p3

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, v2, p0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, v2, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, v2, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method

.method public static final b(FFFF)I
    .locals 3

    const/high16 v2, 0x437f

    mul-float v0, v2, p3

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    mul-float v1, v2, p2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    mul-float v1, v2, p1

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    mul-float v1, v2, p0

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x0

    or-int/2addr v0, v1

    return v0
.end method
