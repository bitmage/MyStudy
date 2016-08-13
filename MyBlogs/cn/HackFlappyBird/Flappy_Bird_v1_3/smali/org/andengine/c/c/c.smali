.class public abstract Lorg/andengine/c/c/c;
.super Lorg/andengine/c/c/d;

# interfaces
.implements Lorg/andengine/c/c/a;


# instance fields
.field protected a:F

.field protected b:F


# direct methods
.method public constructor <init>(FFFFLorg/andengine/opengl/b/g;)V
    .locals 0

    invoke-direct {p0, p1, p2, p5}, Lorg/andengine/c/c/d;-><init>(FFLorg/andengine/opengl/b/g;)V

    iput p3, p0, Lorg/andengine/c/c/c;->a:F

    iput p4, p0, Lorg/andengine/c/c/c;->b:F

    invoke-virtual {p0}, Lorg/andengine/c/c/c;->q()V

    invoke-virtual {p0}, Lorg/andengine/c/c/c;->r()V

    invoke-virtual {p0}, Lorg/andengine/c/c/c;->s()V

    return-void
.end method


# virtual methods
.method public a(FF)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/andengine/d/b/a/c;->a(Lorg/andengine/c/c/c;FF)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/andengine/b/a/a;)Z
    .locals 1

    invoke-static {p1, p0}, Lorg/andengine/d/b/a/c;->a(Lorg/andengine/b/a/a;Lorg/andengine/c/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()[F
    .locals 3

    const/high16 v2, 0x3f00

    iget v0, p0, Lorg/andengine/c/c/c;->a:F

    mul-float/2addr v0, v2

    iget v1, p0, Lorg/andengine/c/c/c;->b:F

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/andengine/c/c/c;->a_(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lorg/andengine/c/c/c;->a:F

    return v0
.end method

.method public p()F
    .locals 1

    iget v0, p0, Lorg/andengine/c/c/c;->b:F

    return v0
.end method

.method public q()V
    .locals 2

    const/high16 v1, 0x3f00

    iget v0, p0, Lorg/andengine/c/c/c;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/c/c/c;->y:F

    iget v0, p0, Lorg/andengine/c/c/c;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/c/c/c;->z:F

    return-void
.end method

.method public r()V
    .locals 2

    const/high16 v1, 0x3f00

    iget v0, p0, Lorg/andengine/c/c/c;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/c/c/c;->C:F

    iget v0, p0, Lorg/andengine/c/c/c;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/c/c/c;->D:F

    return-void
.end method

.method public s()V
    .locals 2

    const/high16 v1, 0x3f00

    iget v0, p0, Lorg/andengine/c/c/c;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/c/c/c;->G:F

    iget v0, p0, Lorg/andengine/c/c/c;->b:F

    mul-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/c/c/c;->H:F

    return-void
.end method
