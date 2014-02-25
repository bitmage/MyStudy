.class public Lorg/andengine/opengl/util/e;
.super Ljava/lang/Object;


# instance fields
.field private final A:[F

.field private final B:[F

.field private final a:[I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private final m:[I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:F

.field private final x:Lorg/andengine/opengl/util/b;

.field private final y:Lorg/andengine/opengl/util/b;

.field private final z:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->a:[I

    iput v1, p0, Lorg/andengine/opengl/util/e;->j:I

    iput v1, p0, Lorg/andengine/opengl/util/e;->k:I

    iput v1, p0, Lorg/andengine/opengl/util/e;->l:I

    const/16 v0, 0x1f

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->m:[I

    iput v1, p0, Lorg/andengine/opengl/util/e;->n:I

    iput v2, p0, Lorg/andengine/opengl/util/e;->o:I

    iput v1, p0, Lorg/andengine/opengl/util/e;->p:I

    iput v1, p0, Lorg/andengine/opengl/util/e;->q:I

    iput-boolean v3, p0, Lorg/andengine/opengl/util/e;->r:Z

    iput-boolean v3, p0, Lorg/andengine/opengl/util/e;->s:Z

    iput-boolean v2, p0, Lorg/andengine/opengl/util/e;->t:Z

    iput-boolean v2, p0, Lorg/andengine/opengl/util/e;->u:Z

    iput-boolean v2, p0, Lorg/andengine/opengl/util/e;->v:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/opengl/util/e;->w:F

    new-instance v0, Lorg/andengine/opengl/util/b;

    invoke-direct {v0}, Lorg/andengine/opengl/util/b;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    new-instance v0, Lorg/andengine/opengl/util/b;

    invoke-direct {v0}, Lorg/andengine/opengl/util/b;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    new-array v0, v4, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->z:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->A:[F

    new-array v0, v4, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->B:[F

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/opengl/util/b;->a(FF)V

    return-void
.end method

.method public a(FFF)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/opengl/util/b;->a(FFF)V

    return-void
.end method

.method public a(FFFF)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/opengl/util/b;->a(FFFF)V

    return-void
.end method

.method public a(FFFFFF)V
    .locals 7

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/b;->a(FFFFFF)V

    return-void
.end method

.method public a(FFI)V
    .locals 2

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    int-to-float v1, p3

    invoke-virtual {v0, p1, p2, v1}, Lorg/andengine/opengl/util/b;->b(FFF)V

    return-void
.end method

.method public a(I)V
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/util/e;->j:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/andengine/opengl/util/e;->j:I

    const v0, 0x8892

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/util/e;->p:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lorg/andengine/opengl/util/e;->q:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput p1, p0, Lorg/andengine/opengl/util/e;->p:I

    iput p2, p0, Lorg/andengine/opengl/util/e;->q:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    :cond_1
    return-void
.end method

.method public a(IIIILandroid/graphics/Bitmap;Lorg/andengine/opengl/c/c;)V
    .locals 9

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p5, p6, v0}, Lorg/andengine/opengl/util/a;->a(Landroid/graphics/Bitmap;Lorg/andengine/opengl/c/c;Ljava/nio/ByteOrder;)Ljava/nio/Buffer;

    move-result-object v8

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p6}, Lorg/andengine/opengl/c/c;->b()I

    move-result v6

    invoke-virtual {p6}, Lorg/andengine/opengl/c/c;->c()I

    move-result v7

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-static/range {v0 .. v8}, Landroid/opengl/GLES20;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public a(Lorg/andengine/b/c/d;Lorg/andengine/opengl/view/a;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/16 v0, 0x1f02

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->b:Ljava/lang/String;

    const/16 v0, 0x1f01

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->c:Ljava/lang/String;

    const/16 v0, 0x1f03

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/util/e;->d:Ljava/lang/String;

    const v0, 0x8869

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/e;->f(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/e;->e:I

    const v0, 0x8dfb

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/e;->f(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/e;->f:I

    const v0, 0x8dfd

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/e;->f(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/e;->g:I

    const v0, 0x8872

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/e;->f(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/e;->i:I

    const/16 v0, 0xd33

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/util/e;->f(I)I

    move-result v0

    iput v0, p0, Lorg/andengine/opengl/util/e;->h:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VERSION: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/opengl/util/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RENDERER: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/opengl/util/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EGLCONFIG: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(Red="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Green="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Blue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Stencil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/andengine/opengl/view/a;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXTENSIONS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/opengl/util/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_VERTEX_ATTRIBS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_VERTEX_UNIFORM_VECTORS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_FRAGMENT_UNIFORM_VECTORS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_TEXTURE_IMAGE_UNITS: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/e;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MAX_TEXTURE_SIZE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/andengine/opengl/util/e;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/b;->d()V

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/b;->d()V

    iput v2, p0, Lorg/andengine/opengl/util/e;->j:I

    iput v2, p0, Lorg/andengine/opengl/util/e;->k:I

    iput v2, p0, Lorg/andengine/opengl/util/e;->l:I

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->m:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lorg/andengine/opengl/util/e;->n:I

    iput v3, p0, Lorg/andengine/opengl/util/e;->o:I

    iput v2, p0, Lorg/andengine/opengl/util/e;->p:I

    iput v2, p0, Lorg/andengine/opengl/util/e;->q:I

    invoke-virtual {p0}, Lorg/andengine/opengl/util/e;->d()Z

    invoke-virtual {p0}, Lorg/andengine/opengl/util/e;->f()Z

    invoke-virtual {p0}, Lorg/andengine/opengl/util/e;->b()Z

    invoke-virtual {p0}, Lorg/andengine/opengl/util/e;->c()Z

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/opengl/util/e;->w:F

    return-void
.end method

.method public a()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/andengine/opengl/util/e;->u:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/e;->u:Z

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/andengine/opengl/util/e;->d()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/andengine/opengl/util/e;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public b(FFF)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/opengl/util/b;->a(FFF)V

    return-void
.end method

.method public b(FFFF)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/opengl/util/b;->a(FFFF)V

    return-void
.end method

.method public b(I)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/andengine/opengl/util/e;->j:I

    if-ne v0, p1, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/util/e;->j:I

    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/util/e;->a:[I

    aput p1, v0, v2

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/e;->a:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    return-void
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/andengine/opengl/util/e;->u:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/e;->u:Z

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(I)V
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/util/e;->l:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lorg/andengine/opengl/util/e;->l:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/andengine/opengl/util/e;->v:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/e;->v:Z

    const/16 v0, 0xb44

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->m:[I

    iget v1, p0, Lorg/andengine/opengl/util/e;->o:I

    aget v0, v0, v1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->m:[I

    iget v1, p0, Lorg/andengine/opengl/util/e;->o:I

    aput p1, v0, v1

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/andengine/opengl/util/e;->r:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/e;->r:Z

    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->m:[I

    iget v1, p0, Lorg/andengine/opengl/util/e;->o:I

    aget v0, v0, v1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->m:[I

    iget v1, p0, Lorg/andengine/opengl/util/e;->o:I

    const/4 v2, -0x1

    aput v2, v0, v1

    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/util/e;->a:[I

    aput p1, v0, v3

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/e;->a:[I

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public e()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/andengine/opengl/util/e;->r:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/e;->r:Z

    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f(I)I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->a:[I

    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->a:[I

    aget v0, v0, v1

    return v0
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/andengine/opengl/util/e;->s:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/e;->s:Z

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/andengine/opengl/util/e;->s:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lorg/andengine/opengl/util/e;->s:Z

    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public h()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/e;->a:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->a:[I

    aget v0, v0, v2

    return v0
.end method

.method public i()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Lorg/andengine/opengl/util/e;->a:[I

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->a:[I

    aget v0, v0, v2

    return v0
.end method

.method public j()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/b;->b()V

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/b;->c()V

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/b;->a()V

    return-void
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/b;->b()V

    return-void
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/b;->c()V

    return-void
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/b;->a()V

    return-void
.end method

.method public p()[F
    .locals 6

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->B:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    iget-object v2, v2, Lorg/andengine/opengl/util/b;->a:[F

    iget-object v3, p0, Lorg/andengine/opengl/util/e;->y:Lorg/andengine/opengl/util/b;

    iget v3, v3, Lorg/andengine/opengl/util/b;->b:I

    iget-object v4, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    iget-object v4, v4, Lorg/andengine/opengl/util/b;->a:[F

    iget-object v5, p0, Lorg/andengine/opengl/util/e;->x:Lorg/andengine/opengl/util/b;

    iget v5, v5, Lorg/andengine/opengl/util/b;->b:I

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lorg/andengine/opengl/util/e;->B:[F

    return-object v0
.end method
