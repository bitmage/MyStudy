.class public final Lorg/andengine/d/g/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lorg/andengine/d/g/a;->a:Ljava/util/Random;

    return-void
.end method

.method public static final a(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final a(I)Z
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([FFFF)[F
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/andengine/d/g/a;->a(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    aget v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p0, v4

    sub-float v5, v3, p2

    mul-float/2addr v5, v2

    sub-float v6, v4, p3

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    add-float/2addr v5, p2

    aput v5, p0, v0

    add-int/lit8 v5, v0, 0x1

    sub-float/2addr v3, p2

    mul-float/2addr v3, v1

    sub-float/2addr v4, p3

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    aput v3, p0, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public static b([FFFF)[F
    .locals 1

    neg-float v0, p1

    invoke-static {p0, v0, p2, p3}, Lorg/andengine/d/g/a;->a([FFFF)[F

    move-result-object v0

    return-object v0
.end method
