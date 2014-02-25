.class public Lorg/andengine/opengl/view/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field final a:Lorg/andengine/b/a;

.field final b:Lorg/andengine/opengl/view/a;

.field final c:Z

.field final d:Lorg/andengine/opengl/view/h;

.field final e:Lorg/andengine/opengl/util/e;


# direct methods
.method public constructor <init>(Lorg/andengine/b/a;Lorg/andengine/opengl/view/a;Lorg/andengine/opengl/view/h;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/andengine/opengl/view/g;->a:Lorg/andengine/b/a;

    iput-object p2, p0, Lorg/andengine/opengl/view/g;->b:Lorg/andengine/opengl/view/a;

    iput-object p3, p0, Lorg/andengine/opengl/view/g;->d:Lorg/andengine/opengl/view/h;

    new-instance v0, Lorg/andengine/opengl/util/e;

    invoke-direct {v0}, Lorg/andengine/opengl/util/e;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/view/g;->e:Lorg/andengine/opengl/util/e;

    iget-object v0, p0, Lorg/andengine/opengl/view/g;->a:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->d()Lorg/andengine/b/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->e()Lorg/andengine/b/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/d;->a()Z

    move-result v0

    iput-boolean v0, p0, Lorg/andengine/opengl/view/g;->c:Z

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const-class v1, Lorg/andengine/opengl/util/e;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lorg/andengine/opengl/view/g;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/view/g;->b:Lorg/andengine/opengl/view/a;

    invoke-virtual {v0}, Lorg/andengine/opengl/view/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/andengine/opengl/view/g;->a:Lorg/andengine/b/a;

    iget-object v2, p0, Lorg/andengine/opengl/view/g;->e:Lorg/andengine/opengl/util/e;

    invoke-virtual {v0, v2}, Lorg/andengine/b/a;->a(Lorg/andengine/opengl/util/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "GLThread interrupted!"

    invoke-static {v2, v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/andengine/opengl/view/g;->a:Lorg/andengine/b/a;

    invoke-virtual {v0, p2, p3}, Lorg/andengine/b/a;->a(II)V

    invoke-static {v1, v1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v0, p0, Lorg/andengine/opengl/view/g;->e:Lorg/andengine/opengl/util/e;

    invoke-virtual {v0}, Lorg/andengine/opengl/util/e;->o()V

    iget-object v0, p0, Lorg/andengine/opengl/view/g;->d:Lorg/andengine/opengl/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/view/g;->d:Lorg/andengine/opengl/view/h;

    iget-object v1, p0, Lorg/andengine/opengl/view/g;->e:Lorg/andengine/opengl/util/e;

    invoke-interface {v0, v1, p2, p3}, Lorg/andengine/opengl/view/h;->a(Lorg/andengine/opengl/util/e;II)V

    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4

    const-class v1, Lorg/andengine/opengl/util/e;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/andengine/opengl/view/g;->a:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->d()Lorg/andengine/b/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->e()Lorg/andengine/b/c/d;

    move-result-object v0

    iget-object v2, p0, Lorg/andengine/opengl/view/g;->e:Lorg/andengine/opengl/util/e;

    iget-object v3, p0, Lorg/andengine/opengl/view/g;->b:Lorg/andengine/opengl/view/a;

    invoke-virtual {v2, v0, v3, p2}, Lorg/andengine/opengl/util/e;->a(Lorg/andengine/b/c/d;Lorg/andengine/opengl/view/a;Ljavax/microedition/khronos/egl/EGLConfig;)V

    iget-object v2, p0, Lorg/andengine/opengl/view/g;->e:Lorg/andengine/opengl/util/e;

    invoke-virtual {v2}, Lorg/andengine/opengl/util/e;->g()Z

    iget-object v2, p0, Lorg/andengine/opengl/view/g;->e:Lorg/andengine/opengl/util/e;

    invoke-virtual {v2}, Lorg/andengine/opengl/util/e;->a()Z

    iget-object v2, p0, Lorg/andengine/opengl/view/g;->e:Lorg/andengine/opengl/util/e;

    invoke-virtual {v0}, Lorg/andengine/b/c/d;->b()Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/andengine/opengl/util/e;->a(Z)Z

    iget-object v0, p0, Lorg/andengine/opengl/view/g;->d:Lorg/andengine/opengl/view/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/view/g;->d:Lorg/andengine/opengl/view/h;

    iget-object v2, p0, Lorg/andengine/opengl/view/g;->e:Lorg/andengine/opengl/util/e;

    invoke-interface {v0, v2}, Lorg/andengine/opengl/view/h;->a(Lorg/andengine/opengl/util/e;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
