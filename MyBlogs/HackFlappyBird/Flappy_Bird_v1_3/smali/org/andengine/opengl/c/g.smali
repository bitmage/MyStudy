.class public Lorg/andengine/opengl/c/g;
.super Lorg/andengine/opengl/d/d;


# static fields
.field public static final a:Lorg/andengine/opengl/d/a/c;


# instance fields
.field protected final b:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v4, 0x1406

    const/4 v3, 0x2

    const/4 v1, 0x0

    new-instance v0, Lorg/andengine/opengl/d/a/d;

    invoke-direct {v0, v3}, Lorg/andengine/opengl/d/a/d;-><init>(I)V

    const-string v2, "a_position"

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/d/a/d;->a(ILjava/lang/String;IIZ)Lorg/andengine/opengl/d/a/d;

    move-result-object v5

    const/4 v6, 0x3

    const-string v7, "a_textureCoordinates"

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/d/a/d;->a(ILjava/lang/String;IIZ)Lorg/andengine/opengl/d/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/opengl/d/a/d;->a()Lorg/andengine/opengl/d/a/c;

    move-result-object v0

    sput-object v0, Lorg/andengine/opengl/c/g;->a:Lorg/andengine/opengl/d/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v4, 0x1

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xc

    sget-object v3, Lorg/andengine/opengl/d/a;->a:Lorg/andengine/opengl/d/a;

    sget-object v5, Lorg/andengine/opengl/c/g;->a:Lorg/andengine/opengl/d/a/c;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/d/d;-><init>(Lorg/andengine/opengl/d/e;ILorg/andengine/opengl/d/a;ZLorg/andengine/opengl/d/a/c;)V

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v4, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/andengine/opengl/c/g;->b:Ljava/nio/FloatBuffer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    const v0, 0x8892

    iget-object v1, p0, Lorg/andengine/opengl/c/g;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iget-object v2, p0, Lorg/andengine/opengl/c/g;->f:Ljava/nio/ByteBuffer;

    iget v3, p0, Lorg/andengine/opengl/c/g;->e:I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/c/a;)V
    .locals 3

    const v2, 0x49742400

    const v1, 0x38d1b717

    invoke-interface {p2, p1}, Lorg/andengine/opengl/c/a;->d(Lorg/andengine/opengl/util/e;)V

    invoke-static {}, Lorg/andengine/opengl/b/d;->a()Lorg/andengine/opengl/b/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/opengl/c/g;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/b/g;)V

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->j()V

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->l()V

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v2, v0}, Lorg/andengine/opengl/util/e;->a(FFF)V

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v1, v0}, Lorg/andengine/opengl/util/e;->a(FFI)V

    const/4 v0, 0x4

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/andengine/opengl/c/g;->a(II)V

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->k()V

    invoke-static {}, Lorg/andengine/opengl/b/d;->a()Lorg/andengine/opengl/b/d;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/andengine/opengl/c/g;->b(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/b/g;)V

    return-void
.end method
