.class Lorg/andengine/input/a/a/c;
.super Lorg/andengine/d/a/b/f;


# instance fields
.field final synthetic a:Lorg/andengine/input/a/a/a;

.field private d:Lorg/andengine/input/a/a;


# direct methods
.method constructor <init>(Lorg/andengine/input/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/input/a/a/c;->a:Lorg/andengine/input/a/a/a;

    invoke-direct {p0}, Lorg/andengine/d/a/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 2

    invoke-super {p0}, Lorg/andengine/d/a/b/f;->a()V

    iget-object v0, p0, Lorg/andengine/input/a/a/c;->d:Lorg/andengine/input/a/a;

    invoke-virtual {v0}, Lorg/andengine/input/a/a;->k()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {v0}, Lorg/andengine/input/a/a;->a()V

    return-void
.end method

.method public a(Lorg/andengine/input/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/input/a/a/c;->d:Lorg/andengine/input/a/a;

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/andengine/input/a/a/c;->a:Lorg/andengine/input/a/a/a;

    invoke-static {v0}, Lorg/andengine/input/a/a/a;->a(Lorg/andengine/input/a/a/a;)Lorg/andengine/input/a/a/e;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/input/a/a/c;->d:Lorg/andengine/input/a/a;

    invoke-interface {v0, v1}, Lorg/andengine/input/a/a/e;->a(Lorg/andengine/input/a/a;)Z

    return-void
.end method
