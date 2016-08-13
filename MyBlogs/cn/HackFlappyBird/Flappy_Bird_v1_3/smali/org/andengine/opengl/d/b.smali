.class public Lorg/andengine/opengl/d/b;
.super Lorg/andengine/opengl/d/d;


# instance fields
.field protected final a:[F

.field protected final b:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/d/e;ILorg/andengine/opengl/d/a;ZLorg/andengine/opengl/d/a/c;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lorg/andengine/opengl/d/d;-><init>(Lorg/andengine/opengl/d/e;ILorg/andengine/opengl/d/a;ZLorg/andengine/opengl/d/a/c;)V

    new-array v0, p2, [F

    iput-object v0, p0, Lorg/andengine/opengl/d/b;->a:[F

    sget-boolean v0, Lorg/andengine/d/i/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/d/b;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/d/b;->b:Ljava/nio/FloatBuffer;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/opengl/d/b;->b:Ljava/nio/FloatBuffer;

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 5

    const v4, 0x8892

    const/4 v3, 0x0

    sget-boolean v0, Lorg/andengine/d/i/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/d/b;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/andengine/opengl/d/b;->b:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lorg/andengine/opengl/d/b;->a:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/d/b;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget-object v1, p0, Lorg/andengine/opengl/d/b;->f:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/andengine/opengl/d/b;->e:I

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/d/b;->f:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/andengine/opengl/d/b;->a:[F

    iget-object v2, p0, Lorg/andengine/opengl/d/b;->a:[F

    array-length v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/opengl/util/BufferUtils;->a(Ljava/nio/ByteBuffer;[FII)V

    iget-object v0, p0, Lorg/andengine/opengl/d/b;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lorg/andengine/opengl/d/b;->f:Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/andengine/opengl/d/b;->e:I

    invoke-static {v4, v0, v1, v2}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    goto :goto_0
.end method
