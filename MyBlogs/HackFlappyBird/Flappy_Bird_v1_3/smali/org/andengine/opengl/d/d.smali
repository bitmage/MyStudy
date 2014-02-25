.class public abstract Lorg/andengine/opengl/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/opengl/d/c;


# instance fields
.field protected final c:I

.field protected final d:Z

.field protected final e:I

.field protected final f:Ljava/nio/ByteBuffer;

.field protected g:I

.field protected h:Z

.field protected i:Z

.field protected final j:Lorg/andengine/opengl/d/e;

.field protected final k:Lorg/andengine/opengl/d/a/c;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/d/e;ILorg/andengine/opengl/d/a;ZLorg/andengine/opengl/d/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/d/d;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/d/d;->h:Z

    iput-object p1, p0, Lorg/andengine/opengl/d/d;->j:Lorg/andengine/opengl/d/e;

    iput p2, p0, Lorg/andengine/opengl/d/d;->c:I

    invoke-virtual {p3}, Lorg/andengine/opengl/d/a;->a()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/d/d;->e:I

    iput-boolean p4, p0, Lorg/andengine/opengl/d/d;->d:Z

    iput-object p5, p0, Lorg/andengine/opengl/d/d;->k:Lorg/andengine/opengl/d/a/c;

    mul-int/lit8 v0, p2, 0x4

    invoke-static {v0}, Lorg/andengine/opengl/util/BufferUtils;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/d/d;->f:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/d/d;->f:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private c(Lorg/andengine/opengl/util/e;)V
    .locals 1

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->h()I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/d/d;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/d/d;->h:Z

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public a(Lorg/andengine/opengl/util/e;)V
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/d/d;->g:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/e;->b(I)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/d/d;->g:I

    return-void
.end method

.method public a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/b/g;)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/d/d;->b(Lorg/andengine/opengl/util/e;)V

    iget-object v0, p0, Lorg/andengine/opengl/d/d;->k:Lorg/andengine/opengl/d/a/c;

    invoke-virtual {p2, p1, v0}, Lorg/andengine/opengl/b/g;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/d/a/c;)V

    return-void
.end method

.method public b(Lorg/andengine/opengl/util/e;)V
    .locals 2

    iget v0, p0, Lorg/andengine/opengl/d/d;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/andengine/opengl/d/d;->c(Lorg/andengine/opengl/util/e;)V

    iget-object v0, p0, Lorg/andengine/opengl/d/d;->j:Lorg/andengine/opengl/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/d/d;->j:Lorg/andengine/opengl/d/e;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/d/e;->a(Lorg/andengine/opengl/d/c;)V

    :cond_0
    iget v0, p0, Lorg/andengine/opengl/d/d;->g:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/e;->a(I)V

    iget-boolean v0, p0, Lorg/andengine/opengl/d/d;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/andengine/opengl/d/d;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/opengl/d/d;->h:Z

    :cond_1
    return-void
.end method

.method public b(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/b/g;)V
    .locals 0

    invoke-virtual {p2, p1}, Lorg/andengine/opengl/b/g;->b(Lorg/andengine/opengl/util/e;)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/opengl/d/d;->d:Z

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/opengl/d/d;->i:Z

    return v0
.end method

.method public d()Z
    .locals 2

    iget v0, p0, Lorg/andengine/opengl/d/d;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/d/d;->g:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/d/d;->h:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/d/d;->h:Z

    return-void
.end method

.method protected finalize()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-boolean v0, p0, Lorg/andengine/opengl/d/d;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/andengine/opengl/d/d;->n()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/opengl/d/d;->i:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/d/d;->i:Z

    iget-object v0, p0, Lorg/andengine/opengl/d/d;->j:Lorg/andengine/opengl/d/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/d/d;->j:Lorg/andengine/opengl/d/e;

    invoke-virtual {v0, p0}, Lorg/andengine/opengl/d/e;->b(Lorg/andengine/opengl/d/c;)V

    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/d/d;->f:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lorg/andengine/opengl/util/BufferUtils;->a(Ljava/nio/ByteBuffer;)V

    return-void

    :cond_1
    new-instance v0, Lorg/andengine/d/c;

    invoke-direct {v0}, Lorg/andengine/d/c;-><init>()V

    throw v0
.end method
