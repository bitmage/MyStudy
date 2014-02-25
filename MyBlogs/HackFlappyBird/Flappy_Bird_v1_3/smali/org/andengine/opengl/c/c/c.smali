.class public Lorg/andengine/opengl/c/c/c;
.super Lorg/andengine/opengl/c/c/a;


# instance fields
.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:F

.field protected final j:F

.field protected final k:Z


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/c/a;FFFFFZ)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/andengine/opengl/c/c/a;-><init>(Lorg/andengine/opengl/c/a;)V

    iput p2, p0, Lorg/andengine/opengl/c/c/c;->b:F

    iput p3, p0, Lorg/andengine/opengl/c/c/c;->c:F

    if-eqz p7, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/c/c/c;->k:Z

    iput p5, p0, Lorg/andengine/opengl/c/c/c;->d:F

    iput p4, p0, Lorg/andengine/opengl/c/c/c;->e:F

    :goto_0
    iput p6, p0, Lorg/andengine/opengl/c/c/c;->j:F

    invoke-virtual {p0}, Lorg/andengine/opengl/c/c/c;->l()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/c/c/c;->k:Z

    iput p4, p0, Lorg/andengine/opengl/c/c/c;->d:F

    iput p5, p0, Lorg/andengine/opengl/c/c/c;->e:F

    goto :goto_0
.end method

.method public constructor <init>(Lorg/andengine/opengl/c/a;FFFFZ)V
    .locals 8

    const/high16 v6, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/andengine/opengl/c/c/c;-><init>(Lorg/andengine/opengl/c/a;FFFFFZ)V

    return-void
.end method


# virtual methods
.method public a(FFFF)V
    .locals 0

    iput p1, p0, Lorg/andengine/opengl/c/c/c;->f:F

    iput p2, p0, Lorg/andengine/opengl/c/c/c;->h:F

    iput p3, p0, Lorg/andengine/opengl/c/c/c;->g:F

    iput p4, p0, Lorg/andengine/opengl/c/c/c;->i:F

    return-void
.end method

.method public b()F
    .locals 2

    iget-boolean v0, p0, Lorg/andengine/opengl/c/c/c;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/andengine/opengl/c/c/c;->e:F

    iget v1, p0, Lorg/andengine/opengl/c/c/c;->j:F

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/opengl/c/c/c;->d:F

    iget v1, p0, Lorg/andengine/opengl/c/c/c;->j:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public c()F
    .locals 2

    iget-boolean v0, p0, Lorg/andengine/opengl/c/c/c;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/andengine/opengl/c/c/c;->d:F

    iget v1, p0, Lorg/andengine/opengl/c/c/c;->j:F

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/andengine/opengl/c/c/c;->e:F

    iget v1, p0, Lorg/andengine/opengl/c/c/c;->j:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/c/c;->f:F

    return v0
.end method

.method public e()F
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/c/c;->g:F

    return v0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/c/c;->h:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/c/c;->i:F

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/opengl/c/c/c;->k:Z

    return v0
.end method

.method public i()Lorg/andengine/opengl/c/c/c;
    .locals 8

    iget-boolean v0, p0, Lorg/andengine/opengl/c/c/c;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/andengine/opengl/c/c/c;

    iget-object v1, p0, Lorg/andengine/opengl/c/c/c;->a:Lorg/andengine/opengl/c/a;

    iget v2, p0, Lorg/andengine/opengl/c/c/c;->b:F

    iget v3, p0, Lorg/andengine/opengl/c/c/c;->c:F

    iget v4, p0, Lorg/andengine/opengl/c/c/c;->e:F

    iget v5, p0, Lorg/andengine/opengl/c/c/c;->d:F

    iget v6, p0, Lorg/andengine/opengl/c/c/c;->j:F

    iget-boolean v7, p0, Lorg/andengine/opengl/c/c/c;->k:Z

    invoke-direct/range {v0 .. v7}, Lorg/andengine/opengl/c/c/c;-><init>(Lorg/andengine/opengl/c/a;FFFFFZ)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/andengine/opengl/c/c/c;

    iget-object v1, p0, Lorg/andengine/opengl/c/c/c;->a:Lorg/andengine/opengl/c/a;

    iget v2, p0, Lorg/andengine/opengl/c/c/c;->b:F

    iget v3, p0, Lorg/andengine/opengl/c/c/c;->c:F

    iget v4, p0, Lorg/andengine/opengl/c/c/c;->d:F

    iget v5, p0, Lorg/andengine/opengl/c/c/c;->e:F

    iget v6, p0, Lorg/andengine/opengl/c/c/c;->j:F

    iget-boolean v7, p0, Lorg/andengine/opengl/c/c/c;->k:Z

    invoke-direct/range {v0 .. v7}, Lorg/andengine/opengl/c/c/c;-><init>(Lorg/andengine/opengl/c/a;FFFFFZ)V

    goto :goto_0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/c/c;->b:F

    return v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/c/c;->c:F

    return v0
.end method

.method public l()V
    .locals 5

    iget-object v0, p0, Lorg/andengine/opengl/c/c/c;->a:Lorg/andengine/opengl/c/a;

    invoke-interface {v0}, Lorg/andengine/opengl/c/a;->a()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {v0}, Lorg/andengine/opengl/c/a;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/andengine/opengl/c/c/c;->j()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/opengl/c/c/c;->k()F

    move-result v3

    div-float v4, v2, v1

    iput v4, p0, Lorg/andengine/opengl/c/c/c;->f:F

    iget v4, p0, Lorg/andengine/opengl/c/c/c;->d:F

    add-float/2addr v2, v4

    div-float v1, v2, v1

    iput v1, p0, Lorg/andengine/opengl/c/c/c;->g:F

    div-float v1, v3, v0

    iput v1, p0, Lorg/andengine/opengl/c/c/c;->h:F

    iget v1, p0, Lorg/andengine/opengl/c/c/c;->e:F

    add-float/2addr v1, v3

    div-float v0, v1, v0

    iput v0, p0, Lorg/andengine/opengl/c/c/c;->i:F

    return-void
.end method
