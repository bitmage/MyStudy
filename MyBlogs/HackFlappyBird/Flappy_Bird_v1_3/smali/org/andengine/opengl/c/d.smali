.class public abstract Lorg/andengine/opengl/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/opengl/c/a;


# instance fields
.field protected final a:Lorg/andengine/opengl/c/e;

.field protected final b:Lorg/andengine/opengl/c/c;

.field protected final c:Lorg/andengine/opengl/c/f;

.field protected d:I

.field protected e:Z

.field protected f:Lorg/andengine/opengl/c/b;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/c/e;Lorg/andengine/opengl/c/c;Lorg/andengine/opengl/c/f;Lorg/andengine/opengl/c/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/c/d;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/c/d;->e:Z

    iput-object p1, p0, Lorg/andengine/opengl/c/d;->a:Lorg/andengine/opengl/c/e;

    iput-object p2, p0, Lorg/andengine/opengl/c/d;->b:Lorg/andengine/opengl/c/c;

    iput-object p3, p0, Lorg/andengine/opengl/c/d;->c:Lorg/andengine/opengl/c/f;

    iput-object p4, p0, Lorg/andengine/opengl/c/d;->f:Lorg/andengine/opengl/c/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/opengl/util/e;)V
    .locals 1

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->i()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/c/d;->d:I

    iget v0, p0, Lorg/andengine/opengl/c/d;->d:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/e;->d(I)V

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/c/d;->e(Lorg/andengine/opengl/util/e;)V

    iget-object v0, p0, Lorg/andengine/opengl/c/d;->c:Lorg/andengine/opengl/c/f;

    invoke-virtual {v0}, Lorg/andengine/opengl/c/f;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/c/d;->e:Z

    iget-object v0, p0, Lorg/andengine/opengl/c/d;->f:Lorg/andengine/opengl/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/c/d;->f:Lorg/andengine/opengl/c/b;

    invoke-interface {v0, p0}, Lorg/andengine/opengl/c/b;->a(Lorg/andengine/opengl/c/a;)V

    :cond_0
    return-void
.end method

.method public b(Lorg/andengine/opengl/util/e;)V
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/d;->d:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/e;->e(I)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/c/d;->d:I

    iget-object v0, p0, Lorg/andengine/opengl/c/d;->f:Lorg/andengine/opengl/c/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/c/d;->f:Lorg/andengine/opengl/c/b;

    invoke-interface {v0, p0}, Lorg/andengine/opengl/c/b;->b(Lorg/andengine/opengl/c/a;)V

    :cond_0
    return-void
.end method

.method public c(Lorg/andengine/opengl/util/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/c/d;->b(Lorg/andengine/opengl/util/e;)V

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/c/d;->a(Lorg/andengine/opengl/util/e;)V

    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lorg/andengine/opengl/c/d;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/c/d;->d:I

    return-void
.end method

.method public d(Lorg/andengine/opengl/util/e;)V
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/d;->d:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/e;->d(I)V

    return-void
.end method

.method protected abstract e(Lorg/andengine/opengl/util/e;)V
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/opengl/c/d;->e:Z

    return v0
.end method

.method public f()Lorg/andengine/opengl/c/c;
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/c/d;->b:Lorg/andengine/opengl/c/c;

    return-object v0
.end method

.method public g()Lorg/andengine/opengl/c/f;
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/c/d;->c:Lorg/andengine/opengl/c/f;

    return-object v0
.end method

.method public h()Lorg/andengine/opengl/c/b;
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/c/d;->f:Lorg/andengine/opengl/c/b;

    return-object v0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/c/d;->a:Lorg/andengine/opengl/c/e;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/c/e;->a(Lorg/andengine/opengl/c/a;)Z

    return-void
.end method
