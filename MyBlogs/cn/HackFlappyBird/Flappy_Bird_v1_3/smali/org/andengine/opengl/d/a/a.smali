.class public Lorg/andengine/opengl/d/a/a;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:I

.field final d:I

.field final e:Z

.field final f:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/andengine/opengl/d/a/a;->a:I

    iput-object p2, p0, Lorg/andengine/opengl/d/a/a;->b:Ljava/lang/String;

    iput p3, p0, Lorg/andengine/opengl/d/a/a;->c:I

    iput p4, p0, Lorg/andengine/opengl/d/a/a;->d:I

    iput-boolean p5, p0, Lorg/andengine/opengl/d/a/a;->e:Z

    iput p6, p0, Lorg/andengine/opengl/d/a/a;->f:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    iget v0, p0, Lorg/andengine/opengl/d/a/a;->a:I

    iget v1, p0, Lorg/andengine/opengl/d/a/a;->c:I

    iget v2, p0, Lorg/andengine/opengl/d/a/a;->d:I

    iget-boolean v3, p0, Lorg/andengine/opengl/d/a/a;->e:Z

    iget v5, p0, Lorg/andengine/opengl/d/a/a;->f:I

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    return-void
.end method
