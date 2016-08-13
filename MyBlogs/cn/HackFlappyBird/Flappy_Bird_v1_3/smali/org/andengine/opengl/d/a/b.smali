.class public Lorg/andengine/opengl/d/a/b;
.super Lorg/andengine/opengl/d/a/a;


# direct methods
.method public constructor <init>(ILjava/lang/String;IIZI)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/andengine/opengl/d/a/a;-><init>(ILjava/lang/String;IIZI)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget v0, p0, Lorg/andengine/opengl/d/a/b;->a:I

    iget v1, p0, Lorg/andengine/opengl/d/a/b;->c:I

    iget v2, p0, Lorg/andengine/opengl/d/a/b;->d:I

    iget-boolean v3, p0, Lorg/andengine/opengl/d/a/b;->e:Z

    iget v5, p0, Lorg/andengine/opengl/d/a/b;->f:I

    move v4, p1

    invoke-static/range {v0 .. v5}, Lorg/andengine/opengl/GLES20Fix;->glVertexAttribPointer(IIIZII)V

    return-void
.end method
