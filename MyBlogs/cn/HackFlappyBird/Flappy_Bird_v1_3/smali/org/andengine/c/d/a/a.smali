.class public Lorg/andengine/c/d/a/a;
.super Lorg/andengine/opengl/d/b;

# interfaces
.implements Lorg/andengine/c/d/a/b;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/d/e;ILorg/andengine/opengl/d/a;ZLorg/andengine/opengl/d/a/c;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/d/b;-><init>(Lorg/andengine/opengl/d/e;ILorg/andengine/opengl/d/a;ZLorg/andengine/opengl/d/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/c/d/a;)V
    .locals 3

    iget-object v0, p0, Lorg/andengine/c/d/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/c/d/a;->g()Lorg/andengine/d/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/d/d/a;->f()F

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    const/16 v2, 0x11

    aput v1, v0, v2

    invoke-virtual {p0}, Lorg/andengine/c/d/a/a;->f()V

    return-void
.end method

.method public a(Lorg/andengine/c/d/a;FFFFFFFF)V
    .locals 2

    iget-object v0, p0, Lorg/andengine/c/d/a/a;->a:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v1, 0x1

    aput p3, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    const/4 v1, 0x6

    aput p5, v0, v1

    const/16 v1, 0xa

    aput p6, v0, v1

    const/16 v1, 0xb

    aput p7, v0, v1

    const/16 v1, 0xf

    aput p8, v0, v1

    const/16 v1, 0x10

    aput p9, v0, v1

    invoke-virtual {p0}, Lorg/andengine/c/d/a/a;->f()V

    return-void
.end method

.method public b(Lorg/andengine/c/d/a;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/andengine/c/d/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/c/d/a;->o()F

    move-result v1

    invoke-virtual {p1}, Lorg/andengine/c/d/a;->p()F

    move-result v2

    const/4 v3, 0x0

    aput v4, v0, v3

    const/4 v3, 0x1

    aput v4, v0, v3

    const/4 v3, 0x5

    aput v4, v0, v3

    const/4 v3, 0x6

    aput v2, v0, v3

    const/16 v3, 0xa

    aput v1, v0, v3

    const/16 v3, 0xb

    aput v4, v0, v3

    const/16 v3, 0xf

    aput v1, v0, v3

    const/16 v1, 0x10

    aput v2, v0, v1

    invoke-virtual {p0}, Lorg/andengine/c/d/a/a;->f()V

    return-void
.end method

.method public c(Lorg/andengine/c/d/a;)V
    .locals 11

    const/16 v10, 0xd

    const/16 v9, 0x9

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x3

    iget-object v4, p0, Lorg/andengine/c/d/a/a;->a:[F

    invoke-virtual {p1}, Lorg/andengine/c/d/a;->t()Lorg/andengine/opengl/c/c/b;

    move-result-object v5

    invoke-virtual {p1}, Lorg/andengine/c/d/a;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/andengine/c/d/a;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->e()F

    move-result v3

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->d()F

    move-result v1

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->g()F

    move-result v2

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->f()F

    move-result v0

    :goto_0
    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->h()Z

    move-result v5

    if-eqz v5, :cond_3

    aput v1, v4, v6

    aput v2, v4, v7

    aput v3, v4, v8

    aput v2, v4, v9

    aput v1, v4, v10

    const/16 v1, 0xe

    aput v0, v4, v1

    const/16 v1, 0x12

    aput v3, v4, v1

    const/16 v1, 0x13

    aput v0, v4, v1

    :goto_1
    invoke-virtual {p0}, Lorg/andengine/c/d/a/a;->f()V

    return-void

    :cond_0
    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->d()F

    move-result v3

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->e()F

    move-result v1

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->g()F

    move-result v2

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->f()F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/andengine/c/d/a;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->e()F

    move-result v3

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->d()F

    move-result v1

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->f()F

    move-result v2

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->g()F

    move-result v0

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->d()F

    move-result v3

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->e()F

    move-result v1

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->f()F

    move-result v2

    invoke-interface {v5}, Lorg/andengine/opengl/c/c/b;->g()F

    move-result v0

    goto :goto_0

    :cond_3
    aput v3, v4, v6

    aput v2, v4, v7

    aput v3, v4, v8

    aput v0, v4, v9

    aput v1, v4, v10

    const/16 v3, 0xe

    aput v2, v4, v3

    const/16 v2, 0x12

    aput v1, v4, v2

    const/16 v1, 0x13

    aput v0, v4, v1

    goto :goto_1
.end method
