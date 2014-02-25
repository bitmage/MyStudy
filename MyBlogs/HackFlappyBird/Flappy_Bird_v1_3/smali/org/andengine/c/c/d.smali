.class public abstract Lorg/andengine/c/c/d;
.super Lorg/andengine/c/a;

# interfaces
.implements Lorg/andengine/c/c/b;


# instance fields
.field protected c:I

.field protected d:I

.field protected e:Z

.field protected f:Lorg/andengine/opengl/b/g;


# direct methods
.method public constructor <init>(FFLorg/andengine/opengl/b/g;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/andengine/c/a;-><init>(FF)V

    const/16 v0, 0x302

    iput v0, p0, Lorg/andengine/c/c/d;->c:I

    const/16 v0, 0x303

    iput v0, p0, Lorg/andengine/c/c/d;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/c/c/d;->e:Z

    iput-object p3, p0, Lorg/andengine/c/c/d;->f:Lorg/andengine/opengl/b/g;

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    iput p1, p0, Lorg/andengine/c/c/d;->c:I

    iput p2, p0, Lorg/andengine/c/c/d;->d:I

    return-void
.end method

.method protected a(Lorg/andengine/opengl/c/a;)V
    .locals 1

    invoke-interface {p1}, Lorg/andengine/opengl/c/a;->g()Lorg/andengine/opengl/c/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/c/c/d;->a(Lorg/andengine/opengl/c/f;)V

    return-void
.end method

.method protected a(Lorg/andengine/opengl/c/c/b;)V
    .locals 1

    invoke-interface {p1}, Lorg/andengine/opengl/c/c/b;->a()Lorg/andengine/opengl/c/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/andengine/c/c/d;->a(Lorg/andengine/opengl/c/a;)V

    return-void
.end method

.method protected a(Lorg/andengine/opengl/c/f;)V
    .locals 2

    iget-boolean v0, p1, Lorg/andengine/opengl/c/f;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lorg/andengine/c/c/d;->a(II)V

    :cond_0
    return-void
.end method

.method public a(Lorg/andengine/input/a/a;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 2

    iget-boolean v0, p0, Lorg/andengine/c/c/d;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->a()Z

    iget v0, p0, Lorg/andengine/c/c/d;->c:I

    iget v1, p0, Lorg/andengine/c/c/d;->d:I

    invoke-virtual {p1, v0, v1}, Lorg/andengine/opengl/util/e;->a(II)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/andengine/c/c/d;->e:Z

    return-void
.end method

.method protected d(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/c/c/d;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->b()Z

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    invoke-super {p0}, Lorg/andengine/c/a;->n()V

    invoke-virtual {p0}, Lorg/andengine/c/c/d;->a()Lorg/andengine/opengl/d/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/andengine/opengl/d/c;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/andengine/opengl/d/c;->c()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lorg/andengine/opengl/d/c;->n()V

    :cond_0
    return-void
.end method
