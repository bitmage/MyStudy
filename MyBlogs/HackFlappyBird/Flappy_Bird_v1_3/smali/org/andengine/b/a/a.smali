.class public Lorg/andengine/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/b/b/c;


# static fields
.field static final a:[F


# instance fields
.field protected b:F

.field protected c:F

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:Z

.field protected m:Lorg/andengine/b/b/d;

.field private n:F

.field private o:F

.field private p:Lorg/andengine/b/a/a/a;

.field private q:Lorg/andengine/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lorg/andengine/b/a/a;->a:[F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/andengine/b/a/a;->n:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/b/a/a;->o:F

    iput v1, p0, Lorg/andengine/b/a/a;->f:F

    iput v1, p0, Lorg/andengine/b/a/a;->g:F

    add-float v0, p1, p3

    add-float v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/andengine/b/a/a;->a(FFFF)V

    return-void
.end method

.method private a(Lorg/andengine/input/a/a;FF)V
    .locals 4

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->a()F

    move-result v0

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->b()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->c()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->d()F

    move-result v3

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    sub-float v1, v3, v2

    mul-float/2addr v1, p3

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lorg/andengine/input/a/a;->a(FF)V

    return-void
.end method

.method private static a(Lorg/andengine/opengl/util/e;FFF)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lorg/andengine/opengl/util/e;->b(FFF)V

    const/high16 v0, 0x3f80

    invoke-virtual {p0, p3, v2, v2, v0}, Lorg/andengine/opengl/util/e;->b(FFFF)V

    neg-float v0, p1

    neg-float v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lorg/andengine/opengl/util/e;->b(FFF)V

    return-void
.end method

.method private e(Lorg/andengine/input/a/a;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/andengine/b/a/a;->f:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->b()F

    move-result v2

    aput v2, v1, v4

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->c()F

    move-result v2

    aput v2, v1, v5

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    neg-float v0, v0

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->g()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->h()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/andengine/d/g/a;->a([FFFF)[F

    sget-object v0, Lorg/andengine/b/a/a;->a:[F

    aget v0, v0, v4

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    aget v1, v1, v5

    invoke-virtual {p1, v0, v1}, Lorg/andengine/input/a/a;->a(FF)V

    :cond_0
    return-void
.end method

.method private f(Lorg/andengine/input/a/a;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/andengine/b/a/a;->f:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->b()F

    move-result v2

    aput v2, v1, v4

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->c()F

    move-result v2

    aput v2, v1, v5

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->g()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->h()F

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lorg/andengine/d/g/a;->b([FFFF)[F

    sget-object v0, Lorg/andengine/b/a/a;->a:[F

    aget v0, v0, v4

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    aget v1, v1, v5

    invoke-virtual {p1, v0, v1}, Lorg/andengine/input/a/a;->a(FF)V

    :cond_0
    return-void
.end method

.method private g(Lorg/andengine/input/a/a;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    iget v0, p0, Lorg/andengine/b/a/a;->g:F

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->b()F

    move-result v2

    aput v2, v1, v6

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->c()F

    move-result v2

    aput v2, v1, v7

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    iget v2, p0, Lorg/andengine/b/a/a;->c:F

    iget v3, p0, Lorg/andengine/b/a/a;->b:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/andengine/b/a/a;->e:F

    iget v4, p0, Lorg/andengine/b/a/a;->d:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v1, v0, v2, v3}, Lorg/andengine/d/g/a;->a([FFFF)[F

    sget-object v0, Lorg/andengine/b/a/a;->a:[F

    aget v0, v0, v6

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    aget v1, v1, v7

    invoke-virtual {p1, v0, v1}, Lorg/andengine/input/a/a;->a(FF)V

    :cond_0
    return-void
.end method

.method private h(Lorg/andengine/input/a/a;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f00

    iget v0, p0, Lorg/andengine/b/a/a;->g:F

    neg-float v0, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->b()F

    move-result v2

    aput v2, v1, v6

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->c()F

    move-result v2

    aput v2, v1, v7

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    iget v2, p0, Lorg/andengine/b/a/a;->c:F

    iget v3, p0, Lorg/andengine/b/a/a;->b:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    iget v3, p0, Lorg/andengine/b/a/a;->e:F

    iget v4, p0, Lorg/andengine/b/a/a;->d:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    invoke-static {v1, v0, v2, v3}, Lorg/andengine/d/g/a;->b([FFFF)[F

    sget-object v0, Lorg/andengine/b/a/a;->a:[F

    aget v0, v0, v6

    sget-object v1, Lorg/andengine/b/a/a;->a:[F

    aget v1, v1, v7

    invoke-virtual {p1, v0, v1}, Lorg/andengine/input/a/a;->a(FF)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lorg/andengine/b/a/a;->b:F

    return v0
.end method

.method public a(FF)V
    .locals 3

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->g()F

    move-result v0

    sub-float v0, p1, v0

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->h()F

    move-result v1

    sub-float v1, p2, v1

    iget v2, p0, Lorg/andengine/b/a/a;->b:F

    add-float/2addr v2, v0

    iput v2, p0, Lorg/andengine/b/a/a;->b:F

    iget v2, p0, Lorg/andengine/b/a/a;->c:F

    add-float/2addr v0, v2

    iput v0, p0, Lorg/andengine/b/a/a;->c:F

    iget v0, p0, Lorg/andengine/b/a/a;->d:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/b/a/a;->d:F

    iget v0, p0, Lorg/andengine/b/a/a;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/andengine/b/a/a;->e:F

    return-void
.end method

.method public a(FFFF)V
    .locals 0

    iput p1, p0, Lorg/andengine/b/a/a;->b:F

    iput p3, p0, Lorg/andengine/b/a/a;->c:F

    iput p2, p0, Lorg/andengine/b/a/a;->d:F

    iput p4, p0, Lorg/andengine/b/a/a;->e:F

    return-void
.end method

.method public a(IIII)V
    .locals 9

    iget v0, p0, Lorg/andengine/b/a/a;->k:I

    if-nez v0, :cond_1

    iget v0, p0, Lorg/andengine/b/a/a;->j:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/andengine/b/a/a;->b(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/andengine/b/a/a;->j:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Lorg/andengine/b/a/a;->k:I

    if-eq v0, p4, :cond_0

    :cond_2
    iget v1, p0, Lorg/andengine/b/a/a;->h:I

    iget v2, p0, Lorg/andengine/b/a/a;->i:I

    iget v3, p0, Lorg/andengine/b/a/a;->j:I

    iget v4, p0, Lorg/andengine/b/a/a;->k:I

    move-object v0, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v0 .. v8}, Lorg/andengine/b/a/a;->a(IIIIIIII)V

    goto :goto_0
.end method

.method protected a(IIIIIIII)V
    .locals 6

    const/high16 v5, 0x3f00

    iget-boolean v0, p0, Lorg/andengine/b/a/a;->l:Z

    if-eqz v0, :cond_0

    int-to-float v0, p7

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p8

    int-to-float v2, p4

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->g()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->h()F

    move-result v3

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->e()F

    move-result v4

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->f()F

    move-result v4

    mul-float/2addr v1, v4

    mul-float/2addr v0, v5

    mul-float/2addr v1, v5

    sub-float v4, v2, v0

    sub-float v5, v3, v1

    add-float/2addr v0, v2

    add-float/2addr v1, v3

    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/andengine/b/a/a;->a(FFFF)V

    :cond_0
    iput p5, p0, Lorg/andengine/b/a/a;->h:I

    iput p6, p0, Lorg/andengine/b/a/a;->i:I

    iput p7, p0, Lorg/andengine/b/a/a;->j:I

    iput p8, p0, Lorg/andengine/b/a/a;->k:I

    return-void
.end method

.method public a(Lorg/andengine/input/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/andengine/b/a/a;->f(Lorg/andengine/input/a/a;)V

    invoke-virtual {p0, p1}, Lorg/andengine/b/a/a;->c(Lorg/andengine/input/a/a;)V

    invoke-direct {p0, p1}, Lorg/andengine/b/a/a;->g(Lorg/andengine/input/a/a;)V

    return-void
.end method

.method public a(Lorg/andengine/input/a/a;II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->b()F

    move-result v0

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->c()F

    move-result v2

    iget v1, p0, Lorg/andengine/b/a/a;->f:F

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    int-to-float v1, p2

    div-float v1, v0, v1

    int-to-float v0, p3

    div-float v0, v2, v0

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lorg/andengine/b/a/a;->a(Lorg/andengine/input/a/a;FF)V

    return-void

    :cond_0
    const/high16 v3, 0x4334

    cmpl-float v3, v1, v3

    if-nez v3, :cond_1

    int-to-float v1, p2

    div-float/2addr v0, v1

    sub-float v1, v4, v0

    int-to-float v0, p3

    div-float v0, v2, v0

    sub-float v0, v4, v0

    goto :goto_0

    :cond_1
    sget-object v3, Lorg/andengine/b/a/a;->a:[F

    aput v0, v3, v5

    sget-object v0, Lorg/andengine/b/a/a;->a:[F

    aput v2, v0, v6

    sget-object v0, Lorg/andengine/b/a/a;->a:[F

    shr-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    shr-int/lit8 v3, p3, 0x1

    int-to-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/d/g/a;->a([FFFF)[F

    sget-object v0, Lorg/andengine/b/a/a;->a:[F

    aget v0, v0, v5

    int-to-float v1, p2

    div-float v1, v0, v1

    sget-object v0, Lorg/andengine/b/a/a;->a:[F

    aget v0, v0, v6

    int-to-float v2, p3

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public a(Lorg/andengine/opengl/util/e;)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a/a;->p:Lorg/andengine/b/a/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a/a;->p:Lorg/andengine/b/a/a/a;

    invoke-virtual {v0, p1, p0}, Lorg/andengine/b/a/a/a;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    :cond_0
    return-void
.end method

.method public a_(F)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a/a;->m:Lorg/andengine/b/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a/a;->m:Lorg/andengine/b/b/d;

    invoke-virtual {v0, p1}, Lorg/andengine/b/b/d;->a_(F)V

    :cond_0
    iget-object v0, p0, Lorg/andengine/b/a/a;->p:Lorg/andengine/b/a/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/andengine/b/a/a;->p:Lorg/andengine/b/a/a/a;

    invoke-virtual {v0, p1}, Lorg/andengine/b/a/a/a;->a_(F)V

    :cond_1
    invoke-virtual {p0}, Lorg/andengine/b/a/a;->l()V

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lorg/andengine/b/a/a;->c:F

    return v0
.end method

.method protected b(IIII)V
    .locals 0

    iput p1, p0, Lorg/andengine/b/a/a;->h:I

    iput p2, p0, Lorg/andengine/b/a/a;->i:I

    iput p3, p0, Lorg/andengine/b/a/a;->j:I

    iput p4, p0, Lorg/andengine/b/a/a;->k:I

    return-void
.end method

.method public b(Lorg/andengine/input/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/andengine/b/a/a;->h(Lorg/andengine/input/a/a;)V

    invoke-virtual {p0, p1}, Lorg/andengine/b/a/a;->d(Lorg/andengine/input/a/a;)V

    invoke-direct {p0, p1}, Lorg/andengine/b/a/a;->e(Lorg/andengine/input/a/a;)V

    return-void
.end method

.method public b(Lorg/andengine/opengl/util/e;)V
    .locals 7

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->a()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->b()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->d()F

    move-result v3

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->c()F

    move-result v4

    iget v5, p0, Lorg/andengine/b/a/a;->n:F

    iget v6, p0, Lorg/andengine/b/a/a;->o:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/e;->a(FFFFFF)V

    iget v0, p0, Lorg/andengine/b/a/a;->f:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->g()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->h()F

    move-result v2

    invoke-static {p1, v1, v2, v0}, Lorg/andengine/b/a/a;->a(Lorg/andengine/opengl/util/e;FFF)V

    :cond_0
    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lorg/andengine/b/a/a;->d:F

    return v0
.end method

.method protected c(Lorg/andengine/input/a/a;)V
    .locals 2

    iget v0, p0, Lorg/andengine/b/a/a;->b:F

    neg-float v0, v0

    iget v1, p0, Lorg/andengine/b/a/a;->d:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Lorg/andengine/input/a/a;->b(FF)V

    return-void
.end method

.method public c(Lorg/andengine/opengl/util/e;)V
    .locals 8

    const/high16 v7, 0x3f00

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->e()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->f()F

    move-result v3

    iget v5, p0, Lorg/andengine/b/a/a;->n:F

    iget v6, p0, Lorg/andengine/b/a/a;->o:F

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/e;->a(FFFFFF)V

    iget v0, p0, Lorg/andengine/b/a/a;->f:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    mul-float v1, v2, v7

    mul-float v2, v3, v7

    invoke-static {p1, v1, v2, v0}, Lorg/andengine/b/a/a;->a(Lorg/andengine/opengl/util/e;FFF)V

    :cond_0
    return-void
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lorg/andengine/b/a/a;->e:F

    return v0
.end method

.method protected d(Lorg/andengine/input/a/a;)V
    .locals 2

    iget v0, p0, Lorg/andengine/b/a/a;->b:F

    iget v1, p0, Lorg/andengine/b/a/a;->d:F

    invoke-virtual {p1, v0, v1}, Lorg/andengine/input/a/a;->b(FF)V

    return-void
.end method

.method public d(Lorg/andengine/opengl/util/e;)V
    .locals 8

    const/high16 v7, 0x3f00

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->e()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->f()F

    move-result v3

    iget v5, p0, Lorg/andengine/b/a/a;->n:F

    iget v6, p0, Lorg/andengine/b/a/a;->o:F

    move-object v0, p1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/e;->a(FFFFFF)V

    iget v0, p0, Lorg/andengine/b/a/a;->g:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    mul-float v1, v2, v7

    mul-float v2, v3, v7

    invoke-static {p1, v1, v2, v0}, Lorg/andengine/b/a/a;->a(Lorg/andengine/opengl/util/e;FFF)V

    :cond_0
    return-void
.end method

.method public e()F
    .locals 2

    iget v0, p0, Lorg/andengine/b/a/a;->c:F

    iget v1, p0, Lorg/andengine/b/a/a;->b:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public f()F
    .locals 2

    iget v0, p0, Lorg/andengine/b/a/a;->e:F

    iget v1, p0, Lorg/andengine/b/a/a;->d:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public g()F
    .locals 2

    iget v0, p0, Lorg/andengine/b/a/a;->b:F

    iget v1, p0, Lorg/andengine/b/a/a;->c:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public h()F
    .locals 2

    iget v0, p0, Lorg/andengine/b/a/a;->d:F

    iget v1, p0, Lorg/andengine/b/a/a;->e:F

    add-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    return v0
.end method

.method public i()Lorg/andengine/b/a/a/a;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a/a;->p:Lorg/andengine/b/a/a/a;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a/a;->p:Lorg/andengine/b/a/a/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lorg/andengine/b/a/a;->f:F

    return v0
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lorg/andengine/b/a/a;->q:Lorg/andengine/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a/a;->q:Lorg/andengine/c/c;

    invoke-interface {v0}, Lorg/andengine/c/c;->h()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lorg/andengine/b/a/a;->a(FF)V

    :cond_0
    return-void
.end method
