.class public Lorg/andengine/c/b/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/c/b/a/b;


# instance fields
.field private a:Lorg/andengine/d/h/c;

.field private final b:Lorg/andengine/d/d/a;

.field private c:Z


# direct methods
.method protected constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/c/b/a/a;->a:Lorg/andengine/d/h/c;

    new-instance v0, Lorg/andengine/d/d/a;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/andengine/d/d/a;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/c/b/a/a;->b:Lorg/andengine/d/d/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/c/b/a/a;->c:Z

    return-void
.end method

.method public constructor <init>(Lorg/andengine/d/d/a;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/andengine/c/b/a/a;->a:Lorg/andengine/d/h/c;

    new-instance v0, Lorg/andengine/d/d/a;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v2, v2, v1}, Lorg/andengine/d/d/a;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/c/b/a/a;->b:Lorg/andengine/d/d/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/c/b/a/a;->c:Z

    iget-object v0, p0, Lorg/andengine/c/b/a/a;->b:Lorg/andengine/d/d/a;

    invoke-virtual {v0, p1}, Lorg/andengine/d/d/a;->a(Lorg/andengine/d/d/a;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 4

    iget-boolean v0, p0, Lorg/andengine/c/b/a/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/c/b/a/a;->b:Lorg/andengine/d/d/a;

    invoke-virtual {v0}, Lorg/andengine/d/d/a;->a()F

    move-result v0

    iget-object v1, p0, Lorg/andengine/c/b/a/a;->b:Lorg/andengine/d/d/a;

    invoke-virtual {v1}, Lorg/andengine/d/d/a;->b()F

    move-result v1

    iget-object v2, p0, Lorg/andengine/c/b/a/a;->b:Lorg/andengine/d/d/a;

    invoke-virtual {v2}, Lorg/andengine/d/d/a;->c()F

    move-result v2

    iget-object v3, p0, Lorg/andengine/c/b/a/a;->b:Lorg/andengine/d/d/a;

    invoke-virtual {v3}, Lorg/andengine/d/d/a;->d()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_0
    return-void
.end method

.method public a_(F)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/b/a/a;->a:Lorg/andengine/d/h/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/c/b/a/a;->a:Lorg/andengine/d/h/c;

    invoke-virtual {v0, p1}, Lorg/andengine/d/h/c;->a_(F)V

    :cond_0
    return-void
.end method
