.class public Lorg/andengine/opengl/util/b;
.super Ljava/lang/Object;


# instance fields
.field final a:[F

.field b:I

.field private final c:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/b;->a:[F

    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/b;->c:[F

    invoke-virtual {p0}, Lorg/andengine/opengl/util/b;->a()V

    return-void
.end method

.method private static a([FIFF)V
    .locals 6

    const v5, -0x437105cb

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    add-int/lit8 v0, p1, 0x0

    aput v4, p0, v0

    add-int/lit8 v0, p1, 0x1

    mul-float v1, v5, p3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0x3

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0x4

    mul-float v1, v5, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    aput v4, p0, v0

    add-int/lit8 v0, p1, 0x6

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0x7

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0x8

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0x9

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0xa

    aput v4, p0, v0

    add-int/lit8 v0, p1, 0xb

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0xc

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0xd

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0xe

    aput v3, p0, v0

    add-int/lit8 v0, p1, 0xf

    aput v4, p0, v0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v1, p0, Lorg/andengine/opengl/util/b;->b:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public a(FF)V
    .locals 6

    const/4 v5, 0x0

    const/16 v3, 0x10

    iget-object v0, p0, Lorg/andengine/opengl/util/b;->c:[F

    invoke-static {v0, v5, p1, p2}, Lorg/andengine/opengl/util/b;->a([FIFF)V

    iget-object v0, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v1, p0, Lorg/andengine/opengl/util/b;->b:I

    iget-object v2, p0, Lorg/andengine/opengl/util/b;->c:[F

    invoke-static {v0, v1, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v1, p0, Lorg/andengine/opengl/util/b;->b:I

    iget-object v2, p0, Lorg/andengine/opengl/util/b;->c:[F

    iget-object v4, p0, Lorg/andengine/opengl/util/b;->c:[F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public a(FFF)V
    .locals 2

    iget-object v0, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v1, p0, Lorg/andengine/opengl/util/b;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public a(FFFF)V
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x10

    iget-object v0, p0, Lorg/andengine/opengl/util/b;->c:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    iget-object v0, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v2, p0, Lorg/andengine/opengl/util/b;->b:I

    iget-object v3, p0, Lorg/andengine/opengl/util/b;->c:[F

    invoke-static {v0, v2, v3, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v3, p0, Lorg/andengine/opengl/util/b;->b:I

    iget-object v4, p0, Lorg/andengine/opengl/util/b;->c:[F

    iget-object v6, p0, Lorg/andengine/opengl/util/b;->c:[F

    move v5, v7

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public a(FFFFFF)V
    .locals 8

    iget-object v0, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v1, p0, Lorg/andengine/opengl/util/b;->b:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public b()V
    .locals 5

    iget v0, p0, Lorg/andengine/opengl/util/b;->b:I

    add-int/lit8 v0, v0, 0x10

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/andengine/opengl/util/c;

    invoke-direct {v0}, Lorg/andengine/opengl/util/c;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v1, p0, Lorg/andengine/opengl/util/b;->b:I

    iget-object v2, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v3, p0, Lorg/andengine/opengl/util/b;->b:I

    add-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/andengine/opengl/util/b;->b:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/andengine/opengl/util/b;->b:I

    return-void
.end method

.method public b(FFF)V
    .locals 2

    iget-object v0, p0, Lorg/andengine/opengl/util/b;->a:[F

    iget v1, p0, Lorg/andengine/opengl/util/b;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public c()V
    .locals 2

    iget v0, p0, Lorg/andengine/opengl/util/b;->b:I

    add-int/lit8 v0, v0, -0x10

    const/16 v1, -0x10

    if-gt v0, v1, :cond_0

    new-instance v0, Lorg/andengine/opengl/util/d;

    invoke-direct {v0}, Lorg/andengine/opengl/util/d;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/andengine/opengl/util/b;->b:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lorg/andengine/opengl/util/b;->b:I

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/opengl/util/b;->b:I

    invoke-virtual {p0}, Lorg/andengine/opengl/util/b;->a()V

    return-void
.end method
