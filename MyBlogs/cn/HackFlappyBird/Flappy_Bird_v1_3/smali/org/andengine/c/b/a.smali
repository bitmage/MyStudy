.class public Lorg/andengine/c/b/a;
.super Lorg/andengine/c/b/e;


# instance fields
.field protected a:Lorg/andengine/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/andengine/c/b/a;-><init>(Lorg/andengine/b/a/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/andengine/b/a/a;)V
    .locals 0

    invoke-direct {p0}, Lorg/andengine/c/b/e;-><init>()V

    iput-object p1, p0, Lorg/andengine/c/b/a;->a:Lorg/andengine/b/a/a;

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/input/a/a;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/andengine/c/b/a;->a:Lorg/andengine/b/a/a;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/andengine/c/b/a;->a:Lorg/andengine/b/a/a;

    invoke-virtual {v1, p1}, Lorg/andengine/b/a/a;->a(Lorg/andengine/input/a/a;)V

    invoke-super {p0, p1}, Lorg/andengine/c/b/e;->a(Lorg/andengine/input/a/a;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/andengine/c/b/a;->a:Lorg/andengine/b/a/a;

    invoke-virtual {v1, p1}, Lorg/andengine/b/a/a;->b(Lorg/andengine/input/a/a;)V

    goto :goto_0
.end method

.method protected b(Lorg/andengine/input/a/a;)Z
    .locals 2

    iget-object v0, p0, Lorg/andengine/c/b/a;->I:Lorg/andengine/c/b/e;

    instance-of v0, v0, Lorg/andengine/c/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/c/b/a;->a:Lorg/andengine/b/a/a;

    invoke-virtual {v0, p1}, Lorg/andengine/b/a/a;->b(Lorg/andengine/input/a/a;)V

    invoke-super {p0, p1}, Lorg/andengine/c/b/e;->b(Lorg/andengine/input/a/a;)Z

    move-result v0

    iget-object v1, p0, Lorg/andengine/c/b/a;->a:Lorg/andengine/b/a/a;

    invoke-virtual {v1, p1}, Lorg/andengine/b/a/a;->a(Lorg/andengine/input/a/a;)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/andengine/c/b/e;->b(Lorg/andengine/input/a/a;)Z

    move-result v0

    goto :goto_0
.end method

.method protected f(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/b/a;->a:Lorg/andengine/b/a/a;

    invoke-virtual {v0, p1}, Lorg/andengine/b/a/a;->d(Lorg/andengine/opengl/util/e;)V

    return-void
.end method
