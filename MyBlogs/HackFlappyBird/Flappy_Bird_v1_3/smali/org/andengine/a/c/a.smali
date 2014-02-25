.class public Lorg/andengine/a/c/a;
.super Lorg/andengine/a/a;


# instance fields
.field private c:I

.field private d:I

.field private e:Z

.field private f:I

.field private g:F


# direct methods
.method constructor <init>(Lorg/andengine/a/c/c;I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/andengine/a/a;-><init>(Lorg/andengine/a/d;)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/a/c/a;->g:F

    iput p2, p0, Lorg/andengine/a/c/a;->c:I

    return-void
.end method

.method private j()Landroid/media/SoundPool;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/a/c/a;->i()Lorg/andengine/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/a/c/c;->c()Landroid/media/SoundPool;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lorg/andengine/a/d;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/a/c/a;->i()Lorg/andengine/a/c/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/andengine/a/c/a;->e:Z

    return-void
.end method

.method protected c()V
    .locals 1

    new-instance v0, Lorg/andengine/a/c/a/b;

    invoke-direct {v0}, Lorg/andengine/a/c/a/b;-><init>()V

    throw v0
.end method

.method public d()V
    .locals 7

    invoke-super {p0}, Lorg/andengine/a/a;->d()V

    invoke-virtual {p0}, Lorg/andengine/a/c/a;->b()F

    move-result v0

    iget v1, p0, Lorg/andengine/a/c/a;->a:F

    mul-float v2, v1, v0

    iget v1, p0, Lorg/andengine/a/c/a;->b:F

    mul-float v3, v1, v0

    invoke-direct {p0}, Lorg/andengine/a/c/a;->j()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/a/c/a;->c:I

    const/4 v4, 0x1

    iget v5, p0, Lorg/andengine/a/c/a;->f:I

    iget v6, p0, Lorg/andengine/a/c/a;->g:F

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/andengine/a/c/a;->d:I

    return-void
.end method

.method public e()V
    .locals 2

    invoke-super {p0}, Lorg/andengine/a/a;->e()V

    iget v0, p0, Lorg/andengine/a/c/a;->d:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/andengine/a/c/a;->j()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/a/c/a;->d:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/andengine/a/c/a;->g()V

    invoke-direct {p0}, Lorg/andengine/a/c/a;->j()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/andengine/a/c/a;->c:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    iput v2, p0, Lorg/andengine/a/c/a;->c:I

    iput-boolean v2, p0, Lorg/andengine/a/c/a;->e:Z

    invoke-virtual {p0}, Lorg/andengine/a/c/a;->i()Lorg/andengine/a/c/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/andengine/a/c/c;->b(Lorg/andengine/a/c/a;)Z

    invoke-super {p0}, Lorg/andengine/a/a;->f()V

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lorg/andengine/a/c/a;->c:I

    return v0
.end method

.method protected i()Lorg/andengine/a/c/c;
    .locals 1

    invoke-super {p0}, Lorg/andengine/a/a;->a()Lorg/andengine/a/d;

    move-result-object v0

    check-cast v0, Lorg/andengine/a/c/c;

    return-object v0
.end method
