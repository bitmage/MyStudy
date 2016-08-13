.class public Lorg/andengine/opengl/view/RenderSurfaceView;
.super Landroid/opengl/GLSurfaceView;


# instance fields
.field private a:Lorg/andengine/opengl/view/g;

.field private b:Lorg/andengine/opengl/view/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->setEGLContextClientVersion(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->setEGLContextClientVersion(I)V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public a(Lorg/andengine/b/a;Lorg/andengine/opengl/view/h;)V
    .locals 2

    iget-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->b:Lorg/andengine/opengl/view/a;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/andengine/b/a;->d()Lorg/andengine/b/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->e()Lorg/andengine/b/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/d;->a()Z

    move-result v0

    new-instance v1, Lorg/andengine/opengl/view/a;

    invoke-direct {v1, v0}, Lorg/andengine/opengl/view/a;-><init>(Z)V

    iput-object v1, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->b:Lorg/andengine/opengl/view/a;

    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->b:Lorg/andengine/opengl/view/a;

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/view/RenderSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lorg/andengine/opengl/view/g;

    iget-object v1, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->b:Lorg/andengine/opengl/view/a;

    invoke-direct {v0, p1, v1, p2}, Lorg/andengine/opengl/view/g;-><init>(Lorg/andengine/b/a;Lorg/andengine/opengl/view/a;Lorg/andengine/opengl/view/h;)V

    iput-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->a:Lorg/andengine/opengl/view/g;

    iget-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->a:Lorg/andengine/opengl/view/g;

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method

.method public getConfigChooser()Lorg/andengine/opengl/view/a;
    .locals 3

    iget-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->b:Lorg/andengine/opengl/view/a;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lorg/andengine/opengl/view/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not yet set."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->b:Lorg/andengine/opengl/view/a;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/opengl/view/RenderSurfaceView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/view/RenderSurfaceView;->a:Lorg/andengine/opengl/view/g;

    iget-object v0, v0, Lorg/andengine/opengl/view/g;->a:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->d()Lorg/andengine/b/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->h()Lorg/andengine/b/c/a/c;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lorg/andengine/b/c/a/c;->a(Lorg/andengine/opengl/view/RenderSurfaceView;II)V

    goto :goto_0
.end method
