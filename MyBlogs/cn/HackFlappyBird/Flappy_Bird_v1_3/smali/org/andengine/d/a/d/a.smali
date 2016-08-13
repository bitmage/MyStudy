.class public Lorg/andengine/d/a/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/andengine/d/a/d/a;->a:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->b:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->c:F

    iput v1, p0, Lorg/andengine/d/a/d/a;->d:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->e:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->f:F

    return-void
.end method

.method private a(FFFFFF)V
    .locals 8

    iget v0, p0, Lorg/andengine/d/a/d/a;->a:F

    iget v1, p0, Lorg/andengine/d/a/d/a;->b:F

    iget v2, p0, Lorg/andengine/d/a/d/a;->c:F

    iget v3, p0, Lorg/andengine/d/a/d/a;->d:F

    iget v4, p0, Lorg/andengine/d/a/d/a;->e:F

    iget v5, p0, Lorg/andengine/d/a/d/a;->f:F

    mul-float v6, v0, p1

    mul-float v7, v1, p3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/d/a/d/a;->a:F

    mul-float/2addr v0, p2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/d/a/d/a;->b:F

    mul-float v0, v2, p1

    mul-float v1, v3, p3

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/d/a/d/a;->c:F

    mul-float v0, v2, p2

    mul-float v1, v3, p4

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/d/a/d/a;->d:F

    mul-float v0, v4, p1

    mul-float v1, v5, p3

    add-float/2addr v0, v1

    add-float/2addr v0, p5

    iput v0, p0, Lorg/andengine/d/a/d/a;->e:F

    mul-float v0, v4, p2

    mul-float v1, v5, p4

    add-float/2addr v0, v1

    add-float/2addr v0, p6

    iput v0, p0, Lorg/andengine/d/a/d/a;->f:F

    return-void
.end method

.method private b(FFFFFF)V
    .locals 8

    iget v0, p0, Lorg/andengine/d/a/d/a;->a:F

    iget v1, p0, Lorg/andengine/d/a/d/a;->b:F

    iget v2, p0, Lorg/andengine/d/a/d/a;->c:F

    iget v3, p0, Lorg/andengine/d/a/d/a;->d:F

    iget v4, p0, Lorg/andengine/d/a/d/a;->e:F

    iget v5, p0, Lorg/andengine/d/a/d/a;->f:F

    mul-float v6, p1, v0

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/d/a/d/a;->a:F

    mul-float v6, p1, v1

    mul-float v7, p2, v3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/d/a/d/a;->b:F

    mul-float v6, p3, v0

    mul-float v7, p4, v2

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/d/a/d/a;->c:F

    mul-float v6, p3, v1

    mul-float v7, p4, v3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/andengine/d/a/d/a;->d:F

    mul-float/2addr v0, p5

    mul-float/2addr v2, p6

    add-float/2addr v0, v2

    add-float/2addr v0, v4

    iput v0, p0, Lorg/andengine/d/a/d/a;->e:F

    mul-float v0, p5, v1

    mul-float v1, p6, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v5

    iput v0, p0, Lorg/andengine/d/a/d/a;->f:F

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    iput v1, p0, Lorg/andengine/d/a/d/a;->a:F

    iput v1, p0, Lorg/andengine/d/a/d/a;->d:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->b:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->c:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->e:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->f:F

    return-void
.end method

.method public final a(F)V
    .locals 10

    const v0, 0x3c8efa35

    mul-float/2addr v0, p1

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    iget v2, p0, Lorg/andengine/d/a/d/a;->a:F

    iget v3, p0, Lorg/andengine/d/a/d/a;->b:F

    iget v4, p0, Lorg/andengine/d/a/d/a;->c:F

    iget v5, p0, Lorg/andengine/d/a/d/a;->d:F

    iget v6, p0, Lorg/andengine/d/a/d/a;->e:F

    iget v7, p0, Lorg/andengine/d/a/d/a;->f:F

    mul-float v8, v2, v0

    mul-float v9, v3, v1

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/andengine/d/a/d/a;->a:F

    mul-float/2addr v2, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lorg/andengine/d/a/d/a;->b:F

    mul-float v2, v4, v0

    mul-float v3, v5, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/andengine/d/a/d/a;->c:F

    mul-float v2, v4, v1

    mul-float v3, v5, v0

    add-float/2addr v2, v3

    iput v2, p0, Lorg/andengine/d/a/d/a;->d:F

    mul-float v2, v6, v0

    mul-float v3, v7, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/andengine/d/a/d/a;->e:F

    mul-float/2addr v1, v6

    mul-float/2addr v0, v7

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/d/a/d/a;->f:F

    return-void
.end method

.method public final a(FF)V
    .locals 1

    iget v0, p0, Lorg/andengine/d/a/d/a;->e:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/d/a/d/a;->e:F

    iget v0, p0, Lorg/andengine/d/a/d/a;->f:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/d/a/d/a;->f:F

    return-void
.end method

.method public final a(Lorg/andengine/d/a/d/a;)V
    .locals 1

    iget v0, p1, Lorg/andengine/d/a/d/a;->a:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->a:F

    iget v0, p1, Lorg/andengine/d/a/d/a;->d:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->d:F

    iget v0, p1, Lorg/andengine/d/a/d/a;->b:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->b:F

    iget v0, p1, Lorg/andengine/d/a/d/a;->c:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->c:F

    iget v0, p1, Lorg/andengine/d/a/d/a;->e:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->e:F

    iget v0, p1, Lorg/andengine/d/a/d/a;->f:F

    iput v0, p0, Lorg/andengine/d/a/d/a;->f:F

    return-void
.end method

.method public final a([F)V
    .locals 8

    const/4 v0, 0x0

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v1

    add-int/lit8 v1, v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lorg/andengine/d/a/d/a;->a:F

    mul-float/2addr v6, v4

    iget v7, p0, Lorg/andengine/d/a/d/a;->c:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, p0, Lorg/andengine/d/a/d/a;->e:F

    add-float/2addr v6, v7

    aput v6, p1, v0

    add-int/lit8 v0, v5, 0x1

    iget v6, p0, Lorg/andengine/d/a/d/a;->b:F

    mul-float/2addr v4, v6

    iget v6, p0, Lorg/andengine/d/a/d/a;->d:F

    mul-float/2addr v3, v6

    add-float/2addr v3, v4

    iget v4, p0, Lorg/andengine/d/a/d/a;->f:F

    add-float/2addr v3, v4

    aput v3, p1, v5

    goto :goto_0
.end method

.method public final b(FF)V
    .locals 1

    iget v0, p0, Lorg/andengine/d/a/d/a;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/d/a/d/a;->a:F

    iget v0, p0, Lorg/andengine/d/a/d/a;->b:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/d/a/d/a;->b:F

    iget v0, p0, Lorg/andengine/d/a/d/a;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/d/a/d/a;->c:F

    iget v0, p0, Lorg/andengine/d/a/d/a;->d:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/d/a/d/a;->d:F

    iget v0, p0, Lorg/andengine/d/a/d/a;->e:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/d/a/d/a;->e:F

    iget v0, p0, Lorg/andengine/d/a/d/a;->f:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/d/a/d/a;->f:F

    return-void
.end method

.method public final b(Lorg/andengine/d/a/d/a;)V
    .locals 7

    iget v1, p1, Lorg/andengine/d/a/d/a;->a:F

    iget v2, p1, Lorg/andengine/d/a/d/a;->b:F

    iget v3, p1, Lorg/andengine/d/a/d/a;->c:F

    iget v4, p1, Lorg/andengine/d/a/d/a;->d:F

    iget v5, p1, Lorg/andengine/d/a/d/a;->e:F

    iget v6, p1, Lorg/andengine/d/a/d/a;->f:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/andengine/d/a/d/a;->a(FFFFFF)V

    return-void
.end method

.method public final c(FF)V
    .locals 9

    const v2, -0x437105cb

    mul-float v0, v2, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, v2, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lorg/andengine/d/a/d/a;->a:F

    iget v3, p0, Lorg/andengine/d/a/d/a;->b:F

    iget v4, p0, Lorg/andengine/d/a/d/a;->c:F

    iget v5, p0, Lorg/andengine/d/a/d/a;->d:F

    iget v6, p0, Lorg/andengine/d/a/d/a;->e:F

    iget v7, p0, Lorg/andengine/d/a/d/a;->f:F

    mul-float v8, v3, v0

    add-float/2addr v8, v2

    iput v8, p0, Lorg/andengine/d/a/d/a;->a:F

    mul-float/2addr v2, v1

    add-float/2addr v2, v3

    iput v2, p0, Lorg/andengine/d/a/d/a;->b:F

    mul-float v2, v5, v0

    add-float/2addr v2, v4

    iput v2, p0, Lorg/andengine/d/a/d/a;->c:F

    mul-float v2, v4, v1

    add-float/2addr v2, v5

    iput v2, p0, Lorg/andengine/d/a/d/a;->d:F

    mul-float/2addr v0, v7

    add-float/2addr v0, v6

    iput v0, p0, Lorg/andengine/d/a/d/a;->e:F

    mul-float v0, v6, v1

    add-float/2addr v0, v7

    iput v0, p0, Lorg/andengine/d/a/d/a;->f:F

    return-void
.end method

.method public final c(Lorg/andengine/d/a/d/a;)V
    .locals 7

    iget v1, p1, Lorg/andengine/d/a/d/a;->a:F

    iget v2, p1, Lorg/andengine/d/a/d/a;->b:F

    iget v3, p1, Lorg/andengine/d/a/d/a;->c:F

    iget v4, p1, Lorg/andengine/d/a/d/a;->d:F

    iget v5, p1, Lorg/andengine/d/a/d/a;->e:F

    iget v6, p1, Lorg/andengine/d/a/d/a;->f:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/andengine/d/a/d/a;->b(FFFFFF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transformation{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/d/a/d/a;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/d/a/d/a;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/d/a/d/a;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/d/a/d/a;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/d/a/d/a;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/d/a/d/a;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][0.0, 0.0, 1.0]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
